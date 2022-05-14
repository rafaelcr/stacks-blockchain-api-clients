# StacksBlockchainApi::BurnchainRewardsTotal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_recipient** | **String** | The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) |  |
| **reward_amount** | **String** | The total amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BurnchainRewardsTotal.new(
  reward_recipient: null,
  reward_amount: null
)
```

