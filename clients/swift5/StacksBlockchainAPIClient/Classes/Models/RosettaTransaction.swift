//
// RosettaTransaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Transactions contain an array of Operations that are attributable to the same TransactionIdentifier. */
public struct RosettaTransaction: Codable, JSONEncodable, Hashable {

    public var transactionIdentifier: AnyCodable
    /** List of operations */
    public var operations: [AnyCodable]
    public var metadata: RosettaTransactionMetadata?

    public init(transactionIdentifier: AnyCodable, operations: [AnyCodable], metadata: RosettaTransactionMetadata? = nil) {
        self.transactionIdentifier = transactionIdentifier
        self.operations = operations
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionIdentifier = "transaction_identifier"
        case operations
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transactionIdentifier, forKey: .transactionIdentifier)
        try container.encode(operations, forKey: .operations)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

