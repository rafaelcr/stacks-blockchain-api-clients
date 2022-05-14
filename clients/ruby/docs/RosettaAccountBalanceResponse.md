# StacksBlockchainApi::RosettaAccountBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_identifier** | **Object** |  |  |
| **balances** | [**Array&lt;RosettaAmount&gt;**](RosettaAmount.md) | A single account balance may have multiple currencies |  |
| **coins** | [**Array&lt;RosettaCoin&gt;**](RosettaCoin.md) | If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don&#39;t need to maintain their own indexer to track their UTXOs. | [optional] |
| **metadata** | [**RosettaAccountBalanceResponseMetadata**](RosettaAccountBalanceResponseMetadata.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaAccountBalanceResponse.new(
  block_identifier: null,
  balances: null,
  coins: null,
  metadata: null
)
```

