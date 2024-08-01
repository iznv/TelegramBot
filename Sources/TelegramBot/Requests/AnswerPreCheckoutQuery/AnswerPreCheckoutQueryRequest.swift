//
//  AnswerPreCheckoutQueryRequest.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func answerPreCheckoutQuery(_ parameters: AnswerPreCheckoutQueryRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "answerPreCheckoutQuery", parameters: parameters)
    }
    
}
