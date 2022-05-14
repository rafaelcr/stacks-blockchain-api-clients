

# Block

A block

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical chain tip | 
**height** | **Integer** | Height of the block | 
**hash** | **String** | Hash representing the block | 
**parentBlockHash** | **String** | Hash of the parent block | 
**burnBlockTime** | **BigDecimal** | Unix timestamp (in seconds) indicating when this block was mined. | 
**burnBlockTimeIso** | **String** | An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined. | 
**burnBlockHash** | **String** | Hash of the anchor chain block | 
**burnBlockHeight** | **Integer** | Height of the anchor chain block | 
**minerTxid** | **String** | Anchor chain transaction ID | 
**parentMicroblockHash** | **String** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**parentMicroblockSequence** | **Integer** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**txs** | **List&lt;String&gt;** | List of transactions included in the block | 
**microblocksAccepted** | **List&lt;String&gt;** | List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list. | 
**microblocksStreamed** | **List&lt;String&gt;** | List of microblocks that were streamed/produced by this anchor block&#39;s miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list. | 
**executionCostReadCount** | **Integer** | Execution cost read count. | 
**executionCostReadLength** | **Integer** | Execution cost read length. | 
**executionCostRuntime** | **Integer** | Execution cost runtime. | 
**executionCostWriteCount** | **Integer** | Execution cost write count. | 
**executionCostWriteLength** | **Integer** | Execution cost write length. | 



