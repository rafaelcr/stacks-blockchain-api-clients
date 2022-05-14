//
// BnsGetNamePriceResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Fetch price for name. */
public struct BnsGetNamePriceResponse: Codable, JSONEncodable, Hashable {

    public var units: String
    public var amount: String

    public init(units: String, amount: String) {
        self.units = units
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case units
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(units, forKey: .units)
        try container.encode(amount, forKey: .amount)
    }
}
