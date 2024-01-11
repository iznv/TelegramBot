//
//  Message.Entity.swift
//  
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public extension Message {
    
    struct Entity: Content {
        
        public let offset: Int
        
        public let length: Int
        
        public let type: Type
        
    }
    
}
