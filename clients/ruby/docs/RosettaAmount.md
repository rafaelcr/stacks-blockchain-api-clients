# StacksBlockchainApi::RosettaAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the transaction in atomic units represented as an arbitrary-sized signed integer. For example, 1 BTC would be represented by a value of 100000000. |  |
| **currency** | [**RosettaCurrency**](RosettaCurrency.md) |  |  |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaAmount.new(
  value: null,
  currency: null,
  metadata: null
)
```

