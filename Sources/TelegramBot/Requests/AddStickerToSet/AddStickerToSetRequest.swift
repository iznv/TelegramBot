//
//  AddStickerToSetRequest.swift
//  
//
//  Created by Ivan Zinovev on 14.03.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func addStickerToSet(_ parameters: AddStickerToSetRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "addStickerToSet", parameters: parameters)
    }
    
}

