# # Block

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to &#x60;true&#x60; if block corresponds to the canonical chain tip |
**height** | **int** | Height of the block |
**hash** | **string** | Hash representing the block |
**parent_block_hash** | **string** | Hash of the parent block |
**burn_block_time** | **float** | Unix timestamp (in seconds) indicating when this block was mined. |
**burn_block_time_iso** | **string** | An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined. |
**burn_block_hash** | **string** | Hash of the anchor chain block |
**burn_block_height** | **int** | Height of the anchor chain block |
**miner_txid** | **string** | Anchor chain transaction ID |
**parent_microblock_hash** | **string** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. |
**parent_microblock_sequence** | **int** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. |
**txs** | **string[]** | List of transactions included in the block |
**microblocks_accepted** | **string[]** | List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list. |
**microblocks_streamed** | **string[]** | List of microblocks that were streamed/produced by this anchor block&#39;s miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list. |
**execution_cost_read_count** | **int** | Execution cost read count. |
**execution_cost_read_length** | **int** | Execution cost read length. |
**execution_cost_runtime** | **int** | Execution cost runtime. |
**execution_cost_write_count** | **int** | Execution cost write count. |
**execution_cost_write_length** | **int** | Execution cost write length. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
