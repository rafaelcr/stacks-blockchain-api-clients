# StacksBlockchainApi::AddressTransactionWithTransfersNftTransfers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_identifier** | **String** | Non Fungible Token asset identifier. |  |
| **value** | [**AddressTransactionWithTransfersValue**](AddressTransactionWithTransfersValue.md) |  |  |
| **sender** | **String** | Principal that sent the asset. | [optional] |
| **recipient** | **String** | Principal that received the asset. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressTransactionWithTransfersNftTransfers.new(
  asset_identifier: null,
  value: null,
  sender: null,
  recipient: null
)
```

