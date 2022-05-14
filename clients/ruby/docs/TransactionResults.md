# StacksBlockchainApi::TransactionResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of transactions to return |  |
| **offset** | **Integer** | The number to transactions to skip (starting at &#x60;0&#x60;) |  |
| **total** | **Integer** | The number of transactions available |  |
| **results** | [**Array&lt;AnyOfobjectobjectobjectobjectobject&gt;**](AnyOfobjectobjectobjectobjectobject.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::TransactionResults.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

