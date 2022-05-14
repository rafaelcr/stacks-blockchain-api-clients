# StacksBlockchainApi::AddressTransactionWithTransfersStxTransfers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Amount transferred in micro-STX as an integer string. |  |
| **sender** | **String** | Principal that sent STX. This is unspecified if the STX were minted. | [optional] |
| **recipient** | **String** | Principal that received STX. This is unspecified if the STX were burned. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressTransactionWithTransfersStxTransfers.new(
  amount: null,
  sender: null,
  recipient: null
)
```

