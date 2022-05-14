# StacksBlockchainApi::MicroblockListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of microblocks to return |  |
| **offset** | **Integer** | The number to microblocks to skip (starting at &#x60;0&#x60;) | [default to 0] |
| **total** | **Integer** | The number of microblocks available |  |
| **results** | [**Array&lt;Microblock&gt;**](Microblock.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::MicroblockListResponse.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

