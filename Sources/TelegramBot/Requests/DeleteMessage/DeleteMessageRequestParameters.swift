//
//  DeleteMessageRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 18.01.2024.
//

import Vapor

public struct DeleteMessageRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let messageId: Int
    
    // MARK: - Init
    
    public init(chatId: Int,
                messageId: Int) {
        
        self.chatId = chatId
        self.messageId = messageId
    }
    
}

// MARK: - CodingKeys

extension DeleteMessageRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case messageId = "message_id"
        
    }
    
}
