# StacksBlockchainApi::Microblock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canonical** | **Boolean** | Set to &#x60;true&#x60; if the microblock corresponds to the canonical chain tip. |  |
| **microblock_canonical** | **Boolean** | Set to &#x60;true&#x60; if the microblock was not orphaned in a following anchor block. Defaults to &#x60;true&#x60; if the following anchor block has not yet been created. |  |
| **microblock_hash** | **String** | The SHA512/256 hash of this microblock. |  |
| **microblock_sequence** | **Integer** | A hint to describe how to order a set of microblocks. Starts at 0. |  |
| **microblock_parent_hash** | **String** | The SHA512/256 hash of the previous signed microblock in this stream. |  |
| **block_height** | **Integer** | The anchor block height that confirmed this microblock. |  |
| **parent_block_height** | **Integer** | The height of the anchor block that preceded this microblock. |  |
| **parent_block_hash** | **String** | The hash of the anchor block that preceded this microblock. |  |
| **parent_burn_block_hash** | **String** | The hash of the Bitcoin block that preceded this microblock. |  |
| **parent_burn_block_time** | **Integer** | The block timestamp of the Bitcoin block that preceded this microblock. |  |
| **parent_burn_block_time_iso** | **String** | The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock. |  |
| **parent_burn_block_height** | **Integer** | The height of the Bitcoin block that preceded this microblock. |  |
| **block_hash** | **String** | The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks |  |
| **txs** | **Array&lt;String&gt;** | List of transactions included in the microblock |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::Microblock.new(
  canonical: null,
  microblock_canonical: null,
  microblock_hash: null,
  microblock_sequence: null,
  microblock_parent_hash: null,
  block_height: null,
  parent_block_height: null,
  parent_block_hash: null,
  parent_burn_block_hash: null,
  parent_burn_block_time: null,
  parent_burn_block_time_iso: null,
  parent_burn_block_height: null,
  block_hash: null,
  txs: null
)
```

