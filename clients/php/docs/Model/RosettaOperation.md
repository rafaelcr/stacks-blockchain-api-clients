# # RosettaOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation_identifier** | [**\StacksBlockchainApi\Model\RosettaOperationIdentifier**](RosettaOperationIdentifier.md) |  |
**related_operations** | [**\StacksBlockchainApi\Model\RosettaRelatedOperation[]**](RosettaRelatedOperation.md) | Restrict referenced related_operations to identifier indexes &lt; the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree. | [optional]
**type** | **string** | The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data. |
**status** | **string** | The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation. | [optional]
**account** | **object** |  | [optional]
**amount** | **object** |  | [optional]
**coin_change** | [**\StacksBlockchainApi\Model\RosettaCoinChange**](RosettaCoinChange.md) |  | [optional]
**metadata** | **object** | Operations Meta Data | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
