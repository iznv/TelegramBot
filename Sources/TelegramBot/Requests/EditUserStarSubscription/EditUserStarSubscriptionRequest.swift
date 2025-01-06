//
//  EditUserStarSubscriptionRequest.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 06.01.2025.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func editUserStarSubscription(_ parameters: EditUserStarSubscriptionRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "editUserStarSubscription", parameters: parameters)
    }
    
}
