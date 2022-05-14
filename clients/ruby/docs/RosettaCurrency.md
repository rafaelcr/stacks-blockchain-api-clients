# StacksBlockchainApi::RosettaCurrency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Canonical symbol associated with a currency. |  |
| **decimals** | **Integer** | Number of decimal places in the standard unit representation of the amount. For example, BTC has 8 decimals. Note that it is not possible to represent the value of some currency in atomic units that is not base 10. |  |
| **metadata** | **Object** | Any additional information related to the currency itself. For example, it would be useful to populate this object with the contract address of an ERC-20 token. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaCurrency.new(
  symbol: null,
  decimals: null,
  metadata: null
)
```

