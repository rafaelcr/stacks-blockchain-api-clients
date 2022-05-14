# StacksBlockchainApi::RosettaAccountBalanceResponseCoinIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Identifier should be populated with a globally unique identifier of a Coin. In Bitcoin, this identifier would be transaction_hash:index. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaAccountBalanceResponseCoinIdentifier.new(
  identifier: null
)
```

