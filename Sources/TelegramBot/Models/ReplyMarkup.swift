//
//  ReplyMarkup.swift
//  
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public enum ReplyMarkup {
    
    case inlineKeyboardMarkup(InlineKeyboardMarkup)
    
    case unknown

}

// MARK: - Content

extension ReplyMarkup: Content {
    
    public init(from decoder: Decoder) throws {
        if let inlineKeyboardMarkup = try? decoder.singleValueContainer().decode(InlineKeyboardMarkup.self) {
            self = .inlineKeyboardMarkup(inlineKeyboardMarkup)
            return
        }
        
        self = .unknown
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .inlineKeyboardMarkup(inlineKeyboardMarkup):
            try container.encode(try inlineKeyboardMarkup.json())
        default:
            fatalError("Unknown should not be used")
        }
    }
    
}
