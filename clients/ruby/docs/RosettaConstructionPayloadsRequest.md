# StacksBlockchainApi::RosettaConstructionPayloadsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **operations** | **Array&lt;Object&gt;** |  |  |
| **public_keys** | **Array&lt;Object&gt;** |  | [optional] |
| **metadata** | [**RosettaConstructionMetadataResponseMetadata**](RosettaConstructionMetadataResponseMetadata.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionPayloadsRequest.new(
  network_identifier: null,
  operations: null,
  public_keys: null,
  metadata: null
)
```

