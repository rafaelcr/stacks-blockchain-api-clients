# StacksBlockchainApi::FungibleTokenMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_uri** | **String** | An optional string that is a valid URI which resolves to this token&#39;s metadata. Can be empty. |  |
| **name** | **String** | Identifies the asset to which this token represents |  |
| **description** | **String** | Describes the asset to which this token represents |  |
| **image_uri** | **String** | A URI pointing to a resource with mime type image/* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI. |  |
| **image_canonical_uri** | **String** | The original image URI specified by the contract. A URI pointing to a resource with mime type image/* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive. |  |
| **symbol** | **String** | A shorter representation of a token. This is sometimes referred to as a \&quot;ticker\&quot;. Examples: \&quot;STX\&quot;, \&quot;COOL\&quot;, etc. Typically, a token could be referred to as $SYMBOL when referencing it in writing. |  |
| **decimals** | **Float** | The number of decimal places in a token. |  |
| **tx_id** | **String** | Tx id that deployed the contract |  |
| **sender_address** | **String** | principle that deployed the contract |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::FungibleTokenMetadata.new(
  token_uri: null,
  name: null,
  description: null,
  image_uri: null,
  image_canonical_uri: null,
  symbol: null,
  decimals: null,
  tx_id: null,
  sender_address: null
)
```

