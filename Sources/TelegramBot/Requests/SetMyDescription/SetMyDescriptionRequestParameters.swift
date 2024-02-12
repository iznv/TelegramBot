//
//  SetMyDescriptionRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public struct SetMyDescriptionRequestParameters: Content {
    
    // MARK: - Properties
    
    public let description: String?
    
    public let languageCode: String?
    
    // MARK: - Init
    
    public init(description: String?,
                languageCode: String? = nil) {
        
        self.description = description
        self.languageCode = languageCode
    }
    
}

// MARK: - CodingKeys

extension SetMyDescriptionRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case description
        
        case languageCode = "language_code"
        
    }
    
}
