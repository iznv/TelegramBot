//
//  ChatMemberUpdated.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 08.01.2025.
//

import Vapor

public struct ChatMemberUpdated: Content {
    
    public let oldChatMember: ChatMember
    
    public let newChatMember: ChatMember
    
    public let from: User
    
}

// MARK: - CodingKeys

extension ChatMemberUpdated {
    
    enum CodingKeys: String, CodingKey {
        
        case oldChatMember = "old_chat_member"
        
        case newChatMember = "new_chat_member"
        
        case from
        
    }
    
}
