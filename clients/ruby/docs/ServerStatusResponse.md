# StacksBlockchainApi::ServerStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_version** | **String** | the server version that is currently running | [optional] |
| **status** | **String** | the current server status |  |
| **chain_tip** | [**ChainTip**](ChainTip.md) |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::ServerStatusResponse.new(
  server_version: null,
  status: null,
  chain_tip: null
)
```

