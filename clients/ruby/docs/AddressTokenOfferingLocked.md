# StacksBlockchainApi::AddressTokenOfferingLocked

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_locked** | **String** | Micro-STX amount still locked at current block height. |  |
| **total_unlocked** | **String** | Micro-STX amount unlocked at current block height. |  |
| **unlock_schedule** | [**Array&lt;AddressUnlockSchedule&gt;**](AddressUnlockSchedule.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressTokenOfferingLocked.new(
  total_locked: null,
  total_unlocked: null,
  unlock_schedule: null
)
```

