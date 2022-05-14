# StacksBlockchainApi::RosettaConstructionParseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operations** | [**Array&lt;RosettaOperation&gt;**](RosettaOperation.md) |  |  |
| **signers** | [**Array&lt;AnyOfstring&gt;**](AnyOfstring.md) | [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty. | [optional] |
| **account_identifier_signers** | **Array&lt;Object&gt;** |  | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionParseResponse.new(
  operations: null,
  signers: null,
  account_identifier_signers: null,
  metadata: null
)
```

