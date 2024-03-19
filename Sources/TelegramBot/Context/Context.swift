//
//  Context.swift
//
//
//  Created by Ivan Zinovev on 18.01.2024.
//

import Vapor

public class Context {
    
    // MARK: - Properties
    
    var chatContexts = [Int: ChatContext]()

}

// MARK: - Public

public extension Context {
    
    func getChatContext(id: Int) -> ChatContext {
        if let chatContext = chatContexts[id] {
            return chatContext
        } else {
            let chatContext = ChatContext(chatId: id)
            self.chatContexts[id] = chatContext
            return chatContext
        }
    }
    
    func finishFlow(for chatId: Int,
                    shouldPrepare: Bool = true) {
        
        let context = getChatContext(id: chatId)
        
        Task {
            if shouldPrepare {
                await context.flow?.prepareToFinish()
            }
            
            context.flow = nil
        }
    }
    
}

public extension TelegramBot {
    
    var context: Context {
        get {
            if let context = application.storage[ContextKey.self] {
                return context
            } else {
                let context = Context()
                self.context = context
                return context
            }
        }
        nonmutating set {
            application.storage[ContextKey.self] = newValue
        }
    }

}

struct ContextKey: StorageKey {
    
    typealias Value = Context
    
}
