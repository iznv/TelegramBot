//
//  RefundStarPaymentRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct RefundStarPaymentRequestParameters: Content {
    
    // MARK: - Properties
    
    public let userId: Int
    
    public let telegramPaymentChargeId: String
    
    // MARK: - Init
    
    public init(userId: Int,
                telegramPaymentChargeId: String) {
        
        self.userId = userId
        self.telegramPaymentChargeId = telegramPaymentChargeId
    }
    
}

// MARK: - CodingKeys

extension RefundStarPaymentRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case telegramPaymentChargeId = "telegram_payment_charge_id"
        
    }
    
}

