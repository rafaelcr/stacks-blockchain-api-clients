# StacksBlockchainApi::RosettaBlockResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block** | [**RosettaBlock**](RosettaBlock.md) |  | [optional] |
| **other_transactions** | [**Array&lt;OtherTransactionIdentifier&gt;**](OtherTransactionIdentifier.md) | Some blockchains may require additional transactions to be fetched that weren&#39;t returned in the block response (ex: block only returns transaction hashes). For blockchains with a lot of transactions in each block, this can be very useful as consumers can concurrently fetch all transactions returned. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaBlockResponse.new(
  block: null,
  other_transactions: null
)
```

