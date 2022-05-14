# StacksBlockchainApi::PostCoreNodeTransactionsError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | The error |  |
| **reason** | **String** | The reason for the error |  |
| **reason_data** | **Object** | More details about the reason |  |
| **txid** | **String** | The relevant transaction id |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::PostCoreNodeTransactionsError.new(
  error: null,
  reason: null,
  reason_data: null,
  txid: null
)
```

