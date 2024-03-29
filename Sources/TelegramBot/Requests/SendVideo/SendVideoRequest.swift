//
//  SendVideoRequest.swift
//
//
//  Created by Ivan Zinovev on 29.03.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func sendVideo(_ parameters: SendVideoRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendVideo", parameters: parameters)
    }
    
}
