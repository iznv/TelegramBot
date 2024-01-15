//
//  TelegramFile.swift
//  
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct TelegramFile: Content {
    
    public let filePath: String
    
}


// MARK: - CodingKeys

extension TelegramFile {
    
    enum CodingKeys: String, CodingKey {
        
        case filePath = "file_path"
        
    }
    
}
