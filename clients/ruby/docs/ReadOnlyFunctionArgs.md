# StacksBlockchainApi::ReadOnlyFunctionArgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | The simulated tx-sender |  |
| **arguments** | **Array&lt;String&gt;** | An array of hex serialized Clarity values |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::ReadOnlyFunctionArgs.new(
  sender: null,
  arguments: null
)
```

