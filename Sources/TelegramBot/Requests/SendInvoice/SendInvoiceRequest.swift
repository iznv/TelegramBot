//
//  SendInvoiceRequest.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func sendInvoice(_ parameters: SendInvoiceRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendInvoice", parameters: parameters)
    }
    
}
