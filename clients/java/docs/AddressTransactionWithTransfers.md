

# AddressTransactionWithTransfers

Transaction with STX transfers for a given address

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tx** | **Object** |  | 
**stxSent** | **String** | Total sent from the given address, including the tx fee, in micro-STX as an integer string. | 
**stxReceived** | **String** | Total received by the given address in micro-STX as an integer string. | 
**stxTransfers** | [**List&lt;AddressTransactionWithTransfersStxTransfers&gt;**](AddressTransactionWithTransfersStxTransfers.md) |  | 
**ftTransfers** | [**List&lt;AddressTransactionWithTransfersFtTransfers&gt;**](AddressTransactionWithTransfersFtTransfers.md) |  |  [optional]
**nftTransfers** | [**List&lt;AddressTransactionWithTransfersNftTransfers&gt;**](AddressTransactionWithTransfersNftTransfers.md) |  |  [optional]



