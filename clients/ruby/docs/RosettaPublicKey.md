# StacksBlockchainApi::RosettaPublicKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hex_bytes** | **String** | Hex-encoded public key bytes in the format specified by the CurveType. |  |
| **curve_type** | **String** | CurveType is the type of cryptographic curve associated with a PublicKey. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaPublicKey.new(
  hex_bytes: null,
  curve_type: null
)
```

