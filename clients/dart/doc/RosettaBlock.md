# stacks_blockchain_api_client.model.RosettaBlock

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | [**Object**](Object.md) |  | 
**parentBlockIdentifier** | [**RosettaParentBlockIdentifier**](RosettaParentBlockIdentifier.md) |  | 
**timestamp** | **int** | The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second. | 
**transactions** | [**List<Object>**](Object.md) | All the transactions in the block | [default to const []]
**metadata** | [**RosettaBlockMetadata**](RosettaBlockMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


