# stacks_blockchain_api_client.model.Microblock

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to `true` if the microblock corresponds to the canonical chain tip. | 
**microblockCanonical** | **bool** | Set to `true` if the microblock was not orphaned in a following anchor block. Defaults to `true` if the following anchor block has not yet been created. | 
**microblockHash** | **String** | The SHA512/256 hash of this microblock. | 
**microblockSequence** | **int** | A hint to describe how to order a set of microblocks. Starts at 0. | 
**microblockParentHash** | **String** | The SHA512/256 hash of the previous signed microblock in this stream. | 
**blockHeight** | **int** | The anchor block height that confirmed this microblock. | 
**parentBlockHeight** | **int** | The height of the anchor block that preceded this microblock. | 
**parentBlockHash** | **String** | The hash of the anchor block that preceded this microblock. | 
**parentBurnBlockHash** | **String** | The hash of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTime** | **int** | The block timestamp of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTimeIso** | **String** | The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock. | 
**parentBurnBlockHeight** | **int** | The height of the Bitcoin block that preceded this microblock. | 
**blockHash** | **String** | The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks | 
**txs** | **List<String>** | List of transactions included in the microblock | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


