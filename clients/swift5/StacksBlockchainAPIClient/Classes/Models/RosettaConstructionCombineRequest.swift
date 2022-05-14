//
// RosettaConstructionCombineRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** RosettaConstructionCombineRequest is the input to the /construction/combine endpoint. It contains the unsigned transaction blob returned by /construction/payloads and all required signatures to create a network transaction. */
public struct RosettaConstructionCombineRequest: Codable, JSONEncodable, Hashable {

    public var networkIdentifier: AnyCodable
    public var unsignedTransaction: String
    public var signatures: [RosettaSignature]

    public init(networkIdentifier: AnyCodable, unsignedTransaction: String, signatures: [RosettaSignature]) {
        self.networkIdentifier = networkIdentifier
        self.unsignedTransaction = unsignedTransaction
        self.signatures = signatures
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case networkIdentifier = "network_identifier"
        case unsignedTransaction = "unsigned_transaction"
        case signatures
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(networkIdentifier, forKey: .networkIdentifier)
        try container.encode(unsignedTransaction, forKey: .unsignedTransaction)
        try container.encode(signatures, forKey: .signatures)
    }
}
