//
//  Sticker.swift
//  
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct Sticker: Content {
    
    public let setName: String?
    
    public let fileId: String
    
    public let fileUniqueId: String
    
    public let isAnimated: Bool
    
    public let isVideo: Bool
    
    public let emoji: String?
    
    public let type: StickerType
    
    public let customEmojiId: String?
    
    public let needsRepainting: Bool?
    
}

// MARK: - CodingKeys

extension Sticker {
    
    enum CodingKeys: String, CodingKey {
        
        case setName = "set_name"
        
        case fileId = "file_id"
        
        case fileUniqueId = "file_unique_id"
        
        case isAnimated = "is_animated"
        
        case isVideo = "is_video"
        
        case emoji
        
        case type
        
        case customEmojiId = "custom_emoji_id"
        
        case needsRepainting = "needs_repainting"
        
    }
    
}

// MARK: - Extension

public extension Sticker {
    
    var format: StickerFormat {
        if isVideo {
            return .video
        } else if isAnimated {
            return .animated
        } else {
            return .static
        }
    }
    
}
