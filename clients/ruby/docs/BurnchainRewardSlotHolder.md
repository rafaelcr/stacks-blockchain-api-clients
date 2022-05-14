# StacksBlockchainApi::BurnchainRewardSlotHolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip |  |
| **burn_block_hash** | **String** | The hash representing the burnchain block |  |
| **burn_block_height** | **Integer** | Height of the burnchain block |  |
| **address** | **String** | The recipient address that validly received PoX commitments, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) |  |
| **slot_index** | **Integer** | The index position of the reward entry, useful for ordering when there&#39;s more than one slot per burnchain block |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BurnchainRewardSlotHolder.new(
  canonical: null,
  burn_block_hash: null,
  burn_block_height: null,
  address: null,
  slot_index: null
)
```

