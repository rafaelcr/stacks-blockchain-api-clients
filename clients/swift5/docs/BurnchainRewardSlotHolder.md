# BurnchainRewardSlotHolder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Bool** | Set to &#x60;true&#x60; if block corresponds to the canonical burchchain tip | 
**burnBlockHash** | **String** | The hash representing the burnchain block | 
**burnBlockHeight** | **Int** | Height of the burnchain block | 
**address** | **String** | The recipient address that validly received PoX commitments, in the format native to the burnchain (e.g. B58 encoded for Bitcoin) | 
**slotIndex** | **Int** | The index position of the reward entry, useful for ordering when there&#39;s more than one slot per burnchain block | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


