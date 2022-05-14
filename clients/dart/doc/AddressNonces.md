# stacks_blockchain_api_client.model.AddressNonces

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastMempoolTxNonce** | **int** | The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address. | 
**lastExecutedTxNonce** | **int** | The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address. | 
**possibleNextNonce** | **int** | The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called. | 
**detectedMissingNonces** | **List<int>** | Nonces that appear to be missing and likely causing a mempool transaction to be stuck. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


