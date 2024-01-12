//
//  SetMyNameRequest.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func setMyName(_ parameters: SetMyNameRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "setMyName", parameters: parameters)
    }
    
}
