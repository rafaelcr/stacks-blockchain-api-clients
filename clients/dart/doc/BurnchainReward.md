# stacks_blockchain_api_client.model.BurnchainReward

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
**burnAmount** | **String** | The total amount of burnchain tokens burned for this burnchain block, in the smallest unit (e.g. satoshis for Bitcoin) | 
**rewardRecipient** | **String** | The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) | 
**rewardAmount** | **String** | The amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) | 
**rewardIndex** | **int** | The index position of the reward entry, useful for ordering when there's more than one recipient per burnchain block | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


