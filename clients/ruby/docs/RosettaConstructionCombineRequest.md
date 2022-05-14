# StacksBlockchainApi::RosettaConstructionCombineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **unsigned_transaction** | **String** |  |  |
| **signatures** | [**Array&lt;RosettaSignature&gt;**](RosettaSignature.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionCombineRequest.new(
  network_identifier: null,
  unsigned_transaction: null,
  signatures: null
)
```

