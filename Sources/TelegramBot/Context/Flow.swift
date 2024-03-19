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
    
    public var isBusy: Bool = false
    
    public var application: Application
    
    public var telegramBot: TelegramBot
    
    public weak var chatContext: ChatContext!
    
    // MARK: - Init
    
    public init(application: Application,
                telegramBot: TelegramBot,
                chatContext: ChatContext?) {
        
        self.application = application
        self.telegramBot = telegramBot
        self.chatContext = chatContext
    }
    
    // MARK: - To Override
    
    open func start(req: Request) async throws { }
    
    open func prepareToFinish() async { }
    
    open func handleCallback(req: Request, 
                             update: Update) async throws -> Bool {
        
        return true
    }
    
}

public extension Flow {
    
    func finish(shouldPrepare: Bool = false) {
        telegramBot.context.finishFlow(for: chatContext.chatId,
                                       shouldPrepare: shouldPrepare)
    }
    
}
