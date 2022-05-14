# stacks_blockchain_api_client.model.RosettaErrorNoDetails

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **int** | Code is a network-specific error code. If desired, this code can be equivalent to an HTTP status code. | 
**message** | **String** | Message is a network-specific error message. The message MUST NOT change for a given code. In particular, this means that any contextual information should be included in the details field. | 
**retriable** | **bool** | An error is retriable if the same request may succeed if submitted again. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


