

# Microblock

A microblock

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **Boolean** | Set to &#x60;true&#x60; if the microblock corresponds to the canonical chain tip. | 
**microblockCanonical** | **Boolean** | Set to &#x60;true&#x60; if the microblock was not orphaned in a following anchor block. Defaults to &#x60;true&#x60; if the following anchor block has not yet been created. | 
**microblockHash** | **String** | The SHA512/256 hash of this microblock. | 
**microblockSequence** | **Integer** | A hint to describe how to order a set of microblocks. Starts at 0. | 
**microblockParentHash** | **String** | The SHA512/256 hash of the previous signed microblock in this stream. | 
**blockHeight** | **Integer** | The anchor block height that confirmed this microblock. | 
**parentBlockHeight** | **Integer** | The height of the anchor block that preceded this microblock. | 
**parentBlockHash** | **String** | The hash of the anchor block that preceded this microblock. | 
**parentBurnBlockHash** | **String** | The hash of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTime** | **Integer** | The block timestamp of the Bitcoin block that preceded this microblock. | 
**parentBurnBlockTimeIso** | **String** | The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock. | 
**parentBurnBlockHeight** | **Integer** | The height of the Bitcoin block that preceded this microblock. | 
**blockHash** | **String** | The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks | 
**txs** | **List&lt;String&gt;** | List of transactions included in the microblock | 



