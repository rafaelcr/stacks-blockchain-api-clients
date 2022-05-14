

# RosettaConstructionPayloadsRequest

ConstructionPayloadsRequest is the request to /construction/payloads. It contains the network, a slice of operations, and arbitrary metadata that was returned by the call to /construction/metadata. Optionally, the request can also include an array of PublicKeys associated with the AccountIdentifiers returned in ConstructionPreprocessResponse.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**operations** | **List&lt;Object&gt;** |  | 
**publicKeys** | **List&lt;Object&gt;** |  |  [optional]
**metadata** | [**RosettaConstructionMetadataResponseMetadata**](RosettaConstructionMetadataResponseMetadata.md) |  |  [optional]



