# Block

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Bool** | Set to &#x60;true&#x60; if block corresponds to the canonical chain tip | 
**height** | **Int** | Height of the block | 
**hash** | **String** | Hash representing the block | 
**parentBlockHash** | **String** | Hash of the parent block | 
**burnBlockTime** | **Double** | Unix timestamp (in seconds) indicating when this block was mined. | 
**burnBlockTimeIso** | **String** | An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined. | 
**burnBlockHash** | **String** | Hash of the anchor chain block | 
**burnBlockHeight** | **Int** | Height of the anchor chain block | 
**minerTxid** | **String** | Anchor chain transaction ID | 
**parentMicroblockHash** | **String** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**parentMicroblockSequence** | **Int** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**txs** | **[String]** | List of transactions included in the block | 
**microblocksAccepted** | **[String]** | List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list. | 
**microblocksStreamed** | **[String]** | List of microblocks that were streamed/produced by this anchor block&#39;s miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list. | 
**executionCostReadCount** | **Int** | Execution cost read count. | 
**executionCostReadLength** | **Int** | Execution cost read length. | 
**executionCostRuntime** | **Int** | Execution cost runtime. | 
**executionCostWriteCount** | **Int** | Execution cost write count. | 
**executionCostWriteLength** | **Int** | Execution cost write length. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


