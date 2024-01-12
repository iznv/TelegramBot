//
//  Configuration.swift
//
//
//  Created by Ivan Zinovev on 11.01.2024.
//

import Vapor

public struct Configuration {
    
    // MARK: - Properties
    
    let token: String
    
    // MARK: - Init
    
    public init(token: String) {
        self.token = token
    }
    
}

public extension TelegramBot {
    
    var configuration: Configuration {
        get {
            application.storage[ConfigurationKey.self] ?? .init(token: "")
        }
        nonmutating set {
            application.storage[ConfigurationKey.self] = newValue
        }
    }

}

struct ConfigurationKey: StorageKey {
    
    typealias Value = Configuration
    
}
