# # RosettaOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_address** | **string** | sender&#39;s address | [optional]
**type** | **string** | Type of operation e.g transfer | [optional]
**status** | **mixed** | This value indicates the state of the operations | [optional]
**token_transfer_recipient_address** | **string** | Recipient&#39;s address | [optional]
**amount** | **string** | Amount to be transfered. | [optional]
**symbol** | **string** | Currency symbol e.g STX | [optional]
**decimals** | **int** | Number of decimal places | [optional]
**gas_limit** | **float** | Maximum price a user is willing to pay. | [optional]
**gas_price** | **float** | Cost necessary to perform a transaction on the network | [optional]
**suggested_fee_multiplier** | **float** | A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. | [optional]
**max_fee** | **string** | Maximum fee user is willing to pay | [optional]
**fee** | **string** | Fee for this transaction | [optional]
**size** | **int** | Transaction approximative size (used to calculate total fee). | [optional]
**memo** | **string** | STX token transfer memo. | [optional]
**number_of_cycles** | **int** | Number of cycles when stacking. | [optional]
**contract_address** | **string** | Address of the contract to call. | [optional]
**contract_name** | **string** | Name of the contract to call. | [optional]
**burn_block_height** | **int** | Set the burnchain (BTC) block for stacking lock to start. | [optional]
**delegate_to** | **string** | Delegator address for when calling &#x60;delegate-stacking&#x60;. | [optional]
**pox_addr** | **string** | The reward address for stacking transaction. It should be a valid Bitcoin address | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
