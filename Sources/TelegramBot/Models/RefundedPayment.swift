//
//  RefundedPayment.swift
//
//
//  Created by Ivan Zinovev on 01.08.2024.
//

import Vapor

public struct RefundedPayment: Content {
    
    public let currency: String
    
    public let totalAmount: Int
    
    public let invoicePayload: String
    
    public let telegramPaymentChargeId: String
    
}

// MARK: - CodingKeys

extension RefundedPayment {
    
    enum CodingKeys: String, CodingKey {
        
        case currency
        
        case totalAmount = "total_amount"
        
        case invoicePayload = "invoice_payload"
        
        case telegramPaymentChargeId = "telegram_payment_charge_id"
        
    }
    
}
