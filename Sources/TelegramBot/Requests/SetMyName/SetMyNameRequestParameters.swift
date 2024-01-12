//
//  SetMyNameRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public struct SetMyNameRequestParameters: Content {
    
    // MARK: - Properties
    
    public let name: String
    
    public let languageCode: String
    
    // MARK: - Init
    
    public init(name: String,
                languageCode: String) {
        
        self.name = name
        self.languageCode = languageCode
    }
    
}

// MARK: - CodingKeys

extension SetMyNameRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case name
        
        case languageCode = "language_code"
        
    }
    
}
