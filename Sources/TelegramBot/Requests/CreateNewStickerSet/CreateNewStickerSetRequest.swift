//
//  CreateNewStickerSetRequest.swift
//  
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func createNewStickerSet(_ parameters: CreateNewStickerSetRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "createNewStickerSet", parameters: parameters)
    }
    
}

