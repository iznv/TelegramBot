//
//  Document.swift
//
//
//  Created by Ivan Zinovev on 15.04.2024.
//

import Vapor

public struct Document: Content {
    
    public let fileId: String
    
    public let fileUniqueId: String
    
    public let fileName: String?
    
    public let mimeType: String?
    
}

// MARK: - CodingKeys

extension Document {
    
    enum CodingKeys: String, CodingKey {
        
        case fileId = "file_id"
        
        case fileUniqueId = "file_unique_id"
        
        case fileName = "file_name"
        
        case mimeType = "mime_type"
        
    }
    
}
