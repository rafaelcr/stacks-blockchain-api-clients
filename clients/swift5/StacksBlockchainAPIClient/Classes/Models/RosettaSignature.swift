//
// RosettaSignature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Signature contains the payload that was signed, the public keys of the keypairs used to produce the signature, the signature (encoded in hex), and the SignatureType. PublicKey is often times not known during construction of the signing payloads but may be needed to combine signatures properly. */
public struct RosettaSignature: Codable, JSONEncodable, Hashable {

    public enum SignatureType: String, Codable, CaseIterable {
        case ecdsa = "ecdsa"
        case ecdsaRecovery = "ecdsa_recovery"
        case ed25519 = "ed25519"
        case schnorr1 = "schnorr_1"
        case schnorrPoseidon = "schnorr_poseidon"
    }
    public var signingPayload: AnyCodable
    public var publicKey: AnyCodable
    /** SignatureType is the type of a cryptographic signature. */
    public var signatureType: SignatureType
    public var hexBytes: String

    public init(signingPayload: AnyCodable, publicKey: AnyCodable, signatureType: SignatureType, hexBytes: String) {
        self.signingPayload = signingPayload
        self.publicKey = publicKey
        self.signatureType = signatureType
        self.hexBytes = hexBytes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signingPayload = "signing_payload"
        case publicKey = "public_key"
        case signatureType = "signature_type"
        case hexBytes = "hex_bytes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(signingPayload, forKey: .signingPayload)
        try container.encode(publicKey, forKey: .publicKey)
        try container.encode(signatureType, forKey: .signatureType)
        try container.encode(hexBytes, forKey: .hexBytes)
    }
}

