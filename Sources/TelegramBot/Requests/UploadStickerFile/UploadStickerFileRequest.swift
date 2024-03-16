//
//  UploadStickerFileRequest.swift
//
//
//  Created by Ivan Zinovev on 11.03.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func uploadStickerFile(_ parameters: UploadStickerFileRequestParameters) async throws -> Response<TelegramFile> {
        return try await execute(method: "uploadStickerFile", parameters: parameters)
    }
    
}
