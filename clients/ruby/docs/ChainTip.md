# StacksBlockchainApi::ChainTip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_height** | **Integer** | the current block height |  |
| **block_hash** | **String** | the current block hash |  |
| **index_block_hash** | **String** | the current index block hash |  |
| **microblock_hash** | **String** | the current microblock hash | [optional] |
| **microblock_sequence** | **Integer** | the current microblock sequence number | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::ChainTip.new(
  block_height: null,
  block_hash: null,
  index_block_hash: null,
  microblock_hash: null,
  microblock_sequence: null
)
```

