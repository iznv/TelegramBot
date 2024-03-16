//
//  InputSticker.swift
//
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public struct InputSticker: Content {
    
    // MARK: - Properties
    
    public let sticker: Document
    
    public let emojiList: [String]
    
    // MARK: - Init
    
    public init(sticker: Document,
                emojiList: [String]) {
        
        self.sticker = sticker
        self.emojiList = emojiList
    }

}

// MARK: - CodingKeys

extension InputSticker {
    
    enum CodingKeys: String, CodingKey {
        
        case sticker
        
        case emojiList = "emoji_list"
        
    }
    
}
