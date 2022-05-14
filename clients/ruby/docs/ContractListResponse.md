# StacksBlockchainApi::ContractListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of contracts to return |  |
| **offset** | **Integer** | The number to contracts to skip (starting at &#x60;0&#x60;) | [default to 0] |
| **results** | [**Array&lt;SmartContract&gt;**](SmartContract.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::ContractListResponse.new(
  limit: null,
  offset: null,
  results: null
)
```

