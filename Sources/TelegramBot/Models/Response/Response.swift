//
//  Response.swift
//  
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public final class Response<Result: Content>: Content {
    
    public let ok: Bool
    
    public let result: Result?
    
    public let description: String?
    
    public let parameters: Response.Parameters?
    
}
