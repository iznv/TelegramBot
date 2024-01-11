//
//  Update.swift
//
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public struct Update: Content {
    
    public let id: Int
    
    public let message: Message?
    
}

// MARK: - CodingKeys

extension Update {
    
    enum CodingKeys: String, CodingKey {
        
        case id = "update_id"
        
        case message
        
    }
    
}
