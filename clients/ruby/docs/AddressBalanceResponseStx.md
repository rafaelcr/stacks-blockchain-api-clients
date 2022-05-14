# StacksBlockchainApi::AddressBalanceResponseStx

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **String** |  |  |
| **total_sent** | **String** |  |  |
| **total_received** | **String** |  |  |
| **total_fees_sent** | **String** |  |  |
| **total_miner_rewards_received** | **String** |  |  |
| **lock_tx_id** | **String** | The transaction where the lock event occurred. Empty if no tokens are locked. |  |
| **locked** | **String** | The amount of locked STX, as string quoted micro-STX. Zero if no tokens are locked. |  |
| **lock_height** | **Integer** | The STX chain block height of when the lock event occurred. Zero if no tokens are locked. |  |
| **burnchain_lock_height** | **Integer** | The burnchain block height of when the lock event occurred. Zero if no tokens are locked. |  |
| **burnchain_unlock_height** | **Integer** | The burnchain block height of when the tokens unlock. Zero if no tokens are locked. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressBalanceResponseStx.new(
  balance: null,
  total_sent: null,
  total_received: null,
  total_fees_sent: null,
  total_miner_rewards_received: null,
  lock_tx_id: null,
  locked: null,
  lock_height: null,
  burnchain_lock_height: null,
  burnchain_unlock_height: null
)
```

