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
    
    public let stickers: [Sticker]
    
}

// MARK: - CodingKeys

extension StickerSet {
    
    enum CodingKeys: String, CodingKey {
        
        case name
        
        case title
        
        case stickerType = "sticker_type"
    
        case stickers
        
    }
    
}

extension StickerSet {
    
    public var isAnimated: Bool {
        return stickers.first?.isAnimated ?? false
    }
    
    public var isVideo: Bool {
        return stickers.first?.isVideo ?? false
    }
    
}
