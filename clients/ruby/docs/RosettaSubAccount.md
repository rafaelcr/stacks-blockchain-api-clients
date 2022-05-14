# StacksBlockchainApi::RosettaSubAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address may be a cryptographic public key (or some encoding of it) or a provided username. |  |
| **metadata** | **Object** | If the SubAccount address is not sufficient to uniquely specify a SubAccount, any other identifying information can be stored here. It is important to note that two SubAccounts with identical addresses but differing metadata will not be considered equal by clients. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaSubAccount.new(
  address: null,
  metadata: null
)
```

