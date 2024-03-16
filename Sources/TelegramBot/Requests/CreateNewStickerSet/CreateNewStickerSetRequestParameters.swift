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
    
    public let stickerFormat: StickerFormat
    
    public let stickerType: StickerType?
    
    // MARK: - Init
    
    public init(userId: Int, 
                name: String,
                title: String,
                stickers: [InputSticker],
                stickerFormat: StickerFormat,
                stickerType: StickerType?) {
        
        self.userId = userId
        self.name = name
        self.title = title
        self.stickers = stickers
        self.stickerFormat = stickerFormat
        self.stickerType = stickerType
    }
    
}

// MARK: - CodingKeys

extension CreateNewStickerSetRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case name
        
        case title
        
        case stickers
        
        case stickerFormat = "sticker_format"
        
        case stickerType = "sticker_type"
        
    }
    
}
