# StacksBlockchainApi::BnsGetNameInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  |  |
| **blockchain** | **String** |  |  |
| **expire_block** | **Integer** |  | [optional] |
| **grace_period** | **Integer** |  | [optional] |
| **last_txid** | **String** |  |  |
| **resolver** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **zonefile** | **String** |  |  |
| **zonefile_hash** | **String** |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::BnsGetNameInfoResponse.new(
  address: null,
  blockchain: null,
  expire_block: null,
  grace_period: null,
  last_txid: null,
  resolver: null,
  status: null,
  zonefile: null,
  zonefile_hash: null
)
```

