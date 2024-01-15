//
//  SendDocumentRequest.swift
//
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public extension TelegramBot {
    
    @discardableResult
    func sendDocument(_ parameters: SendDocumentRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendDocument", parameters: parameters)
    }

}
