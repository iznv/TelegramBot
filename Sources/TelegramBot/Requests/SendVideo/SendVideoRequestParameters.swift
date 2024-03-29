//
//  SendVideoRequestParameters.swift
//  
//
//  Created by Ivan Zinovev on 29.03.2024.
//

import Vapor

public struct SendVideoRequestParameters: Content {
    
    public static var defaultContentType: HTTPMediaType = .formData
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let video: File
    
    public let caption: String
    
    public let parseMode: ParseMode?
    
    public let replyMarkup: ReplyMarkup?
    
    // MARK: - Init
    
    public init(chatId: Int,
                video: File,
                caption: String,
                parseMode: ParseMode? = nil,
                replyMarkup: ReplyMarkup? = nil) {
        
        self.chatId = chatId
        self.video = video
        self.caption = caption
        self.parseMode = parseMode
        self.replyMarkup = replyMarkup
    }
    
}

// MARK: - CodingKeys

extension SendVideoRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case video
        
        case caption
        
        case parseMode = "parse_mode"
        
        case replyMarkup = "reply_markup"
        
    }
    
}
