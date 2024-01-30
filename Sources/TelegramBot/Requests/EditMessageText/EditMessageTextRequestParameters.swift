//
//  EditMessageTextRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public struct EditMessageTextRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let messageId: Int
    
    public let text: String
    
    // MARK: - Init
    
    public init(chatId: Int,
                messageId: Int,
                text: String) {
        
        self.chatId = chatId
        self.messageId = messageId
        self.text = text
    }
    
}

// MARK: - CodingKeys

extension EditMessageTextRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case messageId = "message_id"
        
        case text
        
    }
    
}
