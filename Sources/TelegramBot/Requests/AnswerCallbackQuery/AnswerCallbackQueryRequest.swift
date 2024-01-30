//
//  AnswerCallbackQueryRequest.swift
//
//
//  Created by Ivan Zinovev on 17.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func answerCallbackQuery(_ parameters: AnswerCallbackQueryRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "answerCallbackQuery", parameters: parameters)
    }
    
}
