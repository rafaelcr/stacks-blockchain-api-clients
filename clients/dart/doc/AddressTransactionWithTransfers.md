# stacks_blockchain_api_client.model.AddressTransactionWithTransfers

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tx** | [**Object**](Object.md) |  | 
**stxSent** | **String** | Total sent from the given address, including the tx fee, in micro-STX as an integer string. | 
**stxReceived** | **String** | Total received by the given address in micro-STX as an integer string. | 
**stxTransfers** | [**List<AddressTransactionWithTransfersStxTransfers>**](AddressTransactionWithTransfersStxTransfers.md) |  | [default to const []]
**ftTransfers** | [**List<AddressTransactionWithTransfersFtTransfers>**](AddressTransactionWithTransfersFtTransfers.md) |  | [optional] [default to const []]
**nftTransfers** | [**List<AddressTransactionWithTransfersNftTransfers>**](AddressTransactionWithTransfersNftTransfers.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


