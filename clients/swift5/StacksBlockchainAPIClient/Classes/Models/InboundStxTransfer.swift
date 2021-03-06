//
// InboundStxTransfer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A inbound STX transfer with a memo */
public struct InboundStxTransfer: Codable, JSONEncodable, Hashable {

    public enum TransferType: String, Codable, CaseIterable {
        case bulkSend = "bulk-send"
        case stxTransfer = "stx-transfer"
    }
    /** Principal that sent this transfer */
    public var sender: String
    /** Transfer amount in micro-STX as integer string */
    public var amount: String
    /** Hex encoded memo bytes associated with the transfer */
    public var memo: String
    /** Block height at which this transfer occurred */
    public var blockHeight: Double
    /** The transaction ID in which this transfer occurred */
    public var txId: String
    /** Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction */
    public var transferType: TransferType
    /** Index of the transaction within a block */
    public var txIndex: Double

    public init(sender: String, amount: String, memo: String, blockHeight: Double, txId: String, transferType: TransferType, txIndex: Double) {
        self.sender = sender
        self.amount = amount
        self.memo = memo
        self.blockHeight = blockHeight
        self.txId = txId
        self.transferType = transferType
        self.txIndex = txIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sender
        case amount
        case memo
        case blockHeight = "block_height"
        case txId = "tx_id"
        case transferType = "transfer_type"
        case txIndex = "tx_index"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sender, forKey: .sender)
        try container.encode(amount, forKey: .amount)
        try container.encode(memo, forKey: .memo)
        try container.encode(blockHeight, forKey: .blockHeight)
        try container.encode(txId, forKey: .txId)
        try container.encode(transferType, forKey: .transferType)
        try container.encode(txIndex, forKey: .txIndex)
    }
}

