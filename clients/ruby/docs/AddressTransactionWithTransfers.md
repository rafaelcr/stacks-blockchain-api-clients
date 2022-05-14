# StacksBlockchainApi::AddressTransactionWithTransfers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tx** | **Object** |  |  |
| **stx_sent** | **String** | Total sent from the given address, including the tx fee, in micro-STX as an integer string. |  |
| **stx_received** | **String** | Total received by the given address in micro-STX as an integer string. |  |
| **stx_transfers** | [**Array&lt;AddressTransactionWithTransfersStxTransfers&gt;**](AddressTransactionWithTransfersStxTransfers.md) |  |  |
| **ft_transfers** | [**Array&lt;AddressTransactionWithTransfersFtTransfers&gt;**](AddressTransactionWithTransfersFtTransfers.md) |  | [optional] |
| **nft_transfers** | [**Array&lt;AddressTransactionWithTransfersNftTransfers&gt;**](AddressTransactionWithTransfersNftTransfers.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressTransactionWithTransfers.new(
  tx: null,
  stx_sent: null,
  stx_received: null,
  stx_transfers: null,
  ft_transfers: null,
  nft_transfers: null
)
```

