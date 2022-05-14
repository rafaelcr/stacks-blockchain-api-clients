# StacksBlockchainApi::RosettaBlockTransactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **block_identifier** | **Object** |  |  |
| **transaction_identifier** | [**TransactionIdentifier**](TransactionIdentifier.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaBlockTransactionRequest.new(
  network_identifier: null,
  block_identifier: null,
  transaction_identifier: null
)
```

