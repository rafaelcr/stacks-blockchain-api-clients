

# RosettaConstructionPreprocessRequest

ConstructionPreprocessRequest is passed to the /construction/preprocess endpoint so that a Rosetta implementation can determine which metadata it needs to request for construction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**operations** | **List&lt;Object&gt;** |  | 
**metadata** | **Object** |  |  [optional]
**maxFee** | [**List&lt;RosettaMaxFeeAmount&gt;**](RosettaMaxFeeAmount.md) |  |  [optional]
**suggestedFeeMultiplier** | **Integer** |  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided). |  [optional]



