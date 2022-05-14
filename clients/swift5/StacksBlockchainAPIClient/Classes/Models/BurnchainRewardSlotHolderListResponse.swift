//
// BurnchainRewardSlotHolderListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GET request that returns reward slot holders */
public struct BurnchainRewardSlotHolderListResponse: Codable, JSONEncodable, Hashable {

    /** The number of items to return */
    public var limit: Int
    /** The number of items to skip (starting at `0`) */
    public var offset: Int = 0
    /** Total number of available items */
    public var total: Int
    public var results: [BurnchainRewardSlotHolder]

    public init(limit: Int, offset: Int = 0, total: Int, results: [BurnchainRewardSlotHolder]) {
        self.limit = limit
        self.offset = offset
        self.total = total
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case limit
        case offset
        case total
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(limit, forKey: .limit)
        try container.encode(offset, forKey: .offset)
        try container.encode(total, forKey: .total)
        try container.encode(results, forKey: .results)
    }
}
