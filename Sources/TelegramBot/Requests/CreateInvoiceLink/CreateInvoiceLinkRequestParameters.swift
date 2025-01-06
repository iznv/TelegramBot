//
//  CreateInvoiceLinkRequestParameters.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 06.01.2025.
//

import Vapor

public struct CreateInvoiceLinkRequestParameters: Content {
    
    // MARK: - Properties
    
    public let title: String
    
    public let description: String
    
    public let payload: String
    
    public let currency: String
    
    public let prices: [LabeledPrice]
    
    public let subscriptionPeriod: Int?
    
    // MARK: - Init
    
    public init(title: String,
                description: String,
                payload: String,
                currency: String,
                prices: [LabeledPrice],
                subscriptionPeriod: Int?) {

        self.title = title
        self.description = description
        self.payload = payload
        self.currency = currency
        self.prices = prices
        self.subscriptionPeriod = subscriptionPeriod
    }
    
}

// MARK: - CodingKeys

extension CreateInvoiceLinkRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case title
        
        case description
        
        case payload
        
        case currency
        
        case prices
        
        case subscriptionPeriod = "subscription_period"
        
    }
    
}
