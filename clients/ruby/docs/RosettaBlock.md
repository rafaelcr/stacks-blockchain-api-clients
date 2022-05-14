# StacksBlockchainApi::RosettaBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_identifier** | **Object** |  |  |
| **parent_block_identifier** | [**RosettaParentBlockIdentifier**](RosettaParentBlockIdentifier.md) |  |  |
| **timestamp** | **Integer** | The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second. |  |
| **transactions** | **Array&lt;Object&gt;** | All the transactions in the block |  |
| **metadata** | [**RosettaBlockMetadata**](RosettaBlockMetadata.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaBlock.new(
  block_identifier: null,
  parent_block_identifier: null,
  timestamp: null,
  transactions: null,
  metadata: null
)
```

