//
// RunFaucetResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** POST request that initiates a transfer of tokens to a specified testnet address */
public struct RunFaucetResponse: Codable, JSONEncodable, Hashable {

    /** Indicates if the faucet call was successful */
    public var success: Bool
    /** The transaction ID for the faucet call */
    public var txId: String?
    /** Raw transaction in hex string representation */
    public var txRaw: String?

    public init(success: Bool, txId: String? = nil, txRaw: String? = nil) {
        self.success = success
        self.txId = txId
        self.txRaw = txRaw
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case txId
        case txRaw
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encodeIfPresent(txId, forKey: .txId)
        try container.encodeIfPresent(txRaw, forKey: .txRaw)
    }
}

