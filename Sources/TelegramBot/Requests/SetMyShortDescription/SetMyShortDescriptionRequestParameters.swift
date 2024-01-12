//
//  SetMyShortDescriptionRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public struct SetMyShortDescriptionRequestParameters: Content {
    
    // MARK: - Properties
    
    public let shortDescription: String
    
    public let languageCode: String
    
    // MARK: - Init
    
    public init(shortDescription: String,
                languageCode: String) {
        
        self.shortDescription = shortDescription
        self.languageCode = languageCode
    }
    
}

// MARK: - CodingKeys

extension SetMyShortDescriptionRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case shortDescription = "short_description"
        
        case languageCode = "language_code"
        
    }
    
}

