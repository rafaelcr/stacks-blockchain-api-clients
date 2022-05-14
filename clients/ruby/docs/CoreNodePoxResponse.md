# StacksBlockchainApi::CoreNodePoxResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** |  |  |
| **first_burnchain_block_height** | **Integer** |  |  |
| **min_amount_ustx** | **Integer** |  |  |
| **registration_window_length** | **Integer** |  |  |
| **rejection_fraction** | **Integer** |  |  |
| **reward_cycle_id** | **Integer** |  |  |
| **reward_cycle_length** | **Integer** |  |  |
| **rejection_votes_left_required** | **Integer** |  |  |
| **total_liquid_supply_ustx** | **Integer** |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::CoreNodePoxResponse.new(
  contract_id: null,
  first_burnchain_block_height: null,
  min_amount_ustx: null,
  registration_window_length: null,
  rejection_fraction: null,
  reward_cycle_id: null,
  reward_cycle_length: null,
  rejection_votes_left_required: null,
  total_liquid_supply_ustx: null
)
```

