//
//  LabeledPrice.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct LabeledPrice: Content {
    
    // MARK: - Properties
    
    public let label: String
    
    public let amount: Int
    
    // MARK: - Init
    
    public init(label: String, 
                amount: Int) {
        
        self.label = label
        self.amount = amount
    }
    
}
