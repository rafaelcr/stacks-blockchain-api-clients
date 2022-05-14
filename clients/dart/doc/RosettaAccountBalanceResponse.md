# stacks_blockchain_api_client.model.RosettaAccountBalanceResponse

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | [**Object**](Object.md) |  | 
**balances** | [**List<RosettaAmount>**](RosettaAmount.md) | A single account balance may have multiple currencies | [default to const []]
**coins** | [**List<RosettaCoin>**](RosettaCoin.md) | If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don't need to maintain their own indexer to track their UTXOs. | [optional] [default to const []]
**metadata** | [**RosettaAccountBalanceResponseMetadata**](RosettaAccountBalanceResponseMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


