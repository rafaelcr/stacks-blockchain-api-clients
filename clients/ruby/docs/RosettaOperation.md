# StacksBlockchainApi::RosettaOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_identifier** | [**RosettaOperationIdentifier**](RosettaOperationIdentifier.md) |  |  |
| **related_operations** | [**Array&lt;RosettaRelatedOperation&gt;**](RosettaRelatedOperation.md) | Restrict referenced related_operations to identifier indexes &lt; the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree. | [optional] |
| **type** | **String** | The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data. |  |
| **status** | **String** | The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation. | [optional] |
| **account** | **Object** |  | [optional] |
| **amount** | **Object** |  | [optional] |
| **coin_change** | [**RosettaCoinChange**](RosettaCoinChange.md) |  | [optional] |
| **metadata** | **Object** | Operations Meta Data | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaOperation.new(
  operation_identifier: null,
  related_operations: null,
  type: null,
  status: null,
  account: null,
  amount: null,
  coin_change: null,
  metadata: null
)
```

