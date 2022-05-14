# stacks_blockchain_api_client.model.RosettaNetworkOptionsResponseAllow

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operationStatuses** | [**List<RosettaOperationStatus>**](RosettaOperationStatus.md) | All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error. | [default to const []]
**operationTypes** | [**List<AnyOfstring>**](AnyOfstring.md) | All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error. | [default to const []]
**errors** | [**List<RosettaErrorNoDetails>**](RosettaErrorNoDetails.md) | All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error. | [default to const []]
**historicalBalanceLookup** | **bool** | Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


