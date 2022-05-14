

# RosettaConstructionParseResponse

RosettaConstructionParseResponse contains an array of operations that occur in a transaction blob. This should match the array of operations provided to /construction/preprocess and /construction/payloads.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operations** | [**List&lt;RosettaOperation&gt;**](RosettaOperation.md) |  | 
**signers** | [**List&lt;AnyOfstring&gt;**](AnyOfstring.md) | [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty. |  [optional]
**accountIdentifierSigners** | **List&lt;Object&gt;** |  |  [optional]
**metadata** | **Object** |  |  [optional]



