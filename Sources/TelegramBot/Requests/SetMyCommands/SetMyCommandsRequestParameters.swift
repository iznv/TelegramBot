//
//  SetMyCommandsRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.02.2024.
//

import Vapor

public struct SetMyCommandsRequestParameters: Content {
    
    // MARK: - Properties
    
    public let commands: [BotCommand]
    
    public let languageCode: String?
    
    // MARK: - Init
    
    public init(commands: [BotCommand],
                languageCode: String? = nil) {
        
        self.commands = commands
        self.languageCode = languageCode
    }
    
}

// MARK: - CodingKeys

extension SetMyCommandsRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case commands
        
        case languageCode = "language_code"
        
    }
    
}

