//
// RosettaNetworkOptionsResponseVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The Version object is utilized to inform the client of the versions of different components of the Rosetta implementation. */
public struct RosettaNetworkOptionsResponseVersion: Codable, JSONEncodable, Hashable {

    /** The rosetta_version is the version of the Rosetta interface the implementation adheres to. This can be useful for clients looking to reliably parse responses. */
    public var rosettaVersion: String
    /** The node_version is the canonical version of the node runtime. This can help clients manage deployments. */
    public var nodeVersion: String
    /** When a middleware server is used to adhere to the Rosetta interface, it should return its version here. This can help clients manage deployments. */
    public var middlewareVersion: String?
    /** Any other information that may be useful about versioning of dependent services should be returned here. */
    public var metadata: AnyCodable?

    public init(rosettaVersion: String, nodeVersion: String, middlewareVersion: String? = nil, metadata: AnyCodable? = nil) {
        self.rosettaVersion = rosettaVersion
        self.nodeVersion = nodeVersion
        self.middlewareVersion = middlewareVersion
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rosettaVersion = "rosetta_version"
        case nodeVersion = "node_version"
        case middlewareVersion = "middleware_version"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rosettaVersion, forKey: .rosettaVersion)
        try container.encode(nodeVersion, forKey: .nodeVersion)
        try container.encodeIfPresent(middlewareVersion, forKey: .middlewareVersion)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

