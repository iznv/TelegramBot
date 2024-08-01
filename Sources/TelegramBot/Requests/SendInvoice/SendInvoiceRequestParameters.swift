//
//  SendInvoiceRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct SendInvoiceRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let title: String
    
    public let description: String
    
    public let payload: String
    
    public let currency: String
    
    public let prices: [LabeledPrice]
    
    // MARK: - Init
    
    public init(chatId: Int,
                title: String,
                description: String,
                payload: String,
                currency: String,
                prices: [LabeledPrice]) {
        
        self.chatId = chatId
        self.title = title
        self.description = description
        self.payload = payload
        self.currency = currency
        self.prices = prices
    }
    
}

// MARK: - CodingKeys

extension SendInvoiceRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case title
        
        case description
        
        case payload
        
        case currency
        
        case prices
        
    }
    
}
