//
//  File.swift
//  
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

extension Logger {
    
    func log(path: String,
             response: ClientResponse,
             _ level: Logger.Level = .info) throws {
        
        guard let body = response.body else { return }
        
        let jsonObject = try JSONSerialization.jsonObject(with: body)
        
        guard let data = try? JSONSerialization.data(withJSONObject: jsonObject,
                                                     options: [.prettyPrinted]) else { return }
        
        guard let prettyPrintedString = String.init(data: data, encoding: .utf8) else { return }
        
        log(level: level, .init(stringLiteral: "\(path)\n\(prettyPrintedString)"))
    }
    
}
