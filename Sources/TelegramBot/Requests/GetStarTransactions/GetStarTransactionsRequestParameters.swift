//
//  GetStarTransactionsRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct GetStarTransactionsRequestParameters: Content {
    
    // MARK: - Properties
    
    public let offset: Int?
    
    public let limit: Int?
    
    // MARK: - Init
    
    public init(offset: Int? = nil,
                limit: Int? = nil) {
        
        self.offset = offset
        self.limit = limit
    }
    
}
