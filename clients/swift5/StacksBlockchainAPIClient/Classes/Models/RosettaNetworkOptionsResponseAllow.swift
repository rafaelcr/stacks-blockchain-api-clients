//
// RosettaNetworkOptionsResponseAllow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Allow specifies supported Operation status, Operation types, and all possible error statuses. This Allow object is used by clients to validate the correctness of a Rosetta Server implementation. It is expected that these clients will error if they receive some response that contains any of the above information that is not specified here. */
public struct RosettaNetworkOptionsResponseAllow: Codable, JSONEncodable, Hashable {

    /** All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error. */
    public var operationStatuses: [RosettaOperationStatus]
    /** All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error. */
    public var operationTypes: [AnyOfstring]
    /** All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error. */
    public var errors: [RosettaErrorNoDetails]
    /** Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true. */
    public var historicalBalanceLookup: Bool

    public init(operationStatuses: [RosettaOperationStatus], operationTypes: [AnyOfstring], errors: [RosettaErrorNoDetails], historicalBalanceLookup: Bool) {
        self.operationStatuses = operationStatuses
        self.operationTypes = operationTypes
        self.errors = errors
        self.historicalBalanceLookup = historicalBalanceLookup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationStatuses = "operation_statuses"
        case operationTypes = "operation_types"
        case errors
        case historicalBalanceLookup = "historical_balance_lookup"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(operationStatuses, forKey: .operationStatuses)
        try container.encode(operationTypes, forKey: .operationTypes)
        try container.encode(errors, forKey: .errors)
        try container.encode(historicalBalanceLookup, forKey: .historicalBalanceLookup)
    }
}

