# StacksBlockchainApi::NonFungibleTokenMintList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of mint events to return |  |
| **offset** | **Integer** | The number to mint events to skip (starting at &#x60;0&#x60;) |  |
| **total** | **Integer** | The number of mint events available |  |
| **results** | [**Array&lt;AnyOfobjectobject&gt;**](AnyOfobjectobject.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::NonFungibleTokenMintList.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

