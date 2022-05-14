# StacksBlockchainApi::RosettaConstructionDeriveResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | [DEPRECATED by account_identifier in v1.4.4] Address in network-specific format. | [optional] |
| **account_identifier** | [**RosettaAccountIdentifier**](RosettaAccountIdentifier.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionDeriveResponse.new(
  address: null,
  account_identifier: null,
  metadata: null
)
```

