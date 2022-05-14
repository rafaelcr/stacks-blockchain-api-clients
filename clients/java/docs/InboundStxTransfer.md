

# InboundStxTransfer

A inbound STX transfer with a memo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Principal that sent this transfer | 
**amount** | **String** | Transfer amount in micro-STX as integer string | 
**memo** | **String** | Hex encoded memo bytes associated with the transfer | 
**blockHeight** | **BigDecimal** | Block height at which this transfer occurred | 
**txId** | **String** | The transaction ID in which this transfer occurred | 
**transferType** | [**TransferTypeEnum**](#TransferTypeEnum) | Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction | 
**txIndex** | **BigDecimal** | Index of the transaction within a block | 



## Enum: TransferTypeEnum

Name | Value
---- | -----
BULK_SEND | &quot;bulk-send&quot;
STX_TRANSFER | &quot;stx-transfer&quot;



