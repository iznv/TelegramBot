//
//  Flow.swift
//  
//
//  Created by Ivan Zinovev on 18.01.2024.
//

import Vapor

open class Flow {
    
    // MARK: - Properties
    
    public let id = UUID().uuidString
    
    public var application: Application
    
    public weak var chatContext: ChatContext!
    
    // MARK: - Init
    
    public init(application: Application,
                chatContext: ChatContext?) {
        
        self.application = application
        self.chatContext = chatContext
    }
    
    // MARK: - To Override
    
    open func start() async throws { }
    
    open func handleCallback(req: Request, 
                             update: Update) async throws -> Bool {
        
        return true
    }
    
}

public extension Flow {
    
    var telegramBot: TelegramBot {
        return application.telegramBot
    }
    
    func finish() {
        telegramBot.context.finishFlow(for: chatContext.chatId)
    }
    
}
