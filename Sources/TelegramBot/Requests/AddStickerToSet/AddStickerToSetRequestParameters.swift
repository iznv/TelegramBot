//
//  AddStickerToSetRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 14.03.2024.
//

import Vapor

public struct AddStickerToSetRequestParameters: Content {
    
    // MARK: - Properties
    
    public let userId: Int
    
    public let name: String
    
    public let sticker: InputSticker
    
    // MARK: - Init
    
    public init(userId: Int,
                name: String,
                sticker: InputSticker) {
        
        self.userId = userId
        self.name = name
        self.sticker = sticker
    }
    
}

// MARK: - CodingKeys

extension AddStickerToSetRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case name
        
        case sticker
        
    }
    
}
