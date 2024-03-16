//
//  DeleteMessageRequest.swift
//
//
//  Created by Ivan Zinovev on 18.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func deleteMessage(_ parameters: DeleteMessageRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "deleteMessage", parameters: parameters)
    }
    
}
