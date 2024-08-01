//
//  RefundStarPaymentRequest.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func refundStarPayment(_ parameters: RefundStarPaymentRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "refundStarPayment", parameters: parameters)
    }
    
}
