//
//  SetMyCommandsRequest.swift
//
//
//  Created by Ivan Zinovev on 29.02.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func setMyCommands(_ parameters: SetMyCommandsRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "setMyCommands", parameters: parameters)
    }
    
}
