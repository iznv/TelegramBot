//
//  TelegramBot.Request.swift
//  
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public extension TelegramBot {
    
    class Request<Response: Content> {
        
        // MARK: - Properties
        
        let path: String
        
        let parameters: any Content
        
        // MARK: - Init
        
        init(path: String,
             parameters: any Content) {
            
            self.path = path
            self.parameters = parameters
        }
        
    }
    
}
