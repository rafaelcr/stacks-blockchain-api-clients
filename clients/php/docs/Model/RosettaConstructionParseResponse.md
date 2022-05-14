# # RosettaConstructionParseResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operations** | [**\StacksBlockchainApi\Model\RosettaOperation[]**](RosettaOperation.md) |  |
**signers** | [**AnyOfString[]**](AnyOfString.md) | [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty. | [optional]
**account_identifier_signers** | **object[]** |  | [optional]
**metadata** | **object** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
