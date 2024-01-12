//
//  SetMyShortDescriptionRequest.swift
//
//
//  Created by Ivan Zinovev on 12.01.2024.
//

import Vapor

public extension TelegramBot {

    @discardableResult
    func setMyShortDescription(_ parameters: SetMyShortDescriptionRequestParameters) async throws -> Response<Bool> {
        return try await execute(method: "setMyShortDescription", parameters: parameters)
    }
    
}
