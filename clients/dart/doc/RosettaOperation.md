# stacks_blockchain_api_client.model.RosettaOperation

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operationIdentifier** | [**RosettaOperationIdentifier**](RosettaOperationIdentifier.md) |  | 
**relatedOperations** | [**List<RosettaRelatedOperation>**](RosettaRelatedOperation.md) | Restrict referenced related_operations to identifier indexes < the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree. | [optional] [default to const []]
**type** | **String** | The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data. | 
**status** | **String** | The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation. | [optional] 
**account** | [**Object**](Object.md) |  | [optional] 
**amount** | [**Object**](Object.md) |  | [optional] 
**coinChange** | [**RosettaCoinChange**](RosettaCoinChange.md) |  | [optional] 
**metadata** | [**Object**](.md) | Operations Meta Data | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


