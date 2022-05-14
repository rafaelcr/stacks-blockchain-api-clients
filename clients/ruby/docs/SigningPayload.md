# StacksBlockchainApi::SigningPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | [DEPRECATED by account_identifier in v1.4.4] The network-specific address of the account that should sign the payload. | [optional] |
| **account_identifier** | **Object** |  | [optional] |
| **hex_bytes** | **String** |  |  |
| **signature_type** | **String** | SignatureType is the type of a cryptographic signature. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::SigningPayload.new(
  address: null,
  account_identifier: null,
  hex_bytes: null,
  signature_type: null
)
```

