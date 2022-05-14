//
// AddressBalanceResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GET request that returns address balances */
public struct AddressBalanceResponse: Codable, JSONEncodable, Hashable {

    public var stx: AddressBalanceResponseStx
    public var fungibleTokens: AnyCodable
    public var nonFungibleTokens: AnyCodable
    public var tokenOfferingLocked: AddressTokenOfferingLocked?

    public init(stx: AddressBalanceResponseStx, fungibleTokens: AnyCodable, nonFungibleTokens: AnyCodable, tokenOfferingLocked: AddressTokenOfferingLocked? = nil) {
        self.stx = stx
        self.fungibleTokens = fungibleTokens
        self.nonFungibleTokens = nonFungibleTokens
        self.tokenOfferingLocked = tokenOfferingLocked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stx
        case fungibleTokens = "fungible_tokens"
        case nonFungibleTokens = "non_fungible_tokens"
        case tokenOfferingLocked = "token_offering_locked"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(stx, forKey: .stx)
        try container.encode(fungibleTokens, forKey: .fungibleTokens)
        try container.encode(nonFungibleTokens, forKey: .nonFungibleTokens)
        try container.encodeIfPresent(tokenOfferingLocked, forKey: .tokenOfferingLocked)
    }
}

