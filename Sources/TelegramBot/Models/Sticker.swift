//
//  Sticker.swift
//  
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct Sticker: Content {
    
    public let fileId: String
    
}

// MARK: - CodingKeys

extension Sticker {
    
    enum CodingKeys: String, CodingKey {
        
        case fileId = "file_id"
        
    }
    
}
