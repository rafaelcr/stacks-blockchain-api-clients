# StacksBlockchainApi::AddressNonces

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_mempool_tx_nonce** | **Integer** | The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address. |  |
| **last_executed_tx_nonce** | **Integer** | The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address. |  |
| **possible_next_nonce** | **Integer** | The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API&#39;s mempool or transactions aren&#39;t fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called. |  |
| **detected_missing_nonces** | **Array&lt;Integer&gt;** | Nonces that appear to be missing and likely causing a mempool transaction to be stuck. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressNonces.new(
  last_mempool_tx_nonce: null,
  last_executed_tx_nonce: null,
  possible_next_nonce: null,
  detected_missing_nonces: null
)
```

