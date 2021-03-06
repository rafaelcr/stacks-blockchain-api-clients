//
// BnsNamesOwnByAddressResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Retrieves a list of names owned by the address provided. */
public struct BnsNamesOwnByAddressResponse: Codable, JSONEncodable, Hashable {

    public var names: [String]?

    public init(names: [String]? = nil) {
        self.names = names
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case names
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(names, forKey: .names)
    }
}

