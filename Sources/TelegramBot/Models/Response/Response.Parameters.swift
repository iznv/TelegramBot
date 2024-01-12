//
//  Response.Parameters.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public extension Response {
    
    struct Parameters: Content {
        
        public let retryAfter: Int?
        
    }
    
}

// MARK: - CodingKeys

extension Response.Parameters {
    
    enum CodingKeys: String, CodingKey {
        
        case retryAfter = "retry_after"
        
    }
    
}
