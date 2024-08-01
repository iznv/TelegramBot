//
//  StarTransaction.swift
//
//
//  Created by Ivan Zinovev on 29.07.2024.
//

import Vapor

public struct StarTransaction: Content {
    
    public let id: String
    
    public let amount: Int
    
    public let date: Int
    
}
