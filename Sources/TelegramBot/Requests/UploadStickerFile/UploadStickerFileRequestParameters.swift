//
//  UploadStickerFileRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public struct UploadStickerFileRequestParameters: Content {
    
    public static var defaultContentType: HTTPMediaType = .formData
    
    // MARK: - Properties
    
    public let userId: Int
    
    public let sticker: File
    
    public let stickerFormat: StickerFormat
    
    // MARK: - Init
    
    public init(userId: Int, 
                sticker: File,
                stickerFormat: StickerFormat) {
        
        self.userId = userId
        self.sticker = sticker
        self.stickerFormat = stickerFormat
    }
    
}

// MARK: - CodingKeys

extension UploadStickerFileRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case sticker
        
        case stickerFormat = "sticker_format"
        
    }
    
}
