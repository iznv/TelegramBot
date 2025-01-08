//
//  ChatMemberStatus.swift
//  TelegramBot
//
//  Created by Ivan Zinovev on 08.01.2025.
//

import Vapor

public enum ChatMemberStatus: String, Content {
    
    case creator
    
    case administrator
    
    case member
    
    case restricted
    
    case left
    
    case kicked
    
}
