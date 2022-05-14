

# RosettaConstructionMetadataRequest

A ConstructionMetadataRequest is utilized to get information required to construct a transaction. The Options object used to specify which metadata to return is left purposely unstructured to allow flexibility for implementers. Optionally, the request can also include an array of PublicKeys associated with the AccountIdentifiers returned in ConstructionPreprocessResponse.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**options** | [**RosettaOptions**](RosettaOptions.md) |  | 
**publicKeys** | **List&lt;Object&gt;** |  |  [optional]



