//
//  SendDocumentRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public struct SendDocumentRequestParameters: Content {
    
    public static var defaultContentType: HTTPMediaType = .formData
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let document: InputFile
    
    public let disableContentTypeDetection: Bool
    
    public let caption: String?
    
    public let captionEntities: [Message.Entity]?
    
    // MARK: - Init
    
    public init(chatId: Int,
                document: InputFile,
                disableContentTypeDetection: Bool = true,
                caption: String? = nil,
                captionEntities: [Message.Entity]? = nil) {
        
        self.chatId = chatId
        self.document = document
        self.disableContentTypeDetection = disableContentTypeDetection
        self.caption = caption
        self.captionEntities = captionEntities
    }
    
}

// MARK: - CodingKeys

extension SendDocumentRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case document
        
        case disableContentTypeDetection = "disable_content_type_detection"
        
        case caption
        
        case captionEntities = "caption_entities"
        
    }
    
}
