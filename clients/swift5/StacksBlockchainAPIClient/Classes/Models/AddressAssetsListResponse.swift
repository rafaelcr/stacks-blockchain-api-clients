//
// AddressAssetsListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GET request that returns address assets */
public struct AddressAssetsListResponse: Codable, JSONEncodable, Hashable {

    public var limit: Int
    public var offset: Int
    public var total: Int
    public var results: [AnyOfobjectobjectobjectobjectobject]

    public init(limit: Int, offset: Int, total: Int, results: [AnyOfobjectobjectobjectobjectobject]) {
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
