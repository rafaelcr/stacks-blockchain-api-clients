# stacks_blockchain_api_client.model.RosettaOptions

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderAddress** | **String** | sender's address  | [optional] 
**type** | **String** | Type of operation e.g transfer | [optional] 
**status** | [**Object**](.md) | This value indicates the state of the operations | [optional] 
**tokenTransferRecipientAddress** | **String** | Recipient's address | [optional] 
**amount** | **String** | Amount to be transfered. | [optional] 
**symbol** | **String** | Currency symbol e.g STX | [optional] 
**decimals** | **int** | Number of decimal places | [optional] 
**gasLimit** | **num** | Maximum price a user is willing to pay. | [optional] 
**gasPrice** | **num** | Cost necessary to perform a transaction on the network | [optional] 
**suggestedFeeMultiplier** | **num** |  A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. | [optional] 
**maxFee** | **String** | Maximum fee user is willing to pay | [optional] 
**fee** | **String** | Fee for this transaction | [optional] 
**size** | **int** | Transaction approximative size (used to calculate total fee). | [optional] 
**memo** | **String** | STX token transfer memo. | [optional] 
**numberOfCycles** | **int** | Number of cycles when stacking. | [optional] 
**contractAddress** | **String** | Address of the contract to call. | [optional] 
**contractName** | **String** | Name of the contract to call. | [optional] 
**burnBlockHeight** | **int** | Set the burnchain (BTC) block for stacking lock to start. | [optional] 
**delegateTo** | **String** | Delegator address for when calling `delegate-stacking`. | [optional] 
**poxAddr** | **String** | The reward address for stacking transaction. It should be a valid Bitcoin address | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


