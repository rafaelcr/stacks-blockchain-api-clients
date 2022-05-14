# StacksBlockchainApi::RosettaConstructionDeriveRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **public_key** | [**RosettaPublicKey**](RosettaPublicKey.md) |  |  |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionDeriveRequest.new(
  network_identifier: null,
  public_key: null,
  metadata: null
)
```

