# StacksBlockchainApi::ContractInterfaceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **functions** | **Array&lt;Object&gt;** | List of defined methods |  |
| **variables** | **Array&lt;Object&gt;** | List of defined variables |  |
| **maps** | **Array&lt;Object&gt;** | List of defined data-maps |  |
| **fungible_tokens** | **Array&lt;Object&gt;** | List of fungible tokens in the contract |  |
| **non_fungible_tokens** | **Array&lt;Object&gt;** | List of non-fungible tokens in the contract |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::ContractInterfaceResponse.new(
  functions: null,
  variables: null,
  maps: null,
  fungible_tokens: null,
  non_fungible_tokens: null
)
```

