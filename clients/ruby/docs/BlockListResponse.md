# StacksBlockchainApi::BlockListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of blocks to return |  |
| **offset** | **Integer** | The number to blocks to skip (starting at &#x60;0&#x60;) | [default to 0] |
| **total** | **Integer** | The number of blocks available |  |
| **results** | [**Array&lt;Block&gt;**](Block.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BlockListResponse.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

