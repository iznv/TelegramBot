//
//  TelegramBot.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct TelegramBot {
    
    // MARK: - Properties
    
    let application: Application

    let client: Client
    
    let token: String
    
    let isRequestLogEnabled: Bool
    
    let isResponseLogEnabled: Bool
    
    // MARK: - Init
    
    public init(application: Application, 
                client: Client,
                token: String,
                isRequestLogEnabled: Bool = false,
                isResponseLogEnabled: Bool = false) {
        
        self.application = application
        self.client = client
        self.token = token
        self.isRequestLogEnabled = isRequestLogEnabled
        self.isResponseLogEnabled = isResponseLogEnabled
    }

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
        let uri = telegramApiUri(path: "/bot\(token)/\(request.path)")
        
        if isRequestLogEnabled {
            try? application.logger.log(title: "Request",
                                        path: "/\(request.path)",
                                        content: request.parameters)
        }
        
        let clientResponse = try await client.post(uri, content: request.parameters)
        
        if isResponseLogEnabled {
            try? application.logger.log(title: "Response",
                                        path: "/\(request.path)",
                                        data: clientResponse.body)
        }
            
        return try clientResponse.content.decode(Response.self)
    }
    
    func downloadUri(filePath: String) -> URI {
        return telegramApiUri(path: "/file/bot\(token)/\(filePath)")
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
