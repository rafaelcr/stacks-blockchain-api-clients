//
// RosettaConstructionMetadataResponseMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RosettaConstructionMetadataResponseMetadata: Codable, JSONEncodable, Hashable {

    public var accountSequence: Int?
    public var recentBlockHash: String?

    public init(accountSequence: Int? = nil, recentBlockHash: String? = nil) {
        self.accountSequence = accountSequence
        self.recentBlockHash = recentBlockHash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountSequence = "account_sequence"
        case recentBlockHash = "recent_block_hash"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accountSequence, forKey: .accountSequence)
        try container.encodeIfPresent(recentBlockHash, forKey: .recentBlockHash)
    }
}

