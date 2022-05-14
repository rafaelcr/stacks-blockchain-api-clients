# StacksBlockchainApi::NftEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** |  |  |
| **recipient** | **String** |  |  |
| **asset_identifier** | **String** |  |  |
| **value** | [**AddressNftListResponseValue**](AddressNftListResponseValue.md) |  |  |
| **tx_id** | **String** |  |  |
| **block_height** | **Float** |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::NftEvent.new(
  sender: null,
  recipient: null,
  asset_identifier: null,
  value: null,
  tx_id: null,
  block_height: null
)
```

