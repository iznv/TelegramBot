//
//  GetStickerSetRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.01.2024.
//

import Vapor

public struct GetStickerSetRequestParameters: Content {
    
    // MARK: - Properties
    
    public let name: String
    
    // MARK: - Init
    
    public init(name: String) {
        self.name = name
    }
    
}
