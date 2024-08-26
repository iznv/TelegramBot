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
    
    public let video: Video?
    
    public let document: Document?
    
    public let dice: Dice?

    public let successfulPayment: SuccessfulPayment?
    
    public let refundedPayment: RefundedPayment?
    
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
        
        case video
        
        case document
        
        case dice

        case successfulPayment = "successful_payment"
        
        case refundedPayment = "refunded_payment"
        
    }
    
}

// MARK: - Extensions

public extension Message {
    
    func text(for entity: Entity) -> String? {
        guard let text = text else { return nil }
        let range = entity.range
        guard range.upperBound < text.count else { return nil }
        
        return text.substring(with: range)
    }
    
}
