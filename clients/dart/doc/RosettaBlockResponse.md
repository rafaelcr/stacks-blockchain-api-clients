# stacks_blockchain_api_client.model.RosettaBlockResponse

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block** | [**RosettaBlock**](RosettaBlock.md) |  | [optional] 
**otherTransactions** | [**List<OtherTransactionIdentifier>**](OtherTransactionIdentifier.md) | Some blockchains may require additional transactions to be fetched that weren't returned in the block response (ex: block only returns transaction hashes). For blockchains with a lot of transactions in each block, this can be very useful as consumers can concurrently fetch all transactions returned. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


