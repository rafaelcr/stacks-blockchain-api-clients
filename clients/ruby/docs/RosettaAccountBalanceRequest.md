# StacksBlockchainApi::RosettaAccountBalanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **account_identifier** | [**RosettaAccount**](RosettaAccount.md) |  |  |
| **block_identifier** | [**AnyOfobjectobject**](AnyOfobjectobject.md) | When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block. | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaAccountBalanceRequest.new(
  network_identifier: null,
  account_identifier: null,
  block_identifier: null
)
```

