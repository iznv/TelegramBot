//
//  PreCheckoutQuery.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct PreCheckoutQuery: Content {
    
    public let id: String
    
    public let from: User
    
    public let currency: String
    
    public let totalAmount: Int
    
    public let invoicePayload: String
    
}

// MARK: - CodingKeys

extension PreCheckoutQuery {
    
    enum CodingKeys: String, CodingKey {
        
        case id
        
        case from
        
        case currency
        
        case totalAmount = "total_amount"
        
        case invoicePayload = "invoice_payload"
        
    }
    
}
