# # RosettaConstructionPreprocessRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network_identifier** | **object** |  |
**operations** | **object[]** |  |
**metadata** | **object** |  | [optional]
**max_fee** | [**\StacksBlockchainApi\Model\RosettaMaxFeeAmount[]**](RosettaMaxFeeAmount.md) |  | [optional]
**suggested_fee_multiplier** | **int** | The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
