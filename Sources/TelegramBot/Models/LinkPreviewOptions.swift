//
//  LinkPreviewOptions.swift
//
//
//  Created by Ivan Zinovev on 29.02.2024.
//

import Vapor

public struct LinkPreviewOptions: Content {
    
    // MARK: - Properties
    
    public let isDisabled: Bool?
    
    public let url: String?
    
    public let preferSmallMedia: Bool?
    
    public let preferLargeMedia: Bool?
    
    public let showAboveText: Bool?
    
    // MARK: - Init
    
    public init(isDisabled: Bool? = nil,
                url: String? = nil,
                preferSmallMedia: Bool? = nil,
                preferLargeMedia: Bool? = nil,
                showAboveText: Bool? = nil) {
        
        self.isDisabled = isDisabled
        self.url = url
        self.preferSmallMedia = preferSmallMedia
        self.preferLargeMedia = preferLargeMedia
        self.showAboveText = showAboveText
    }
    
}

// MARK: - CodingKeys

extension LinkPreviewOptions {
    
    enum CodingKeys: String, CodingKey {
        
        case isDisabled = "is_disabled"
        
        case url
        
        case preferSmallMedia = "prefer_small_media"
        
        case preferLargeMedia = "prefer_large_media"
        
        case showAboveText = "show_above_text"
        
    }
    
}
