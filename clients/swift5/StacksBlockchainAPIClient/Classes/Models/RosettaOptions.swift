//
// RosettaOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The options that will be sent directly to /construction/metadata by the caller. */
public struct RosettaOptions: Codable, JSONEncodable, Hashable {

    /** sender's address  */
    public var senderAddress: String?
    /** Type of operation e.g transfer */
    public var type: String?
    /** This value indicates the state of the operations */
    public var status: AnyCodable?
    /** Recipient's address */
    public var tokenTransferRecipientAddress: String?
    /** Amount to be transfered. */
    public var amount: String?
    /** Currency symbol e.g STX */
    public var symbol: String?
    /** Number of decimal places */
    public var decimals: Int?
    /** Maximum price a user is willing to pay. */
    public var gasLimit: Double?
    /** Cost necessary to perform a transaction on the network */
    public var gasPrice: Double?
    /**  A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. */
    public var suggestedFeeMultiplier: Double?
    /** Maximum fee user is willing to pay */
    public var maxFee: String?
    /** Fee for this transaction */
    public var fee: String?
    /** Transaction approximative size (used to calculate total fee). */
    public var size: Int?
    /** STX token transfer memo. */
    public var memo: String?
    /** Number of cycles when stacking. */
    public var numberOfCycles: Int?
    /** Address of the contract to call. */
    public var contractAddress: String?
    /** Name of the contract to call. */
    public var contractName: String?
    /** Set the burnchain (BTC) block for stacking lock to start. */
    public var burnBlockHeight: Int?
    /** Delegator address for when calling `delegate-stacking`. */
    public var delegateTo: String?
    /** The reward address for stacking transaction. It should be a valid Bitcoin address */
    public var poxAddr: String?

    public init(senderAddress: String? = nil, type: String? = nil, status: AnyCodable? = nil, tokenTransferRecipientAddress: String? = nil, amount: String? = nil, symbol: String? = nil, decimals: Int? = nil, gasLimit: Double? = nil, gasPrice: Double? = nil, suggestedFeeMultiplier: Double? = nil, maxFee: String? = nil, fee: String? = nil, size: Int? = nil, memo: String? = nil, numberOfCycles: Int? = nil, contractAddress: String? = nil, contractName: String? = nil, burnBlockHeight: Int? = nil, delegateTo: String? = nil, poxAddr: String? = nil) {
        self.senderAddress = senderAddress
        self.type = type
        self.status = status
        self.tokenTransferRecipientAddress = tokenTransferRecipientAddress
        self.amount = amount
        self.symbol = symbol
        self.decimals = decimals
        self.gasLimit = gasLimit
        self.gasPrice = gasPrice
        self.suggestedFeeMultiplier = suggestedFeeMultiplier
        self.maxFee = maxFee
        self.fee = fee
        self.size = size
        self.memo = memo
        self.numberOfCycles = numberOfCycles
        self.contractAddress = contractAddress
        self.contractName = contractName
        self.burnBlockHeight = burnBlockHeight
        self.delegateTo = delegateTo
        self.poxAddr = poxAddr
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case senderAddress = "sender_address"
        case type
        case status
        case tokenTransferRecipientAddress = "token_transfer_recipient_address"
        case amount
        case symbol
        case decimals
        case gasLimit = "gas_limit"
        case gasPrice = "gas_price"
        case suggestedFeeMultiplier = "suggested_fee_multiplier"
        case maxFee = "max_fee"
        case fee
        case size
        case memo
        case numberOfCycles = "number_of_cycles"
        case contractAddress = "contract_address"
        case contractName = "contract_name"
        case burnBlockHeight = "burn_block_height"
        case delegateTo = "delegate_to"
        case poxAddr = "pox_addr"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(senderAddress, forKey: .senderAddress)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(tokenTransferRecipientAddress, forKey: .tokenTransferRecipientAddress)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(decimals, forKey: .decimals)
        try container.encodeIfPresent(gasLimit, forKey: .gasLimit)
        try container.encodeIfPresent(gasPrice, forKey: .gasPrice)
        try container.encodeIfPresent(suggestedFeeMultiplier, forKey: .suggestedFeeMultiplier)
        try container.encodeIfPresent(maxFee, forKey: .maxFee)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(memo, forKey: .memo)
        try container.encodeIfPresent(numberOfCycles, forKey: .numberOfCycles)
        try container.encodeIfPresent(contractAddress, forKey: .contractAddress)
        try container.encodeIfPresent(contractName, forKey: .contractName)
        try container.encodeIfPresent(burnBlockHeight, forKey: .burnBlockHeight)
        try container.encodeIfPresent(delegateTo, forKey: .delegateTo)
        try container.encodeIfPresent(poxAddr, forKey: .poxAddr)
    }
}

