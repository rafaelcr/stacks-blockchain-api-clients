# StacksBlockchainApi::MapEntryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | Hex-encoded string of clarity value. It is always an optional tuple. |  |
| **proof** | **String** | Hex-encoded string of the MARF proof for the data | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::MapEntryResponse.new(
  data: null,
  proof: null
)
```

