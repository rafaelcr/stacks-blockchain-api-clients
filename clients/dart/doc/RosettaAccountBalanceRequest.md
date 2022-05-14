# stacks_blockchain_api_client.model.RosettaAccountBalanceRequest

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | [**Object**](Object.md) |  | 
**accountIdentifier** | [**RosettaAccount**](RosettaAccount.md) |  | 
**blockIdentifier** | [**AnyOfobjectobject**](AnyOfobjectobject.md) | When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


