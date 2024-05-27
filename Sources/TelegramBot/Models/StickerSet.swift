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

// MARK: - Extensions

public extension StickerSet {
    
    var isAnimated: Bool {
        return stickers.first?.isAnimated ?? false
    }
    
    var isVideo: Bool {
        return stickers.first?.isVideo ?? false
    }
    
    var isMixedFormat: Bool {
        let formats = Set(stickers.map { $0.format })
        return formats.count > 1
    }
    
    var needsRepainting: Bool {
        return stickers.reduce(true) { $0 && $1.needsRepainting == true }
    }
    
}
