# RosettaBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | [**AnyCodable**](AnyCodable.md) |  | 
**parentBlockIdentifier** | [**RosettaParentBlockIdentifier**](RosettaParentBlockIdentifier.md) |  | 
**timestamp** | **Int** | The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second. | 
**transactions** | [AnyCodable] | All the transactions in the block | 
**metadata** | [**RosettaBlockMetadata**](RosettaBlockMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


