//
//  SendPhotoRequest.swift
//
//
//  Created by Ivan Zinovev on 23.04.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func sendPhoto(_ parameters: SendPhotoRequestParameters) async throws -> Response<Message> {
        return try await execute(method: "sendPhoto", parameters: parameters)
    }
    
}
