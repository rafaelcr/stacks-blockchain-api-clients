//
// InlineObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InlineObject: Codable, JSONEncodable, Hashable {

    /** STX testnet address */
    public var address: String?
    /** Use required number of tokens for stacking */
    public var stacking: Bool?

    public init(address: String? = nil, stacking: Bool? = nil) {
        self.address = address
        self.stacking = stacking
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case stacking
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(stacking, forKey: .stacking)
    }
}
