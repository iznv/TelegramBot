//
//  InlineKeyboardButton.swift
//  
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public struct InlineKeyboardButton: Content {
    
    // MARK: - Properties
    
    public let text: String
    
    public let callbackData: String?
    
    public let url: String?
    
    // MARK: - Init
    
    public init(text: String,
                callbackData: String? = nil,
                url: String? = nil) {
        
        self.text = text
        self.callbackData = callbackData
        self.url = url
    }
    
}

// MARK: - CodingKeys

extension InlineKeyboardButton {
    
    enum CodingKeys: String, CodingKey {
        
        case text
        
        case callbackData = "callback_data"
        
        case url
        
    }
    
}
