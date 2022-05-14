# stacks_blockchain_api_client.model.Block

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to `true` if block corresponds to the canonical chain tip | 
**height** | **int** | Height of the block | 
**hash** | **String** | Hash representing the block | 
**parentBlockHash** | **String** | Hash of the parent block | 
**burnBlockTime** | **num** | Unix timestamp (in seconds) indicating when this block was mined. | 
**burnBlockTimeIso** | **String** | An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined. | 
**burnBlockHash** | **String** | Hash of the anchor chain block | 
**burnBlockHeight** | **int** | Height of the anchor chain block | 
**minerTxid** | **String** | Anchor chain transaction ID | 
**parentMicroblockHash** | **String** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**parentMicroblockSequence** | **int** | The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1. | 
**txs** | **List<String>** | List of transactions included in the block | [default to const []]
**microblocksAccepted** | **List<String>** | List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list. | [default to const []]
**microblocksStreamed** | **List<String>** | List of microblocks that were streamed/produced by this anchor block's miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list. | [default to const []]
**executionCostReadCount** | **int** | Execution cost read count. | 
**executionCostReadLength** | **int** | Execution cost read length. | 
**executionCostRuntime** | **int** | Execution cost runtime. | 
**executionCostWriteCount** | **int** | Execution cost write count. | 
**executionCostWriteLength** | **int** | Execution cost write length. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


