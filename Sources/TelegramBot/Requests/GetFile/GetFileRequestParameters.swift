//
//  GetFileRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct GetFileRequestParameters: Content {
    
    // MARK: - Properties
    
    public let fileId: String
    
    // MARK: - Init
    
    public init(fileId: String) {
        self.fileId = fileId
    }
    
}

// MARK: - CodingKeys

extension GetFileRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case fileId = "file_id"
        
    }
    
}
