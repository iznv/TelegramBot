//
//  InlineKeyboardMarkup.swift
//  
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public struct InlineKeyboardMarkup: Content {
    
    // MARK: - Properties
    
    public let inlineKeyboard: [[InlineKeyboardButton]]
    
    // MARK: - Init
    
    public init(inlineKeyboard: [[InlineKeyboardButton]]) {
        self.inlineKeyboard = inlineKeyboard
    }
    
}

// MARK: - CodingKeys

extension InlineKeyboardMarkup {
    
    enum CodingKeys: String, CodingKey {
        
        case inlineKeyboard = "inline_keyboard"
        
    }
    
}
