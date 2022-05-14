# # Microblock

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to &#x60;true&#x60; if the microblock corresponds to the canonical chain tip. |
**microblock_canonical** | **bool** | Set to &#x60;true&#x60; if the microblock was not orphaned in a following anchor block. Defaults to &#x60;true&#x60; if the following anchor block has not yet been created. |
**microblock_hash** | **string** | The SHA512/256 hash of this microblock. |
**microblock_sequence** | **int** | A hint to describe how to order a set of microblocks. Starts at 0. |
**microblock_parent_hash** | **string** | The SHA512/256 hash of the previous signed microblock in this stream. |
**block_height** | **int** | The anchor block height that confirmed this microblock. |
**parent_block_height** | **int** | The height of the anchor block that preceded this microblock. |
**parent_block_hash** | **string** | The hash of the anchor block that preceded this microblock. |
**parent_burn_block_hash** | **string** | The hash of the Bitcoin block that preceded this microblock. |
**parent_burn_block_time** | **int** | The block timestamp of the Bitcoin block that preceded this microblock. |
**parent_burn_block_time_iso** | **string** | The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock. |
**parent_burn_block_height** | **int** | The height of the Bitcoin block that preceded this microblock. |
**block_hash** | **string** | The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks |
**txs** | **string[]** | List of transactions included in the microblock |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
