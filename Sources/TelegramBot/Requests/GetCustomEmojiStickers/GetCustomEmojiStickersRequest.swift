//
//  GetCustomEmojiStickersRequest.swift
//
//
//  Created by Ivan Zinovev on 10.02.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func getCustomEmojiStickers(_ parameters: GetCustomEmojiStickersRequestParameters) async throws -> Response<[Sticker]> {
        return try await execute(method: "getCustomEmojiStickers", parameters: parameters)
    }
    
}
