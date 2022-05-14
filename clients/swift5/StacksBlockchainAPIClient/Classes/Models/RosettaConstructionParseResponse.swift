//
// RosettaConstructionParseResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** RosettaConstructionParseResponse contains an array of operations that occur in a transaction blob. This should match the array of operations provided to /construction/preprocess and /construction/payloads. */
public struct RosettaConstructionParseResponse: Codable, JSONEncodable, Hashable {

    public var operations: [RosettaOperation]
    /** [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty. */
    public var signers: [AnyOfstring]?
    public var accountIdentifierSigners: [AnyCodable]?
    public var metadata: AnyCodable?

    public init(operations: [RosettaOperation], signers: [AnyOfstring]? = nil, accountIdentifierSigners: [AnyCodable]? = nil, metadata: AnyCodable? = nil) {
        self.operations = operations
        self.signers = signers
        self.accountIdentifierSigners = accountIdentifierSigners
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operations
        case signers
        case accountIdentifierSigners = "account_identifier_signers"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(operations, forKey: .operations)
        try container.encodeIfPresent(signers, forKey: .signers)
        try container.encodeIfPresent(accountIdentifierSigners, forKey: .accountIdentifierSigners)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}
