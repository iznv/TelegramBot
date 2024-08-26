//
//  ChatFullInfo.swift
//
//
//  Created by Ivan Zinovev on 02.08.2024.
//

import Vapor

public struct ChatFullInfo: Content {
    
    public let id: Int
    
    public let firstName: String?
    
    public let lastName: String?
    
    public let username: String?
    
    public let hasRestrictedVoiceAndVideoMessages: Bool?
    
}

// MARK: - CodingKeys

extension ChatFullInfo {
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case firstName = "first_name"
        
        case lastName = "last_name"
        
        case username
        
        case hasRestrictedVoiceAndVideoMessages = "has_restricted_voice_and_video_messages"
        
    }
    
}
