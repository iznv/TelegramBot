//
//  GetChatRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 02.08.2024.
//

import Vapor

public struct GetChatRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    // MARK: - Init
    
    public init(chatId: Int) {
        self.chatId = chatId
    }
    
}

// MARK: - CodingKeys

extension GetChatRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
    }
    
}
