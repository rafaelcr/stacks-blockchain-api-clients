# StacksBlockchainApi::RosettaTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_identifier** | **Object** |  |  |
| **operations** | **Array&lt;Object&gt;** | List of operations |  |
| **metadata** | [**RosettaTransactionMetadata**](RosettaTransactionMetadata.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaTransaction.new(
  transaction_identifier: null,
  operations: null,
  metadata: null
)
```

