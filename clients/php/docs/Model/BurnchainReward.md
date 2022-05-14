# # BurnchainReward

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **bool** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip |
**burn_block_hash** | **string** | The hash representing the burnchain block |
**burn_block_height** | **int** | Height of the burnchain block |
**burn_amount** | **string** | The total amount of burnchain tokens burned for this burnchain block, in the smallest unit (e.g. satoshis for Bitcoin) |
**reward_recipient** | **string** | The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) |
**reward_amount** | **string** | The amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) |
**reward_index** | **int** | The index position of the reward entry, useful for ordering when there&#39;s more than one recipient per burnchain block |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
