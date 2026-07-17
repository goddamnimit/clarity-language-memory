#if os(iOS)
import SwiftUI

/// A single flagged-content report, read back from `ResearchExportManager.flaggedContentList()`.
/// Contains no patient PII — only exercise identifiers, a short question preview, type, language, and a timestamp.
private struct FlaggedContentItem: Identifiable {
    let id = UUID()
    let exerciseTitle: String
    let questionPreview: String
    let exerciseType: String
    let language: String
    let timestamp: String

    var displayDate: String {
        guard let date = ISO8601DateFormatter().date(from: timestamp) else { return timestamp }
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

/// Caregiver Mode screen listing locally logged "flag this question" reports,
/// with Copy All as Text / Export as JSON actions for pulling them out for review.
struct FlaggedContentView: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var items: [FlaggedContentItem] = []
    @State private var exportURL: URL?
    @State private var showShareSheet = false
    @State private var showCopiedToast = false

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                if items.isEmpty {
                    emptyStateView
                        .padding(.top, 60)
                } else {
                    actionsSection
                    itemsSection
                }
            }
            .padding(.vertical)
        }
        .background(Color.groupedBackground.ignoresSafeArea())
        .navigationTitle(languageManager.currentLanguage.flaggedContentSectionLabel)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { loadItems() }
        .sheet(isPresented: $showShareSheet) {
            if let url = exportURL {
                ShareSheet(items: [url])
            }
        }
        .overlay(alignment: .top) {
            if showCopiedToast {
                copiedToastView
                    .padding(.top, 8)
                    .transition(.move(edge: .top).combined(with: .opacity))
            }
        }
    }

    // MARK: - Empty State

    private var emptyStateView: some View {
        VStack(spacing: 12) {
            Image(systemName: "flag.slash")
                .font(.system(size: 40))
                .foregroundColor(.secondary)
            Text(languageManager.currentLanguage.flaggedContentEmptyState)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }

    // MARK: - Actions

    private var actionsSection: some View {
        HStack(spacing: 12) {
            Button(action: copyAllAsText) {
                HStack {
                    Image(systemName: "doc.on.doc")
                    Text(languageManager.currentLanguage.flaggedContentCopyAllButton)
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(Color.secondaryGroupedBackground)
                .foregroundColor(.primary)
                .cornerRadius(10)
            }

            Button(action: exportAsJSON) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text(languageManager.currentLanguage.flaggedContentExportJSONButton)
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }

    // MARK: - Items List

    private var itemsSection: some View {
        VStack(spacing: 0) {
            ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
                itemRow(item)
                if index != items.count - 1 {
                    Divider().padding(.leading, 16)
                }
            }
        }
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .padding(.horizontal)
    }

    private func itemRow(_ item: FlaggedContentItem) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(item.exerciseTitle)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Text(item.questionPreview)
                .font(.footnote)
                .foregroundColor(.secondary)
                .lineLimit(2)
            HStack(spacing: 8) {
                Text(item.exerciseType)
                Text("·")
                Text(item.language)
                Text("·")
                Text(item.displayDate)
            }
            .font(.caption2)
            .foregroundColor(.secondary)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }

    // MARK: - Toast

    private var copiedToastView: some View {
        HStack(spacing: 8) {
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(.green)
            Text(languageManager.currentLanguage.flaggedContentCopiedConfirmation)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.primary)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Color.systemBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 2)
    }

    // MARK: - Data Loading

    private func loadItems() {
        items = ResearchExportManager.flaggedContentList()
            .map { dict in
                FlaggedContentItem(
                    exerciseTitle: dict["exerciseTitle"] as? String ?? "",
                    questionPreview: dict["questionPreview"] as? String ?? "",
                    exerciseType: dict["exerciseType"] as? String ?? "",
                    language: dict["language"] as? String ?? "",
                    timestamp: dict["timestamp"] as? String ?? ""
                )
            }
            .reversed()
    }

    // MARK: - Copy / Export

    private func copyAllAsText() {
        let lines = items.map { item -> String in
            "\(item.displayDate) — \(item.exerciseTitle) (\(item.exerciseType), \(item.language))\n\(item.questionPreview)"
        }
        UIPasteboard.general.string = lines.joined(separator: "\n\n")

        withAnimation { showCopiedToast = true }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
            withAnimation { showCopiedToast = false }
        }
    }

    private func exportAsJSON() {
        guard let data = ResearchExportManager.generateFlaggedContentExport() else { return }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let filename = "clarity_flagged_content_\(dateFormatter.string(from: Date())).json"
        let url = FileManager.default.temporaryDirectory.appendingPathComponent(filename)
        do {
            try data.write(to: url, options: .atomic)
            exportURL = url
            showShareSheet = true
        } catch {
            print("[FlaggedContent] ERROR: File write failed: \(error)")
        }
    }
}
#endif
