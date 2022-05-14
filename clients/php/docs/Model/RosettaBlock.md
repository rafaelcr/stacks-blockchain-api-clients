# # RosettaBlock

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_identifier** | **object** |  |
**parent_block_identifier** | [**\StacksBlockchainApi\Model\RosettaParentBlockIdentifier**](RosettaParentBlockIdentifier.md) |  |
**timestamp** | **int** | The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second. |
**transactions** | **object[]** | All the transactions in the block |
**metadata** | [**\StacksBlockchainApi\Model\RosettaBlockMetadata**](RosettaBlockMetadata.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
