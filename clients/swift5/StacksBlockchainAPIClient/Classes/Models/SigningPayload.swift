//
// SigningPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** SigningPayload is signed by the client with the keypair associated with an address using the specified SignatureType. SignatureType can be optionally populated if there is a restriction on the signature scheme that can be used to sign the payload. */
public struct SigningPayload: Codable, JSONEncodable, Hashable {

    public enum SignatureType: String, Codable, CaseIterable {
        case ecdsa = "ecdsa"
        case ecdsaRecovery = "ecdsa_recovery"
        case ed25519 = "ed25519"
        case schnorr1 = "schnorr_1"
        case schnorrPoseidon = "schnorr_poseidon"
    }
    /** [DEPRECATED by account_identifier in v1.4.4] The network-specific address of the account that should sign the payload. */
    public var address: String?
    public var accountIdentifier: AnyCodable?
    public var hexBytes: String
    /** SignatureType is the type of a cryptographic signature. */
    public var signatureType: SignatureType?

    public init(address: String? = nil, accountIdentifier: AnyCodable? = nil, hexBytes: String, signatureType: SignatureType? = nil) {
        self.address = address
        self.accountIdentifier = accountIdentifier
        self.hexBytes = hexBytes
        self.signatureType = signatureType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case accountIdentifier = "account_identifier"
        case hexBytes = "hex_bytes"
        case signatureType = "signature_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(accountIdentifier, forKey: .accountIdentifier)
        try container.encode(hexBytes, forKey: .hexBytes)
        try container.encodeIfPresent(signatureType, forKey: .signatureType)
    }
}

