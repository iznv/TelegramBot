//
//  GetFileRequest.swift
//
//
//  Created by Ivan Zinovev on 15.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func getFile(_ parameters: GetFileRequestParameters) async throws -> Response<TelegramFile> {
        return try await execute(method: "getFile", parameters: parameters)
    }
    
}
