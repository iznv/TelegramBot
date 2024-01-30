//
//  GetStickerSetRequest.swift
//  
//
//  Created by Ivan Zinovev on 29.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func getStickerSet(_ parameters: GetStickerSetRequestParameters) async throws -> Response<StickerSet> {
        return try await execute(method: "getStickerSet", parameters: parameters)
    }
    
}
