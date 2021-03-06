# StacksBlockchainApi::RosettaAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address may be a cryptographic public key (or some encoding of it) or a provided username. |  |
| **sub_account** | [**RosettaSubAccount**](RosettaSubAccount.md) |  | [optional] |
| **metadata** | **Object** | Blockchains that utilize a username model (where the address is not a derivative of a cryptographic public key) should specify the public key(s) owned by the address in metadata. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaAccount.new(
  address: null,
  sub_account: null,
  metadata: null
)
```

