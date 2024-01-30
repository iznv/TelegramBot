//
//  AnswerCallbackQueryRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 17.01.2024.
//

import Vapor

public struct AnswerCallbackQueryRequestParameters: Content {
    
    // MARK: - Properties
    
    public let callbackQueryId: String
    
    // MARK: - Init
    
    public init(callbackQueryId: String) {
        self.callbackQueryId = callbackQueryId
    }
    
}

// MARK: - CodingKeys

extension AnswerCallbackQueryRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case callbackQueryId = "callback_query_id"
        
    }
    
}
