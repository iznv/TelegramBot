//
//  CallbackQuery.swift
//  
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public struct CallbackQuery: Content {
    
    public let id: String
    
    public let message: Message?
    
    public let data: String?
    
}
