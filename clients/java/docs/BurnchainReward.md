

# BurnchainReward

Reward payment made on the burnchain

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip | 
**burnBlockHash** | **String** | The hash representing the burnchain block | 
**burnBlockHeight** | **Integer** | Height of the burnchain block | 
**burnAmount** | **String** | The total amount of burnchain tokens burned for this burnchain block, in the smallest unit (e.g. satoshis for Bitcoin) | 
**rewardRecipient** | **String** | The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) | 
**rewardAmount** | **String** | The amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin) | 
**rewardIndex** | **Integer** | The index position of the reward entry, useful for ordering when there&#39;s more than one recipient per burnchain block | 



