# StacksBlockchainApi::RosettaConstructionPayloadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsigned_transaction** | **String** | This is an unsigned transaction blob (that is usually needed to construct the a network transaction from a collection of signatures) |  |
| **payloads** | [**Array&lt;SigningPayload&gt;**](SigningPayload.md) | An array of payloads that must be signed by the caller |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionPayloadResponse.new(
  unsigned_transaction: null,
  payloads: null
)
```

