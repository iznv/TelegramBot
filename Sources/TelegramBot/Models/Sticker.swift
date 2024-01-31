//
//  Sticker.swift
//  
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct Sticker: Content {
    
    public let setName: String?
    
    public let fileId: String
    
    public let fileUniqueId: String
    
    public let isAnimated: Bool
    
    public let isVideo: Bool
    
}

// MARK: - CodingKeys

extension Sticker {
    
    enum CodingKeys: String, CodingKey {
        
        case setName = "set_name"
        
        case fileId = "file_id"
        
        case fileUniqueId = "file_unique_id"
        
        case isAnimated = "is_animated"
        
        case isVideo = "is_video"
        
    }
    
}
