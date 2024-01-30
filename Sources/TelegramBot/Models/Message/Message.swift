//
//  Message.swift
//
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public struct Message: Content {
    
    public let id: Int
    
    public let from: User?
    
    public let chat: Chat
    
    public let date: Int
    
    public let text: String?
    
    public let sticker: Sticker?
    
    public let entities: [Entity]?
    
}

// MARK: - CodingKeys

extension Message {
    
    enum CodingKeys: String, CodingKey {
        
        case id = "message_id"
        
        case from
        
        case chat
        
        case date
        
        case text
        
        case sticker
        
        case entities
        
    }
    
}

// MARK: - Extensions

public extension Message {
    
    func text(for entity: Entity) -> String? {
        return text?.substring(with: entity.range)
    }
    
}
