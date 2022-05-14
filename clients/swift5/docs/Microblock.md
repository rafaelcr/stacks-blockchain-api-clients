# Microblock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Bool** | Set to &#x60;true&#x60; if the microblock corresponds to the canonical chain tip. | 
**microblockCanonical** | **Bool** | Set to &#x60;true&#x60; if the microblock was not orphaned in a following anchor block. Defaults to &#x60;true&#x60; if the following anchor block has not yet been created. | 
**microblockHash** | **String** | The SHA512/256 hash of this microblock. | 
**microblockSequence** | **Int** | A hint to describe how to order a set of microblocks. Starts at 0. | 
**microblockParentHash** | **String** | The SHA512/256 hash of the previous signed microblock in this stream. | 
**blockHeight** | **Int** | The anchor block height that confirmed this microblock. | 
**parentBlockHeight** | **Int** | The height of the anchor block that preceded this microblock. | 
**parentBlockHash** | **String** | The hash of the anchor block that preceded this microblock. | 
**parentBurnBlockHash** | **String** | The hash of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTime** | **Int** | The block timestamp of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTimeIso** | **String** | The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock. | 
**parentBurnBlockHeight** | **Int** | The height of the Bitcoin block that preceded this microblock. | 
**blockHash** | **String** | The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks | 
**txs** | **[String]** | List of transactions included in the microblock | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


