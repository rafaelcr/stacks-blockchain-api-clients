# StacksBlockchainApi::GetStxSupplyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unlocked_percent** | **String** | String quoted decimal number of the percentage of STX that have unlocked |  |
| **total_stx** | **String** | String quoted decimal number of the total possible number of STX |  |
| **unlocked_stx** | **String** | String quoted decimal number of the STX that have been mined or unlocked |  |
| **block_height** | **Integer** | The block height at which this information was queried |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::GetStxSupplyResponse.new(
  unlocked_percent: null,
  total_stx: null,
  unlocked_stx: null,
  block_height: null
)
```

