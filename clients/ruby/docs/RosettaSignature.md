# StacksBlockchainApi::RosettaSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing_payload** | **Object** |  |  |
| **public_key** | **Object** |  |  |
| **signature_type** | **String** | SignatureType is the type of a cryptographic signature. |  |
| **hex_bytes** | **String** |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaSignature.new(
  signing_payload: null,
  public_key: null,
  signature_type: null,
  hex_bytes: null
)
```

