//
//  BotCommand.swift
//
//
//  Created by Ivan Zinovev on 29.02.2024.
//

import Vapor

public struct BotCommand: Content {
    
    // MARK: - Properties
    
    public let command: String
    
    public let description: String
    
    // MARK: - Init
    
    public init(command: String,
                description: String) {
        
        self.command = command
        self.description = description
    }
    
}
