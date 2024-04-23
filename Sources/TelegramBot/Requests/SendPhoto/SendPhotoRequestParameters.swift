//
//  SendPhotoRequestParameters.swift
//
//
//  Created by Ivan Zinovev on 23.04.2024.
//

import Vapor

public struct SendPhotoRequestParameters: Content {
    
    public static var defaultContentType: HTTPMediaType = .formData
    
    // MARK: - Properties
    
    public let chatId: Int
    
    public let photo: File
    
    public let caption: String
    
    public let parseMode: ParseMode?
    
    public let replyMarkup: ReplyMarkup?
    
    // MARK: - Init
    
    public init(chatId: Int,
                photo: File,
                caption: String,
                parseMode: ParseMode? = nil,
                replyMarkup: ReplyMarkup? = nil) {
        
        self.chatId = chatId
        self.photo = photo
        self.caption = caption
        self.parseMode = parseMode
        self.replyMarkup = replyMarkup
    }
    
}

// MARK: - CodingKeys

extension SendPhotoRequestParameters {
    
    enum CodingKeys: String, CodingKey {
        
        case chatId = "chat_id"
        
        case photo
        
        case caption
        
        case parseMode = "parse_mode"
        
        case replyMarkup = "reply_markup"
        
    }
    
}
