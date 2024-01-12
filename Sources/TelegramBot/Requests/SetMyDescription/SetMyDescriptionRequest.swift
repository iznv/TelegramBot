//
//  SetMyDescriptionRequest.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func setMyDescription(_ parameters: SetMyDescriptionRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "setMyDescription", parameters: parameters)
    }
    
}
