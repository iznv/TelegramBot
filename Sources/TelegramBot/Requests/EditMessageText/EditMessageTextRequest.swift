//
//  EditMessageTextRequest.swift
//
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func editMessageText(_ parameters: EditMessageTextRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "editMessageText", parameters: parameters)
    }
    
}

