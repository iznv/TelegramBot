//
//  TelegramBot.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct TelegramBot {
    
    let application: Application

    let client: Client

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
        let uri = telegramApiUri(path: "/bot\(configuration.token)/\(request.path)")
        
        let clientResponse = try await client.post(uri, content: request.parameters)
        
        try? application.logger.log(title: "Response",
                                    path: "/\(request.path)",
                                    data: clientResponse.body)
            
        return try clientResponse.content.decode(Response.self)
    }
    
    func downloadUri(filePath: String) -> URI {
        return telegramApiUri(path: "/file/bot\(configuration.token)/\(filePath)")
    }
    
}

// MARK: - Extensions

public extension Application {
    
    var telegramBot: TelegramBot {
        .init(application: self,
              client: client)
    }

}

public extension Request {
    
    var telegramBot: TelegramBot {
        .init(application: application,
              client: client)
    }

}

// MARK: - Private

private extension TelegramBot {
    
    func telegramApiUri(path: String) -> URI {
        return URI(scheme: "https",
                   host: "api.telegram.org",
                   path: path)
    }
    
}
