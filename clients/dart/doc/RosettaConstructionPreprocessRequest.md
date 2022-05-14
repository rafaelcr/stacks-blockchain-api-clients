# stacks_blockchain_api_client.model.RosettaConstructionPreprocessRequest

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | [**Object**](Object.md) |  | 
**operations** | [**List<Object>**](Object.md) |  | [default to const []]
**metadata** | [**Object**](.md) |  | [optional] 
**maxFee** | [**List<RosettaMaxFeeAmount>**](RosettaMaxFeeAmount.md) |  | [optional] [default to const []]
**suggestedFeeMultiplier** | **int** |  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


