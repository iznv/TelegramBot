//
//  StickerType.swift
//  
//
//  Created by Ivan Zinovev on 29.01.2024.
//

import Vapor

public enum StickerType: String, Content, DefaultFirst {
    
    case unknown
    
    case regular
    
    case mask
    
    case customEmoji = "custom_emoji"
    
}
