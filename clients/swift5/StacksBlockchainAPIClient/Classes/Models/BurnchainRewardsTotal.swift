//
// BurnchainRewardsTotal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Total burnchain rewards made to a recipient */
public struct BurnchainRewardsTotal: Codable, JSONEncodable, Hashable {

    /** The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) */
    public var rewardRecipient: String
    /** The total amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) */
    public var rewardAmount: String

    public init(rewardRecipient: String, rewardAmount: String) {
        self.rewardRecipient = rewardRecipient
        self.rewardAmount = rewardAmount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rewardRecipient = "reward_recipient"
        case rewardAmount = "reward_amount"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rewardRecipient, forKey: .rewardRecipient)
        try container.encode(rewardAmount, forKey: .rewardAmount)
    }
}

