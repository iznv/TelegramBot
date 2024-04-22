//
//  InputFile.swift
//
//
//  Created by Ivan Zinovev on 30.01.2024.
//

import Vapor

public enum InputFile {
    
    case file(File)
    
    case fileId(String)
    
    case unknown
    
}

// MARK: - Content

extension InputFile: Content {
 
    public init(from decoder: Decoder) throws {
        if let file = try? decoder.singleValueContainer().decode(File.self) {
            self = .file(file)
            return
        }
        
        if let fileId = try? decoder.singleValueContainer().decode(String.self) {
            self = .fileId(fileId)
            return
        }
        
        self = .unknown
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .file(file):
            try container.encode(file)
        case let .fileId(fileId):
            try container.encode(fileId)
        default:
            fatalError("Unknown should not be used")
        }
    }
    
}
