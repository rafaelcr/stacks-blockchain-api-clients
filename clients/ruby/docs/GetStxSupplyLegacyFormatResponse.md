# StacksBlockchainApi::GetStxSupplyLegacyFormatResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unlocked_percent** | **String** | String quoted decimal number of the percentage of STX that have unlocked |  |
| **total_stacks** | **String** | String quoted decimal number of the total possible number of STX |  |
| **total_stacks_formatted** | **String** | Same as &#x60;totalStacks&#x60; but formatted with comma thousands separators |  |
| **unlocked_supply** | **String** | String quoted decimal number of the STX that have been mined or unlocked |  |
| **unlocked_supply_formatted** | **String** | Same as &#x60;unlockedSupply&#x60; but formatted with comma thousands separators |  |
| **block_height** | **String** | The block height at which this information was queried |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::GetStxSupplyLegacyFormatResponse.new(
  unlocked_percent: null,
  total_stacks: null,
  total_stacks_formatted: null,
  unlocked_supply: null,
  unlocked_supply_formatted: null,
  block_height: null
)
```

