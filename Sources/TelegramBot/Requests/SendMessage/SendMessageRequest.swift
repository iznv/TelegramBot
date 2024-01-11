//
//  SendMessageRequest.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func sendMessage(_ parameters: SendMessageRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendMessage", parameters: parameters)
    }
    
}
