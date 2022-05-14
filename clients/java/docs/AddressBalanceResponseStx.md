

# AddressBalanceResponseStx

StxBalance

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
**lockHeight** | **Integer** | The STX chain block height of when the lock event occurred. Zero if no tokens are locked. | 
**burnchainLockHeight** | **Integer** | The burnchain block height of when the lock event occurred. Zero if no tokens are locked. | 
**burnchainUnlockHeight** | **Integer** | The burnchain block height of when the tokens unlock. Zero if no tokens are locked. | 



