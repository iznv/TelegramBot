//
//  DefaultFirst.swift
//
//
//  Created by Ivan Zinovev on 10.01.2024.
//

public protocol DefaultFirst: CaseIterable & RawRepresentable where RawValue: Decodable { }

public extension DefaultFirst {

    init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(RawValue.self)
        self = Self(rawValue: rawValue) ?? Self.allCases.first!
    }

}
