# stacks_blockchain_api_client.model.InboundStxTransfer

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Principal that sent this transfer | 
**amount** | **String** | Transfer amount in micro-STX as integer string | 
**memo** | **String** | Hex encoded memo bytes associated with the transfer | 
**blockHeight** | **num** | Block height at which this transfer occurred | 
**txId** | **String** | The transaction ID in which this transfer occurred | 
**transferType** | **String** | Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction | 
**txIndex** | **num** | Index of the transaction within a block | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


