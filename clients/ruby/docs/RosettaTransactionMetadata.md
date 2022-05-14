# StacksBlockchainApi::RosettaTransactionMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** | STX token transfer memo. | [optional] |
| **size** | **Integer** | The Size | [optional] |
| **lock_time** | **Integer** | The locktime | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaTransactionMetadata.new(
  memo: null,
  size: null,
  lock_time: null
)
```

