//
//  GetCustomEmojiStickersRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 10.02.2024.
//

import Vapor

public struct GetCustomEmojiStickersRequestParameters: Content {
    
    // MARK: - Properties
    
    public let customEmojiIds: [String]
    
    // MARK: - Init
    
    public init(customEmojiIds: [String]) {
        self.customEmojiIds = customEmojiIds
    }
    
}

// MARK: - CodingKeys

extension GetCustomEmojiStickersRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case customEmojiIds = "custom_emoji_ids"
        
    }
    
}
