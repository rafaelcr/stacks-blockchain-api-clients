# StacksBlockchainApi::NonFungibleTokenHistoryEventList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of events to return |  |
| **offset** | **Integer** | The number to events to skip (starting at &#x60;0&#x60;) |  |
| **total** | **Integer** | The number of events available |  |
| **results** | [**Array&lt;AnyOfobjectobject&gt;**](AnyOfobjectobject.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::NonFungibleTokenHistoryEventList.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

