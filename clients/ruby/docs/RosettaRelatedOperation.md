# StacksBlockchainApi::RosettaRelatedOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Describes the index of related operation. |  |
| **network_index** | **Integer** | Some blockchains specify an operation index that is essential for client use. network_index should not be populated if there is no notion of an operation index in a blockchain (typically most account-based blockchains). | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaRelatedOperation.new(
  index: null,
  network_index: null
)
```

