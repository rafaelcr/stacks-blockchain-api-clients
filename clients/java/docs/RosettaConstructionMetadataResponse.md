

# RosettaConstructionMetadataResponse

The ConstructionMetadataResponse returns network-specific metadata used for transaction construction. Optionally, the implementer can return the suggested fee associated with the transaction being constructed. The caller may use this info to adjust the intent of the transaction or to create a transaction with a different account that can pay the suggested fee. Suggested fee is an array in case fee payment must occur in multiple currencies.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**RosettaConstructionMetadataResponseMetadata**](RosettaConstructionMetadataResponseMetadata.md) |  | 
**suggestedFee** | **List&lt;Object&gt;** |  |  [optional]



