//
//  InputSticker.swift
//
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public struct InputSticker: Content {
    
    // MARK: - Properties
    
    public let sticker: InputFile
    
    public let emojiList: [String]
    
    public let format: StickerFormat
    
    // MARK: - Init
    
    public init(sticker: InputFile,
                emojiList: [String],
                format: StickerFormat) {
        
        self.sticker = sticker
        self.emojiList = emojiList
        self.format = format
    }

}

// MARK: - CodingKeys

extension InputSticker {
    
    enum CodingKeys: String, CodingKey {
        
        case sticker
        
        case emojiList = "emoji_list"
        
        case format
        
    }
    
}
