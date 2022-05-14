# StacksBlockchainApi::NetworkIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Blockchain name |  |
| **network** | **String** | If a blockchain has a specific chain-id or network identifier, it should go in this field. It is up to the client to determine which network-specific identifier is mainnet or testnet. |  |
| **sub_network_identifier** | [**RosettaNetworkListResponseSubNetworkIdentifier**](RosettaNetworkListResponseSubNetworkIdentifier.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::NetworkIdentifier.new(
  blockchain: null,
  network: null,
  sub_network_identifier: null
)
```

