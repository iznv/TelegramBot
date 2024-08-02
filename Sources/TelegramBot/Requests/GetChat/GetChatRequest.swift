//
//  GetChatRequest.swift
//  
//
//  Created by Ivan Zinovev on 02.08.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func getChat(_ parameters: GetChatRequestParameters) async throws -> Response<ChatFullInfo> {
        return try await execute(method: "getChat", parameters: parameters)
    }
    
}

