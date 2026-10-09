#if os(iOS)
import AVFoundation
import Combine

/// Minimal text-to-speech for iOS (ClarityTV has its own). Uses the app
/// language's locale; callers must check `voiceAvailable(for:)` and fall back
/// to showing the text, because several supported languages have no system
/// voice (e.g. Gujarati, Farsi, Punjabi, Armenian, Amharic, Tagalog).
@MainActor
final class SpeechOutput: ObservableObject {
    static let shared = SpeechOutput()

    private let synthesizer = AVSpeechSynthesizer()
    private init() {}

    static func bcp47(for language: AppLanguage) -> String {
        language.localeIdentifier.replacingOccurrences(of: "_", with: "-")
    }

    static func voiceAvailable(for language: AppLanguage) -> Bool {
        AVSpeechSynthesisVoice(language: bcp47(for: language)) != nil
    }

    func speak(_ text: String, language: AppLanguage) {
        guard let voice = AVSpeechSynthesisVoice(language: Self.bcp47(for: language)) else { return }
        stop()
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .spokenAudio, options: [.duckOthers])
        try? AVAudioSession.sharedInstance().setActive(true)
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = voice
        // Slower than default: numbers are the content, not filler.
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.85
        synthesizer.speak(utterance)
    }

    func stop() {
        if synthesizer.isSpeaking { synthesizer.stopSpeaking(at: .immediate) }
    }
}
#endif
