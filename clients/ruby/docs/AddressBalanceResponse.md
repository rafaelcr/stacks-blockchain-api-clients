# StacksBlockchainApi::AddressBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stx** | [**AddressBalanceResponseStx**](AddressBalanceResponseStx.md) |  |  |
| **fungible_tokens** | **Object** |  |  |
| **non_fungible_tokens** | **Object** |  |  |
| **token_offering_locked** | [**AddressTokenOfferingLocked**](AddressTokenOfferingLocked.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressBalanceResponse.new(
  stx: null,
  fungible_tokens: null,
  non_fungible_tokens: null,
  token_offering_locked: null
)
```

