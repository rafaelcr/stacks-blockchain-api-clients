//
// FeeRate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Get fee rate information. */
public struct FeeRate: Codable, JSONEncodable, Hashable {

    public var feeRate: Int

    public init(feeRate: Int) {
        self.feeRate = feeRate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case feeRate = "fee_rate"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(feeRate, forKey: .feeRate)
    }
}

