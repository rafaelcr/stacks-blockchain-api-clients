# stacks_blockchain_api_client.model.BurnchainRewardSlotHolder

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to `true` if block corresponds to the canonical burchchain tip | 
**burnBlockHash** | **String** | The hash representing the burnchain block | 
**burnBlockHeight** | **int** | Height of the burnchain block | 
**address** | **String** | The recipient address that validly received PoX commitments, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) | 
**slotIndex** | **int** | The index position of the reward entry, useful for ordering when there's more than one slot per burnchain block | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


