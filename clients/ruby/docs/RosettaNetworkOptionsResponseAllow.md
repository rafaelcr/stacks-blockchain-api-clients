# StacksBlockchainApi::RosettaNetworkOptionsResponseAllow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_statuses** | [**Array&lt;RosettaOperationStatus&gt;**](RosettaOperationStatus.md) | All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error. |  |
| **operation_types** | [**Array&lt;AnyOfstring&gt;**](AnyOfstring.md) | All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error. |  |
| **errors** | [**Array&lt;RosettaErrorNoDetails&gt;**](RosettaErrorNoDetails.md) | All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error. |  |
| **historical_balance_lookup** | **Boolean** | Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true. |  |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaNetworkOptionsResponseAllow.new(
  operation_statuses: null,
  operation_types: null,
  errors: null,
  historical_balance_lookup: null
)
```

