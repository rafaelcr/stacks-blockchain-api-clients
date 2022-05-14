# StacksBlockchainApi::RunFaucetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Indicates if the faucet call was successful |  |
| **tx_id** | **String** | The transaction ID for the faucet call | [optional] |
| **tx_raw** | **String** | Raw transaction in hex string representation | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RunFaucetResponse.new(
  success: null,
  tx_id: null,
  tx_raw: null
)
```

