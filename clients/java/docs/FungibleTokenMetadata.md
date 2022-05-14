

# FungibleTokenMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokenUri** | **String** | An optional string that is a valid URI which resolves to this token&#39;s metadata. Can be empty. | 
**name** | **String** | Identifies the asset to which this token represents | 
**description** | **String** | Describes the asset to which this token represents | 
**imageUri** | **String** | A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI. | 
**imageCanonicalUri** | **String** | The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive. | 
**symbol** | **String** | A shorter representation of a token. This is sometimes referred to as a \&quot;ticker\&quot;. Examples: \&quot;STX\&quot;, \&quot;COOL\&quot;, etc. Typically, a token could be referred to as $SYMBOL when referencing it in writing. | 
**decimals** | **BigDecimal** | The number of decimal places in a token. | 
**txId** | **String** | Tx id that deployed the contract | 
**senderAddress** | **String** | principle that deployed the contract | 



