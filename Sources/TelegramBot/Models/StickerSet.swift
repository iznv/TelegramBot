//
//  StickerSet.swift
//
//
//  Created by Ivan Zinovev on 29.01.2024.
//

import Vapor

public struct StickerSet: Content {
    
    public let name: String
    
    public let title: String
    
    public let stickerType: StickerType
    
    public let isAnimated: Bool
    
    public let isVideo: Bool
    
    public let stickers: [Sticker]
    
}

// MARK: - CodingKeys

extension StickerSet {
    
    enum CodingKeys: String, CodingKey {
        
        case name
        
        case title
        
        case stickerType = "sticker_type"
        
        case isAnimated = "is_animated"
        
        case isVideo = "is_video"
    
        case stickers
        
    }
    
}
