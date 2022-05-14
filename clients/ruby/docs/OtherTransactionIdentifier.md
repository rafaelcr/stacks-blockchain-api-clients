# StacksBlockchainApi::OtherTransactionIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Any transactions that are attributable only to a block (ex: a block event) should use the hash of the block as the identifier. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::OtherTransactionIdentifier.new(
  hash: null
)
```

