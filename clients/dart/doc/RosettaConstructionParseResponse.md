# stacks_blockchain_api_client.model.RosettaConstructionParseResponse

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operations** | [**List<RosettaOperation>**](RosettaOperation.md) |  | [default to const []]
**signers** | [**List<AnyOfstring>**](AnyOfstring.md) | [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty. | [optional] [default to const []]
**accountIdentifierSigners** | [**List<Object>**](Object.md) |  | [optional] [default to const []]
**metadata** | [**Object**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


