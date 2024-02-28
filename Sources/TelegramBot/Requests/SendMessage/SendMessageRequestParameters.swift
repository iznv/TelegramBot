//
//  SendMessageRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct SendMessageRequestParameters: Content {
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let text: String
    
    public let parseMode: ParseMode?
    
    public let replyMarkup: ReplyMarkup?
    
    public let linkPreviewOptions: LinkPreviewOptions?
    
    // MARK: - Init
    
    public init(chatId: Int, 
                text: String,
                parseMode: ParseMode? = nil,
                replyMarkup: ReplyMarkup? = nil,
                linkPreviewOptions: LinkPreviewOptions? = nil) {
        
        self.chatId = chatId
        self.text = text
        self.parseMode = parseMode
        self.replyMarkup = replyMarkup
        self.linkPreviewOptions = linkPreviewOptions
    }
    
}

// MARK: - CodingKeys

extension SendMessageRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case text
        
        case parseMode = "parse_mode"
        
        case replyMarkup = "reply_markup"
        
        case linkPreviewOptions = "link_preview_options"
        
    }
    
}
