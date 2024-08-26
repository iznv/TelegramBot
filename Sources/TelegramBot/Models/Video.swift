//
//  Video.swift
//
//
//  Created by Ivan Zinovev on 15.08.2024.
//

import Vapor

public struct Video: Content {
    
    public let fileId: String
    
    public let fileUniqueId: String
    
    public let fileName: String?
    
    public let mimeType: String?
    
    public let duration: Int
    
    public let fileSize: Int?
    
}

// MARK: - CodingKeys

extension Video {
    
    enum CodingKeys: String, CodingKey {
        
        case fileId = "file_id"
        
        case fileUniqueId = "file_unique_id"
        
        case fileName = "file_name"
        
        case mimeType = "mime_type"
        
        case duration
        
        case fileSize = "file_size"
        
    }
    
}
