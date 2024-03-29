//
//  Content+Json.swift
//
//
//  Created by Ivan Zinovev on 29.03.2024.
//

import Vapor

extension Content {
    
    func json() throws -> String {
        let jsonEncoder = JSONEncoder()
        let data = try jsonEncoder.encode(self)
        return String(decoding: data, as: UTF8.self)
    }
    
}
