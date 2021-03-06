//
// RosettaBlockRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A BlockRequest is utilized to make a block request on the /block endpoint. */
public struct RosettaBlockRequest: Codable, JSONEncodable, Hashable {

    public var networkIdentifier: AnyCodable
    public var blockIdentifier: AnyCodable

    public init(networkIdentifier: AnyCodable, blockIdentifier: AnyCodable) {
        self.networkIdentifier = networkIdentifier
        self.blockIdentifier = blockIdentifier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case networkIdentifier = "network_identifier"
        case blockIdentifier = "block_identifier"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(networkIdentifier, forKey: .networkIdentifier)
        try container.encode(blockIdentifier, forKey: .blockIdentifier)
    }
}

