# StacksBlockchainApi::RosettaCoinChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coin_identifier** | [**RosettaAccountBalanceResponseCoinIdentifier**](RosettaAccountBalanceResponseCoinIdentifier.md) |  |  |
| **coin_action** | **String** | CoinActions are different state changes that a Coin can undergo. When a Coin is created, it is coin_created. When a Coin is spent, it is coin_spent. It is assumed that a single Coin cannot be created or spent more than once. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaCoinChange.new(
  coin_identifier: null,
  coin_action: null
)
```

