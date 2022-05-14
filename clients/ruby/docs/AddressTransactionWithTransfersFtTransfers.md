# StacksBlockchainApi::AddressTransactionWithTransfersFtTransfers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_identifier** | **String** | Fungible Token asset identifier. |  |
| **amount** | **String** | Amount transferred as an integer string. This balance does not factor in possible SIP-010 decimals. |  |
| **sender** | **String** | Principal that sent the asset. | [optional] |
| **recipient** | **String** | Principal that received the asset. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressTransactionWithTransfersFtTransfers.new(
  asset_identifier: null,
  amount: null,
  sender: null,
  recipient: null
)
```

