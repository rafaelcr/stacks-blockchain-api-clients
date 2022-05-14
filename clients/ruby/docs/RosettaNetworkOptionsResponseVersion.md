# StacksBlockchainApi::RosettaNetworkOptionsResponseVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_version** | **String** | The rosetta_version is the version of the Rosetta interface the implementation adheres to. This can be useful for clients looking to reliably parse responses. |  |
| **node_version** | **String** | The node_version is the canonical version of the node runtime. This can help clients manage deployments. |  |
| **middleware_version** | **String** | When a middleware server is used to adhere to the Rosetta interface, it should return its version here. This can help clients manage deployments. | [optional] |
| **metadata** | **Object** | Any other information that may be useful about versioning of dependent services should be returned here. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaNetworkOptionsResponseVersion.new(
  rosetta_version: null,
  node_version: null,
  middleware_version: null,
  metadata: null
)
```

