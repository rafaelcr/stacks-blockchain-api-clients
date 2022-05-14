# StacksBlockchainApi::AddressNftListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **total** | **Integer** |  |  |
| **nft_events** | [**Array&lt;NftEvent&gt;**](NftEvent.md) |  |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::AddressNftListResponse.new(
  limit: null,
  offset: null,
  total: null,
  nft_events: null
)
```

