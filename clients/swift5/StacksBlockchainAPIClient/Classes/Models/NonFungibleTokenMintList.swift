//
// NonFungibleTokenMintList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** List of Non-Fungible Token mint events for an asset identifier */
public struct NonFungibleTokenMintList: Codable, JSONEncodable, Hashable {

    /** The number of mint events to return */
    public var limit: Int
    /** The number to mint events to skip (starting at `0`) */
    public var offset: Int
    /** The number of mint events available */
    public var total: Int
    public var results: [AnyOfobjectobject]

    public init(limit: Int, offset: Int, total: Int, results: [AnyOfobjectobject]) {
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

