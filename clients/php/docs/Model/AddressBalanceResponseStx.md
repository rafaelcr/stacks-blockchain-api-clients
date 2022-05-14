# # AddressBalanceResponseStx

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **string** |  |
**total_sent** | **string** |  |
**total_received** | **string** |  |
**total_fees_sent** | **string** |  |
**total_miner_rewards_received** | **string** |  |
**lock_tx_id** | **string** | The transaction where the lock event occurred. Empty if no tokens are locked. |
**locked** | **string** | The amount of locked STX, as string quoted micro-STX. Zero if no tokens are locked. |
**lock_height** | **int** | The STX chain block height of when the lock event occurred. Zero if no tokens are locked. |
**burnchain_lock_height** | **int** | The burnchain block height of when the lock event occurred. Zero if no tokens are locked. |
**burnchain_unlock_height** | **int** | The burnchain block height of when the tokens unlock. Zero if no tokens are locked. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
