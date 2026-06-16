//
//  AIAssistantView.swift
//  Final Project
//
//  Created by Codex on 2026/6/5.
//

import SwiftUI

#if canImport(FoundationModels)
import FoundationModels
#endif

struct AIAssistantView: View {
    let restaurants: [Restaurant]

    var body: some View {
        if #available(iOS 26.0, *) {
            #if canImport(FoundationModels)
            AIAssistantContentView(restaurants: restaurants)
            #else
            AINotAvailableView(
                message: "目前專案環境找不到 FoundationModels framework。請確認使用 Xcode 26、iOS 26 SDK。"
            )
            #endif
        } else {
            AINotAvailableView(
                message: "此功能需要 iOS 26 或以上版本。"
            )
        }
    }
}

#if canImport(FoundationModels)
@available(iOS 26.0, *)
private struct AIAssistantContentView: View {
    let restaurants: [Restaurant]

    @State private var question = ""
    @State private var answer = ""
    @State private var errorMessage = ""
    @State private var isGenerating = false

    private let exampleQuestions = [
        "公館有什麼適合晚餐的店？",
        "我想吃甜點，有推薦嗎？",
        "台大校內有什麼快速方便的餐廳？",
        "不知道吃什麼，可以幫我分析嗎？"
    ]

    private let model = SystemLanguageModel.default
    private let responseLocale = Locale(identifier: "zh-Hant-TW")

    var body: some View {
        switch model.availability {
        case .available:
            if model.supportsLocale(responseLocale) {
                assistantContent
            } else {
                AINotAvailableView(
                    message: "目前 Apple 本地端 AI 尚未支援繁體中文（台灣）或尚未下載對應語言模型。請確認裝置、Siri 與 Apple Intelligence 語言設定支援繁體中文後再試一次。"
                )
            }
        default:
            AINotAvailableView(
                message: "目前裝置無法使用 Apple 本地端 AI。請確認 Apple Intelligence 與語言模型已可用後再試一次。"
            )
        }
    }

    private var assistantContent: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    introCard
                    questionCard
                    exampleQuestionSection
                    responseSection
                }
                .padding(.horizontal)
                .padding(.top, 18)
                .padding(.bottom, 40)
            }
        }
        .navigationTitle("AI 問答")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var introCard: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 12) {
                Image(systemName: "sparkles")
                    .font(.title2)
                    .foregroundStyle(Color.appSage)

                Text("AI 美食問答")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.appPrimaryText)
            }

            Text("根據 NTU Food Map 內建餐廳資料，幫你用繁體中文整理今天可以吃什麼。AI 不會查詢即時 Google 評分、營業狀態或 App 內不存在的餐廳。")
                .font(.subheadline)
                .foregroundStyle(Color.appSecondaryText)
                .lineSpacing(4)
        }
        .padding(18)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .overlay {
            RoundedRectangle(cornerRadius: 22)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }

    private var questionCard: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("你的問題")
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            TextField("例如：我想吃甜點，有推薦嗎？", text: $question, axis: .vertical)
                .font(.body)
                .foregroundStyle(Color.appPrimaryText)
                .lineLimit(2...5)
                .textFieldStyle(.plain)
                .padding(14)
                .background(Color.appBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.appDivider, lineWidth: 1)
                }
                .disabled(isGenerating)

            Button {
                sendQuestion()
            } label: {
                HStack(spacing: 8) {
                    if isGenerating {
                        ProgressView()
                            .tint(.white)
                    }

                    Text(isGenerating ? "AI 思考中..." : "送出問題")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundStyle(.white)
                .background(canSubmit ? Color.appSage : Color.appSage.opacity(0.45))
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .buttonStyle(.plain)
            .disabled(!canSubmit || isGenerating)

            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(.footnote)
                    .foregroundStyle(Color.appTerracotta)
            }
        }
        .padding(18)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .overlay {
            RoundedRectangle(cornerRadius: 22)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }

    private var exampleQuestionSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("範例問題")
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            VStack(spacing: 10) {
                ForEach(exampleQuestions, id: \.self) { example in
                    Button {
                        question = example
                        errorMessage = ""
                    } label: {
                        HStack(spacing: 10) {
                            Image(systemName: "text.bubble.fill")
                                .foregroundStyle(Color.appSage)

                            Text(example)
                                .font(.subheadline)
                                .foregroundStyle(Color.appPrimaryText)
                                .multilineTextAlignment(.leading)

                            Spacer()
                        }
                        .padding(14)
                        .background(Color.appCard)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.appDivider, lineWidth: 1)
                        }
                    }
                    .buttonStyle(.plain)
                    .disabled(isGenerating)
                }
            }
        }
    }

    private var responseSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("AI 回答")
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            VStack(alignment: .leading, spacing: 10) {
                if isGenerating {
                    HStack(spacing: 10) {
                        ProgressView()
                            .tint(Color.appSage)

                        Text("正在根據餐廳資料整理建議...")
                            .foregroundStyle(Color.appSecondaryText)
                    }
                } else if answer.isEmpty {
                    Text("送出問題後，AI 的回答會顯示在這裡。")
                        .foregroundStyle(Color.appSecondaryText)
                } else {
                    Text(answer)
                        .foregroundStyle(Color.appPrimaryText)
                        .lineSpacing(5)
                        .textSelection(.enabled)
                }
            }
            .font(.body)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(18)
            .background(Color.appCard)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .overlay {
                RoundedRectangle(cornerRadius: 22)
                    .stroke(Color.appDivider, lineWidth: 1)
            }
            .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
        }
    }

    private var canSubmit: Bool {
        !question.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

//    private var restaurantContext: String {
//        restaurants.map { restaurant in
//            """
//            店名：\(restaurant.name)
//            地區：\(restaurant.area.rawValue)
//            分類：\(restaurant.categoryText)
//            價格：\(restaurant.priceRange)
//            地址：\(restaurant.address)
//            營業時間：\(restaurant.openingHours)
//            介紹：\(restaurant.description)
//            學生評論：\(restaurant.studentComments.joined(separator: "；"))
//            """
//        }
//        .joined(separator: "\n\n")
//    }
    private var restaurantContext: String {
        restaurants.prefix(30).map { restaurant in
            """
            店名：\(restaurant.name)
            地區：\(restaurant.area.rawValue)
            分類：\(restaurant.categoryText)
            價格：\(restaurant.priceRange)
            簡介：\(restaurant.description)
            """
        }
        .joined(separator: "\n\n")
    }

    private func sendQuestion() {
        let trimmedQuestion = question.trimmingCharacters(in: .whitespacesAndNewlines)

        guard !trimmedQuestion.isEmpty else {
            errorMessage = "請先輸入想問的問題。"
            return
        }

        isGenerating = true
        errorMessage = ""

        Task {
            do {
                let session = LanguageModelSession(
                    model: model,
                    tools: [],
                    instructions: instructions
                )
                let response = try await session.respond(to: prompt(for: trimmedQuestion))

                await MainActor.run {
                    answer = response.content
                    isGenerating = false
                }
            } catch {
                await MainActor.run {
                    errorMessage = friendlyErrorMessage(for: error)
                    isGenerating = false
                }
            }
        }
    }


    private var instructions: String {
        """
        The person's locale is zh_Hant_TW.
        You MUST respond in Traditional Chinese.
        You are the local AI food assistant for the NTU Food Map app.
        Only answer from the restaurant data provided in the user's prompt.
        Do not invent Google ratings, real-time opening status, discounts, menu prices, or restaurants that are not in the data.
        If the data is insufficient, honestly say "目前資料不足" and suggest what the person can ask instead.
        Keep the answer concise and useful.
        """
    }

    private func prompt(for trimmedQuestion: String) -> String {
        """
        以下是 NTU Food Map App 目前擁有的餐廳資料：

        \(restaurantContext)

        使用者問題：
        \(trimmedQuestion)

        請根據上面的餐廳資料回答。
        回答格式：
        1. 先直接給建議。
        2. 再簡短說明原因。
        3. 如果適合，列出 1 到 3 間餐廳。
        """
    }

    private func friendlyErrorMessage(for error: Error) -> String {
        if let generationError = error as? LanguageModelSession.GenerationError {
            switch generationError {
            case .assetsUnavailable:
                return "AI 模型資源尚未可用。請確認 Apple Intelligence 已開啟、模型已下載完成；如果你在 Simulator 測試，也請確認 Mac 支援並已啟用 Apple Intelligence。"
            case .unsupportedLanguageOrLocale:
                return "目前 Apple 本地端 AI 不支援這次輸入或指定的回覆語言。請確認裝置、Siri 與 Apple Intelligence 語言支援繁體中文。"
            case .exceededContextWindowSize:
                return "這次提供給 AI 的餐廳資料太長，超過本地端模型可處理的上下文長度。請先縮短餐廳資料或問題後再試一次。"
            case .guardrailViolation:
                return "這次問題或回答觸發了系統安全限制，請換個問法再試一次。"
            case .concurrentRequests:
                return "AI 還在處理上一個問題，請稍等一下再送出。"
            case .rateLimited:
                return "目前 AI 請求太頻繁，請稍後再試。"
            case .decodingFailure:
                return "AI 回答產生到一半失敗，請重新送出問題。"
            @unknown default:
                return "AI 回答產生失敗，請稍後再試。錯誤：\(error.localizedDescription)"
            }
        }

        let nsError = error as NSError

        if nsError.domain.contains("FoundationModels.LanguageModelSession.GenerationError"),
           nsError.code == -1 {
            return """
            AI 模型在 Simulator 中實際生成失敗。這通常不是 App 程式邏輯錯誤，而是本機 Apple Intelligence 模型資源不可用。
            請檢查 Mac 是否已開啟 Apple Intelligence、模型是否下載完成，以及 Simulator runtime 是否支援 Foundation Models。
            """
        }

        return "AI 回答產生失敗，請稍後再試。錯誤：\(error.localizedDescription)"
    }
}
#endif

private struct AINotAvailableView: View {
    let message: String

    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()

            ContentUnavailableView {
                Label("AI 問答暫時不可用", systemImage: "sparkles")
            } description: {
                Text(message)
            }
            .foregroundStyle(Color.appPrimaryText)
            .padding()
        }
        .navigationTitle("AI 問答")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AIAssistantView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}
