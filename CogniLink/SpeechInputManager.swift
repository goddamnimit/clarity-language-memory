#if os(iOS)
import Foundation
import Speech
import AVFoundation
import Combine

/// Wraps SFSpeechRecognizer + AVAudioEngine to provide live transcription
/// for a single input field. One instance is meant to be owned by the view
/// that uses it (e.g. OpenEndedView), not shared as a singleton.
@MainActor
final class SpeechInputManager: ObservableObject {

    enum AuthorizationState {
        case notDetermined
        case authorized
        case denied
    }

    @Published var transcribedText = ""
    @Published var isRecording = false
    @Published var authorizationState: AuthorizationState = .notDetermined

    private var recognizer: SFSpeechRecognizer?
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()

    /// Converts an underscore-format locale identifier (e.g. "hi_IN", the
    /// format used by AppLanguage) into the BCP-47 hyphenated form
    /// SFSpeechRecognizer expects (e.g. "hi-IN"). Applied unconditionally
    /// since Locale/SFSpeechRecognizer are forgiving of either form, but we
    /// don't want to depend on that — normalize defensively either way.
    static func bcp47Identifier(from localeIdentifier: String) -> String {
        localeIdentifier.replacingOccurrences(of: "_", with: "-")
    }

    /// Returns true if on-device speech recognition is available for the
    /// given app locale identifier (underscore or hyphenated, either works).
    static func isRecognitionAvailable(forLocaleIdentifier localeIdentifier: String) -> Bool {
        let locale = Locale(identifier: bcp47Identifier(from: localeIdentifier))
        guard let recognizer = SFSpeechRecognizer(locale: locale) else { return false }
        return recognizer.isAvailable
    }

    /// Requests both microphone and speech-recognition permission. Calls
    /// back on the main actor with whether both were granted.
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        SFSpeechRecognizer.requestAuthorization { [weak self] speechStatus in
            AVAudioSession.sharedInstance().requestRecordPermission { micGranted in
                Task { @MainActor in
                    let granted = speechStatus == .authorized && micGranted
                    self?.authorizationState = granted ? .authorized : .denied
                    completion(granted)
                }
            }
        }
    }

    /// Starts live transcription using the given app locale identifier.
    /// Safe to call even if a previous session wasn't cleanly stopped.
    func start(locale localeIdentifier: String) {
        stop() // Ensure any previous session is fully torn down first.

        let locale = Locale(identifier: Self.bcp47Identifier(from: localeIdentifier))
        guard let recognizer = SFSpeechRecognizer(locale: locale), recognizer.isAvailable else {
            print("SpeechInputManager: no available SFSpeechRecognizer for locale \(localeIdentifier)")
            return
        }
        self.recognizer = recognizer

        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print("SpeechInputManager: failed to configure audio session: \(error)")
            return
        }

        let request = SFSpeechAudioBufferRecognitionRequest()
        request.shouldReportPartialResults = true
        recognitionRequest = request

        let inputNode = audioEngine.inputNode
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.removeTap(onBus: 0) // Defensive: clears any stale tap from a prior session.
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
            request.append(buffer)
        }

        audioEngine.prepare()
        do {
            try audioEngine.start()
        } catch {
            print("SpeechInputManager: failed to start audio engine: \(error)")
            recognitionRequest = nil
            inputNode.removeTap(onBus: 0)
            return
        }

        isRecording = true
        transcribedText = ""

        recognitionTask = recognizer.recognitionTask(with: request) { [weak self] result, error in
            guard let self else { return }
            Task { @MainActor in
                if let result {
                    self.transcribedText = result.bestTranscription.formattedString
                }
                if error != nil || (result?.isFinal ?? false) {
                    self.stop()
                }
            }
        }
    }

    /// Stops listening and tears down the audio engine / recognition task.
    /// Safe to call multiple times in a row (rapid start/stop, or as
    /// cleanup) without crashing.
    func stop() {
        guard isRecording || audioEngine.isRunning || recognitionTask != nil else { return }

        if audioEngine.isRunning {
            audioEngine.stop()
            audioEngine.inputNode.removeTap(onBus: 0)
        }

        recognitionRequest?.endAudio()
        recognitionTask?.cancel()
        recognitionRequest = nil
        recognitionTask = nil

        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)

        isRecording = false
    }

    deinit {
        // Best-effort synchronous cleanup; start()/stop() already guard
        // against being called on a torn-down engine.
        if audioEngine.isRunning {
            audioEngine.stop()
            audioEngine.inputNode.removeTap(onBus: 0)
        }
        recognitionTask?.cancel()
    }
}
#endif
