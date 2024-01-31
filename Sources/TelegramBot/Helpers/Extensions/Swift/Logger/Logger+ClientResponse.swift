//
//  Logger+ClientResponse.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public extension Logger {
    
    func log(title: String,
             path: String,
             data: ByteBuffer?,
             _ level: Logger.Level = .info) throws {
        
        guard let json = try? data?.prettyJson() else { return }
        log(level: level, .init(stringLiteral: "\(title): \(path)\n\(json)"))
    }
    
    func log(title: String,
             path: String,
             content: any Content,
             _ level: Logger.Level = .info) throws {
        
        let data = try JSONEncoder().encode(content)
        try log(title: title, path: path, data: ByteBuffer(data: data), level)
    }
    
}

// MARK: - Private

public extension ByteBuffer {
    
    func prettyJson() throws -> String? {
        let jsonObject = try JSONSerialization.jsonObject(with: self)
        
        guard let data = try? JSONSerialization.data(withJSONObject: jsonObject,
                                                     options: [.prettyPrinted]) else { return nil }
        
        return String.init(data: data, encoding: .utf8)
    }
    
}
