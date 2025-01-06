//
//  CreateInvoiceLinkRequest.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 06.01.2025.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func createInvoiceLink(_ parameters: CreateInvoiceLinkRequestParameters) async throws -> Response<String> {
        return try await execute(method: "createInvoiceLink", parameters: parameters)
    }
    
}
