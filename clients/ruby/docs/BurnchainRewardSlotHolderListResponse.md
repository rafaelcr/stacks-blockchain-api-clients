# StacksBlockchainApi::BurnchainRewardSlotHolderListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of items to return |  |
| **offset** | **Integer** | The number of items to skip (starting at &#x60;0&#x60;) | [default to 0] |
| **total** | **Integer** | Total number of available items |  |
| **results** | [**Array&lt;BurnchainRewardSlotHolder&gt;**](BurnchainRewardSlotHolder.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BurnchainRewardSlotHolderListResponse.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

