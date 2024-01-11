//
//  TelegramBotConfiguration.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct TelegramBotConfiguration {
    
    // MARK: - Properties
    
    var token: String
    
    // MARK: - Init
    
    public init(token: String) {
        self.token = token
    }
    
}

public extension Application {
    
    var telegramBotConfiguration: TelegramBotConfiguration {
        get {
            self.storage[TelegramBotConfigurationKey.self] ?? .init(token: "")
        }
        set {
            self.storage[TelegramBotConfigurationKey.self] = newValue
        }
    }

}

struct TelegramBotConfigurationKey: StorageKey {
    
    typealias Value = TelegramBotConfiguration
    
}
