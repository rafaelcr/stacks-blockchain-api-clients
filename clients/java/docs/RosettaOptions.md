

# RosettaOptions

The options that will be sent directly to /construction/metadata by the caller.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderAddress** | **String** | sender&#39;s address  |  [optional]
**type** | **String** | Type of operation e.g transfer |  [optional]
**status** | **Object** | This value indicates the state of the operations |  [optional]
**tokenTransferRecipientAddress** | **String** | Recipient&#39;s address |  [optional]
**amount** | **String** | Amount to be transfered. |  [optional]
**symbol** | **String** | Currency symbol e.g STX |  [optional]
**decimals** | **Integer** | Number of decimal places |  [optional]
**gasLimit** | **BigDecimal** | Maximum price a user is willing to pay. |  [optional]
**gasPrice** | **BigDecimal** | Cost necessary to perform a transaction on the network |  [optional]
**suggestedFeeMultiplier** | **BigDecimal** |  A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. |  [optional]
**maxFee** | **String** | Maximum fee user is willing to pay |  [optional]
**fee** | **String** | Fee for this transaction |  [optional]
**size** | **Integer** | Transaction approximative size (used to calculate total fee). |  [optional]
**memo** | **String** | STX token transfer memo. |  [optional]
**numberOfCycles** | **Integer** | Number of cycles when stacking. |  [optional]
**contractAddress** | **String** | Address of the contract to call. |  [optional]
**contractName** | **String** | Name of the contract to call. |  [optional]
**burnBlockHeight** | **Integer** | Set the burnchain (BTC) block for stacking lock to start. |  [optional]
**delegateTo** | **String** | Delegator address for when calling &#x60;delegate-stacking&#x60;. |  [optional]
**poxAddr** | **String** | The reward address for stacking transaction. It should be a valid Bitcoin address |  [optional]



