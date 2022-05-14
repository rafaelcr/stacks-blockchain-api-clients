# stacks_blockchain_api_client.model.RosettaCurrency

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | Canonical symbol associated with a currency. | 
**decimals** | **int** | Number of decimal places in the standard unit representation of the amount. For example, BTC has 8 decimals. Note that it is not possible to represent the value of some currency in atomic units that is not base 10. | 
**metadata** | [**Object**](.md) | Any additional information related to the currency itself. For example, it would be useful to populate this object with the contract address of an ERC-20 token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


