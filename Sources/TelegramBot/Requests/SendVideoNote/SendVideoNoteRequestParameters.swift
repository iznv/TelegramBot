//
//  SendVideoNoteRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 15.08.2024.
//

import Vapor

public struct SendVideoNoteRequestParameters: Content {
    
    public static var defaultContentType: HTTPMediaType = .formData
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let videoNote: File
    
    // MARK: - Init
    
    public init(chatId: Int,
                videoNote: File) {
        
        self.chatId = chatId
        self.videoNote = videoNote
    }
    
}

// MARK: - CodingKeys

extension SendVideoNoteRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case videoNote = "video_note"
        
    }
    
}
