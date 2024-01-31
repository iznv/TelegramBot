//
//  ChatContext.swift
//  
//
//  Created by Ivan Zinovev on 18.01.2024.
//

import Vapor

public class ChatContext {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public var languageCode: String?
    
    var flow: (Flow)?
    
    // MARK: - Init
    
    public init(chatId: Int) {
        self.chatId = chatId
    }
    
}

// MARK: - Public

public extension ChatContext {
    
    var isBusy: Bool {
        guard let flow = flow else { return false }
        return flow.isBusy
    }
    
    func start(_ flow: Flow) async throws {
        self.flow = flow
        try await flow.start()
    }
    
    func handleCallback(req: Request,
                        update: Update) async throws -> Bool {
        
        guard let flow = flow else { return false }
        
        return try await flow.handleCallback(req: req,
                                             update: update)
    }
    
}
