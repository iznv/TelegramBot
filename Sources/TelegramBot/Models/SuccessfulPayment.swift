//
//  SuccessfulPayment.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct SuccessfulPayment: Content {
    
    public let currency: String
    
    public let totalAmount: Int
    
    public let invoicePayload: String
    
    public let telegramPaymentChargeId: String
    
    public let providerPaymentChargeId: String
    
    public let subscriptionExpirationDate: Int?
    
    public let isRecurring: Bool?
    
    public let isFirstRecurring: Bool?
    
}

// MARK: - CodingKeys

extension SuccessfulPayment {
    
    enum CodingKeys: String, CodingKey {
        
        case currency
        
        case totalAmount = "total_amount"
        
        case invoicePayload = "invoice_payload"
        
        case telegramPaymentChargeId = "telegram_payment_charge_id"
        
        case providerPaymentChargeId = "provider_payment_charge_id"
        
        case subscriptionExpirationDate = "subscription_expiration_date"
        
        case isRecurring = "is_recurring"
        
        case isFirstRecurring = "is_first_recurring"
        
    }
    
}
