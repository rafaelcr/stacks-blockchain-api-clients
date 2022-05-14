//
// RosettaOperation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Operations contain all balance-changing information within a transaction. They are always one-sided (only affect 1 AccountIdentifier) and can succeed or fail independently from a Transaction. */
public struct RosettaOperation: Codable, JSONEncodable, Hashable {

    public var operationIdentifier: RosettaOperationIdentifier
    /** Restrict referenced related_operations to identifier indexes < the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree. */
    public var relatedOperations: [RosettaRelatedOperation]?
    /** The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data. */
    public var type: String
    /** The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation. */
    public var status: String?
    public var account: AnyCodable?
    public var amount: AnyCodable?
    public var coinChange: RosettaCoinChange?
    /** Operations Meta Data */
    public var metadata: AnyCodable?

    public init(operationIdentifier: RosettaOperationIdentifier, relatedOperations: [RosettaRelatedOperation]? = nil, type: String, status: String? = nil, account: AnyCodable? = nil, amount: AnyCodable? = nil, coinChange: RosettaCoinChange? = nil, metadata: AnyCodable? = nil) {
        self.operationIdentifier = operationIdentifier
        self.relatedOperations = relatedOperations
        self.type = type
        self.status = status
        self.account = account
        self.amount = amount
        self.coinChange = coinChange
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationIdentifier = "operation_identifier"
        case relatedOperations = "related_operations"
        case type
        case status
        case account
        case amount
        case coinChange = "coin_change"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(operationIdentifier, forKey: .operationIdentifier)
        try container.encodeIfPresent(relatedOperations, forKey: .relatedOperations)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(coinChange, forKey: .coinChange)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}
