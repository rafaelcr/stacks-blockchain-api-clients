//
// AddressNonces.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions */
public struct AddressNonces: Codable, JSONEncodable, Hashable {

    /** The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address. */
    public var lastMempoolTxNonce: Int?
    /** The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address. */
    public var lastExecutedTxNonce: Int?
    /** The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called. */
    public var possibleNextNonce: Int
    /** Nonces that appear to be missing and likely causing a mempool transaction to be stuck. */
    public var detectedMissingNonces: [Int]

    public init(lastMempoolTxNonce: Int?, lastExecutedTxNonce: Int?, possibleNextNonce: Int, detectedMissingNonces: [Int]) {
        self.lastMempoolTxNonce = lastMempoolTxNonce
        self.lastExecutedTxNonce = lastExecutedTxNonce
        self.possibleNextNonce = possibleNextNonce
        self.detectedMissingNonces = detectedMissingNonces
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lastMempoolTxNonce = "last_mempool_tx_nonce"
        case lastExecutedTxNonce = "last_executed_tx_nonce"
        case possibleNextNonce = "possible_next_nonce"
        case detectedMissingNonces = "detected_missing_nonces"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lastMempoolTxNonce, forKey: .lastMempoolTxNonce)
        try container.encode(lastExecutedTxNonce, forKey: .lastExecutedTxNonce)
        try container.encode(possibleNextNonce, forKey: .possibleNextNonce)
        try container.encode(detectedMissingNonces, forKey: .detectedMissingNonces)
    }
}

