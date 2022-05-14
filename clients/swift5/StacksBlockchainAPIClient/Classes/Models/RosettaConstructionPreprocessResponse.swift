//
// RosettaConstructionPreprocessResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** RosettaConstructionPreprocessResponse contains options that will be sent unmodified to /construction/metadata. If it is not necessary to make a request to /construction/metadata, options should be omitted. Some blockchains require the PublicKey of particular AccountIdentifiers to construct a valid transaction. To fetch these PublicKeys, populate required_public_keys with the AccountIdentifiers associated with the desired PublicKeys. If it is not necessary to retrieve any PublicKeys for construction, required_public_keys should be omitted. */
public struct RosettaConstructionPreprocessResponse: Codable, JSONEncodable, Hashable {

    public var options: AnyCodable?
    public var requiredPublicKeys: [AnyCodable]?

    public init(options: AnyCodable? = nil, requiredPublicKeys: [AnyCodable]? = nil) {
        self.options = options
        self.requiredPublicKeys = requiredPublicKeys
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case options
        case requiredPublicKeys = "required_public_keys"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(requiredPublicKeys, forKey: .requiredPublicKeys)
    }
}
