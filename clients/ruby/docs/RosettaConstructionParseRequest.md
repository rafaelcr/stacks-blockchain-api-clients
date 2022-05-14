# StacksBlockchainApi::RosettaConstructionParseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **signed** | **Boolean** | Signed is a boolean indicating whether the transaction is signed. |  |
| **transaction** | **String** | This must be either the unsigned transaction blob returned by /construction/payloads or the signed transaction blob returned by /construction/combine. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionParseRequest.new(
  network_identifier: null,
  signed: null,
  transaction: null
)
```

