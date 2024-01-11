//
//  User.swift
//  
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public struct User: Content {
    
    public let id: Int
    
    public let firstName: String
    
    public let lastName: String?
    
    public let username: String?
    
    public let languageCode: String?
    
}

// MARK: - CodingKeys

extension User {
    
    enum CodingKeys: String, CodingKey {
        
        case id
        
        case firstName = "first_name"
        
        case lastName = "last_name"
        
        case username
        
        case languageCode = "language_code"
        
    }
    
}
