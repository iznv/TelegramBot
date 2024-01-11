//
//  TelegramBot.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct TelegramBot {

    let client: Client
    
    let token: String

}

// MARK: - Public

public extension TelegramBot {
    
    @discardableResult
    func execute<Response: Content>(method: String,
                                    parameters: any Content) async throws -> Response {
        
        let request = Request<Response>(path: method, parameters: parameters)
        return try await make(request)
    }
    
    @discardableResult
    func make<Response: Content>(_ request: Request<Response>) async throws -> Response {
        let uri = URI(scheme: "https",
                      host: "api.telegram.org",
                      path: "/bot\(token)/\(request.path)")
        
        let clientResponse = try await client.post(uri, content: request.parameters)
        
        return try clientResponse.content.decode(Response.self)
    }
    
}

// MARK: - Request Extension

public extension Request {
    
    var telegramBot: TelegramBot {
        .init(client: self.client,
              token: self.application.telegramBotConfiguration.token)
    }

}
