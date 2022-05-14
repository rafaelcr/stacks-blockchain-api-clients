# StacksBlockchainApi::InboundStxTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Principal that sent this transfer |  |
| **amount** | **String** | Transfer amount in micro-STX as integer string |  |
| **memo** | **String** | Hex encoded memo bytes associated with the transfer |  |
| **block_height** | **Float** | Block height at which this transfer occurred |  |
| **tx_id** | **String** | The transaction ID in which this transfer occurred |  |
| **transfer_type** | **String** | Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction |  |
| **tx_index** | **Float** | Index of the transaction within a block |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::InboundStxTransfer.new(
  sender: null,
  amount: null,
  memo: null,
  block_height: null,
  tx_id: null,
  transfer_type: null,
  tx_index: null
)
```

