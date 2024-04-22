//
//  Message.Entity.swift
//  
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public extension Message {
    
    struct Entity: Content {
        
        // MARK: - Properties
        
        public let offset: Int
        
        public let length: Int
        
        public let type: Type
        
        public let customEmojiId: String?
        
        // MARK: - Init
        
        public init(offset: Int, 
                    length: Int,
                    type: Type,
                    customEmojiId: String? = nil) {
            
            self.offset = offset
            self.length = length
            self.type = type
            self.customEmojiId = customEmojiId
        }
        
    }
    
}

// MARK: - CodingKeys

extension Message.Entity {
    
    enum CodingKeys: String, CodingKey {
        
        case offset
        
        case length
        
        case type
        
        case customEmojiId = "custom_emoji_id"
        
    }
    
}

// MARK: - Extensions

public extension Message.Entity {
    
    var range: ClosedRange<Int> {
        return offset...(offset + length - 1)
    }

}
