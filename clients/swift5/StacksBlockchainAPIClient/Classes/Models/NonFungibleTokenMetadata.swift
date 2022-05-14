//
// NonFungibleTokenMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NonFungibleTokenMetadata: Codable, JSONEncodable, Hashable {

    /** An optional string that is a valid URI which resolves to this token's metadata. Can be empty. */
    public var tokenUri: String
    /** Identifies the asset to which this token represents */
    public var name: String
    /** Describes the asset to which this token represents */
    public var description: String
    /** A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI. */
    public var imageUri: String
    /** The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive. */
    public var imageCanonicalUri: String
    /** Tx id that deployed the contract */
    public var txId: String
    /** principle that deployed the contract */
    public var senderAddress: String

    public init(tokenUri: String, name: String, description: String, imageUri: String, imageCanonicalUri: String, txId: String, senderAddress: String) {
        self.tokenUri = tokenUri
        self.name = name
        self.description = description
        self.imageUri = imageUri
        self.imageCanonicalUri = imageCanonicalUri
        self.txId = txId
        self.senderAddress = senderAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tokenUri = "token_uri"
        case name
        case description
        case imageUri = "image_uri"
        case imageCanonicalUri = "image_canonical_uri"
        case txId = "tx_id"
        case senderAddress = "sender_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tokenUri, forKey: .tokenUri)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(imageUri, forKey: .imageUri)
        try container.encode(imageCanonicalUri, forKey: .imageCanonicalUri)
        try container.encode(txId, forKey: .txId)
        try container.encode(senderAddress, forKey: .senderAddress)
    }
}
