

# BurnchainRewardSlotHolder

Reward slot holder on the burnchain

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Boolean** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip | 
**burnBlockHash** | **String** | The hash representing the burnchain block | 
**burnBlockHeight** | **Integer** | Height of the burnchain block | 
**address** | **String** | The recipient address that validly received PoX commitments, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) | 
**slotIndex** | **Integer** | The index position of the reward entry, useful for ordering when there&#39;s more than one slot per burnchain block | 



