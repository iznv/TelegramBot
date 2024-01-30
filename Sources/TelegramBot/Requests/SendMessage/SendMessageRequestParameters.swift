//
//  SendMessageRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct SendMessageRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let text: String
    
    public let replyMarkup: ReplyMarkup?
    
    // MARK: - Init
    
    public init(chatId: Int, 
                text: String,
                replyMarkup: ReplyMarkup? = nil) {
        
        self.chatId = chatId
        self.text = text
        self.replyMarkup = replyMarkup
    }
    
}

// MARK: - CodingKeys

extension SendMessageRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case text
        
        case replyMarkup = "reply_markup"
        
    }
    
}
