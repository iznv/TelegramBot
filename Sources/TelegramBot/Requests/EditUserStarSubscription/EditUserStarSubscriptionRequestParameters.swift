//
//  EditUserStarSubscriptionRequestParameters.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 06.01.2025.
//

import Vapor

public struct EditUserStarSubscriptionRequestParameters: Content {
    
    // MARK: - Properties
    
    public let userId: Int
    
    public let telegramPaymentChargeId: String
    
    public let isCanceled: Bool
    
    // MARK: - Init
    
    public init(userId: Int,
                telegramPaymentChargeId: String,
                isCanceled: Bool) {

        self.userId = userId
        self.telegramPaymentChargeId = telegramPaymentChargeId
        self.isCanceled = isCanceled
    }
    
}

// MARK: - CodingKeys

extension EditUserStarSubscriptionRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case telegramPaymentChargeId = "telegram_payment_charge_id"
        
        case isCanceled = "is_canceled"
        
    }
    
}
