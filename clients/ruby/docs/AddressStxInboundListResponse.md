# StacksBlockchainApi::AddressStxInboundListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **total** | **Integer** |  |  |
| **results** | [**Array&lt;InboundStxTransfer&gt;**](InboundStxTransfer.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressStxInboundListResponse.new(
  limit: null,
  offset: null,
  total: null,
  results: null
)
```

