//
// RosettaConstructionSubmitResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** TransactionIdentifier contains the transaction_identifier of a transaction that was submitted to either /construction/submit. */
public struct RosettaConstructionSubmitResponse: Codable, JSONEncodable, Hashable {

    public var transactionIdentifier: AnyCodable
    public var metadata: AnyCodable?

    public init(transactionIdentifier: AnyCodable, metadata: AnyCodable? = nil) {
        self.transactionIdentifier = transactionIdentifier
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionIdentifier = "transaction_identifier"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transactionIdentifier, forKey: .transactionIdentifier)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

