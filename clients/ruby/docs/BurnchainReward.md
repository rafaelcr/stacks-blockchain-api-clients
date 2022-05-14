# StacksBlockchainApi::BurnchainReward

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip |  |
| **burn_block_hash** | **String** | The hash representing the burnchain block |  |
| **burn_block_height** | **Integer** | Height of the burnchain block |  |
| **burn_amount** | **String** | The total amount of burnchain tokens burned for this burnchain block, in the smallest unit (e.g. satoshis for Bitcoin) |  |
| **reward_recipient** | **String** | The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) |  |
| **reward_amount** | **String** | The amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) |  |
| **reward_index** | **Integer** | The index position of the reward entry, useful for ordering when there&#39;s more than one recipient per burnchain block |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BurnchainReward.new(
  canonical: null,
  burn_block_hash: null,
  burn_block_height: null,
  burn_amount: null,
  reward_recipient: null,
  reward_amount: null,
  reward_index: null
)
```

