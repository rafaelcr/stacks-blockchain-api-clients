# AddressBalanceResponseStx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **String** |  | 
**totalSent** | **String** |  | 
**totalReceived** | **String** |  | 
**totalFeesSent** | **String** |  | 
**totalMinerRewardsReceived** | **String** |  | 
**lockTxId** | **String** | The transaction where the lock event occurred. Empty if no tokens are locked. | 
**locked** | **String** | The amount of locked STX, as string quoted micro-STX. Zero if no tokens are locked. | 
**lockHeight** | **Int** | The STX chain block height of when the lock event occurred. Zero if no tokens are locked. | 
**burnchainLockHeight** | **Int** | The burnchain block height of when the lock event occurred. Zero if no tokens are locked. | 
**burnchainUnlockHeight** | **Int** | The burnchain block height of when the tokens unlock. Zero if no tokens are locked. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


