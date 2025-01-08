//
//  Update.swift
//
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public struct Update: Content {
    
    public let id: Int
    
    public let message: Message?
    
    public let callbackQuery: CallbackQuery?
    
    public let preCheckoutQuery: PreCheckoutQuery?
    
    public let myChatMember: ChatMemberUpdated?
    
}

// MARK: - CodingKeys

extension Update {
    
    enum CodingKeys: String, CodingKey {
        
        case id = "update_id"
        
        case message
        
        case callbackQuery = "callback_query"
        
        case preCheckoutQuery = "pre_checkout_query"
        
        case myChatMember = "my_chat_member"
        
    }
    
}
