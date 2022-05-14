# stacks_blockchain_api_client.model.NonFungibleTokenMetadata

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokenUri** | **String** | An optional string that is a valid URI which resolves to this token's metadata. Can be empty. | 
**name** | **String** | Identifies the asset to which this token represents | 
**description** | **String** | Describes the asset to which this token represents | 
**imageUri** | **String** | A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI. | 
**imageCanonicalUri** | **String** | The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive. | 
**txId** | **String** | Tx id that deployed the contract | 
**senderAddress** | **String** | principle that deployed the contract | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


