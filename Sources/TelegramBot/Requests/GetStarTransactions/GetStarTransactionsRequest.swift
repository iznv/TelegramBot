//
//  GetStarTransactionsRequest.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func getStarTransactions(_ parameters: GetStarTransactionsRequestParameters) async throws -> Response<StarTransactions> {
        return try await execute(method: "getStarTransactions", parameters: parameters)
    }
    
}
