//
//  CreateNewStickerSetRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public struct CreateNewStickerSetRequestParameters: Content {
    
    // MARK: - Properties
    
    public let userId: Int
    
    public let name: String
    
    public let title: String
    
    public let stickers: [InputSticker]
    
    public let stickerType: StickerType?
    
    public let needsRepainting: Bool?
    
    // MARK: - Init
    
    public init(userId: Int, 
                name: String,
                title: String,
                stickers: [InputSticker],
                stickerType: StickerType?,
                needsRepainting: Bool? = nil) {
        
        self.userId = userId
        self.name = name
        self.title = title
        self.stickers = stickers
        self.stickerType = stickerType
        self.needsRepainting = needsRepainting
    }
    
}

// MARK: - CodingKeys

extension CreateNewStickerSetRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case name
        
        case title
        
        case stickers
        
        case stickerType = "sticker_type"
        
        case needsRepainting = "needs_repainting"
        
    }
    
}
