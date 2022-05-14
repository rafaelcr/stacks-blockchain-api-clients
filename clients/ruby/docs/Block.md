# StacksBlockchainApi::Block

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical chain tip |  |
| **height** | **Integer** | Height of the block |  |
| **hash** | **String** | Hash representing the block |  |
| **parent_block_hash** | **String** | Hash of the parent block |  |
| **burn_block_time** | **Float** | Unix timestamp (in seconds) indicating when this block was mined. |  |
| **burn_block_time_iso** | **String** | An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined. |  |
| **burn_block_hash** | **String** | Hash of the anchor chain block |  |
| **burn_block_height** | **Integer** | Height of the anchor chain block |  |
| **miner_txid** | **String** | Anchor chain transaction ID |  |
| **parent_microblock_hash** | **String** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. |  |
| **parent_microblock_sequence** | **Integer** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. |  |
| **txs** | **Array&lt;String&gt;** | List of transactions included in the block |  |
| **microblocks_accepted** | **Array&lt;String&gt;** | List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list. |  |
| **microblocks_streamed** | **Array&lt;String&gt;** | List of microblocks that were streamed/produced by this anchor block&#39;s miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list. |  |
| **execution_cost_read_count** | **Integer** | Execution cost read count. |  |
| **execution_cost_read_length** | **Integer** | Execution cost read length. |  |
| **execution_cost_runtime** | **Integer** | Execution cost runtime. |  |
| **execution_cost_write_count** | **Integer** | Execution cost write count. |  |
| **execution_cost_write_length** | **Integer** | Execution cost write length. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::Block.new(
  canonical: null,
  height: null,
  hash: null,
  parent_block_hash: null,
  burn_block_time: null,
  burn_block_time_iso: null,
  burn_block_hash: null,
  burn_block_height: null,
  miner_txid: null,
  parent_microblock_hash: null,
  parent_microblock_sequence: null,
  txs: null,
  microblocks_accepted: null,
  microblocks_streamed: null,
  execution_cost_read_count: null,
  execution_cost_read_length: null,
  execution_cost_runtime: null,
  execution_cost_write_count: null,
  execution_cost_write_length: null
)
```

