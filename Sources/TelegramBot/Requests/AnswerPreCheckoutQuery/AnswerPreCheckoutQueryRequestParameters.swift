//
//  AnswerPreCheckoutQueryRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct AnswerPreCheckoutQueryRequestParameters: Content {
    
    // MARK: - Properties
    
    public let preCheckoutQueryId: String
    
    public let ok: Bool
    
    public let errorMessage: String?
    
    
    // MARK: - Init
    
    public init(preCheckoutQueryId: String,
                ok: Bool,
                errorMessage: String? = nil) {
        
        self.preCheckoutQueryId = preCheckoutQueryId
        self.ok = ok
        self.errorMessage = errorMessage
    }
    
}

// MARK: - CodingKeys

extension AnswerPreCheckoutQueryRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case preCheckoutQueryId = "pre_checkout_query_id"
        
        case ok
        
        case errorMessage = "error_message"
        
    }
    
}
