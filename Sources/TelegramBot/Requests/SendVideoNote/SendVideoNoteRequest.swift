//
//  SendVideoNoteRequest.swift
//
//
//  Created by Ivan Zinovev on 15.08.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func sendVideoNote(_ parameters: SendVideoNoteRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendVideoNote", parameters: parameters)
    }
    
}
