//
// ContractListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GET list of contracts */
public struct ContractListResponse: Codable, JSONEncodable, Hashable {

    /** The number of contracts to return */
    public var limit: Int
    /** The number to contracts to skip (starting at `0`) */
    public var offset: Int = 0
    public var results: [SmartContract]

    public init(limit: Int, offset: Int = 0, results: [SmartContract]) {
        self.limit = limit
        self.offset = offset
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case limit
        case offset
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(limit, forKey: .limit)
        try container.encode(offset, forKey: .offset)
        try container.encode(results, forKey: .results)
    }
}

