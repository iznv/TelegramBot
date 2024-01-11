//
//  Message.Entity.Type.swift
//
//
//  Created by Ivan Zinovev on 10.01.2024.
//

import Vapor

public extension Message.Entity {
    
    enum `Type`: String, Content, DefaultFirst {
        
        case unknown
        
        case mention
        
        case hashtag
        
        case cashtag
        
        case botCommand = "bot_command"
        
        case url
        
        case email
        
        case phoneNumber = "phone_number"
        
        case bold
        
        case italic
        
        case underline
        
        case strikethrough
        
        case spoiler
        
        case blockquote
        
        case code
        
        case pre
        
        case textLink = "text_link"
        
        case textMention = "text_mention"
        
        case customEmoji = "custom_emoji"
        
    }
    
}
