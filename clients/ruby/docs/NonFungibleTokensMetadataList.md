# StacksBlockchainApi::NonFungibleTokensMetadataList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of tokens metadata to return |  |
| **offset** | **Integer** | The number to tokens metadata to skip (starting at &#x60;0&#x60;) |  |
| **total** | **Integer** | The number of tokens metadata available |  |
| **results** | [**Array&lt;NonFungibleTokenMetadata&gt;**](NonFungibleTokenMetadata.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::NonFungibleTokensMetadataList.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

