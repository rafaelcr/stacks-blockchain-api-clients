

# RosettaBlock

Blocks contain an array of Transactions that occurred at a particular BlockIdentifier. A hard requirement for blocks returned by Rosetta implementations is that they MUST be inalterable: once a client has requested and received a block identified by a specific BlockIndentifier, all future calls for that same BlockIdentifier must return the same block contents.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | **Object** |  | 
**parentBlockIdentifier** | [**RosettaParentBlockIdentifier**](RosettaParentBlockIdentifier.md) |  | 
**timestamp** | **Integer** | The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second. | 
**transactions** | **List&lt;Object&gt;** | All the transactions in the block | 
**metadata** | [**RosettaBlockMetadata**](RosettaBlockMetadata.md) |  |  [optional]



