# StacksBlockchainApi::RosettaConstructionPreprocessRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_identifier** | **Object** |  |  |
| **operations** | **Array&lt;Object&gt;** |  |  |
| **metadata** | **Object** |  | [optional] |
| **max_fee** | [**Array&lt;RosettaMaxFeeAmount&gt;**](RosettaMaxFeeAmount.md) |  | [optional] |
| **suggested_fee_multiplier** | **Integer** |  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided). | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaConstructionPreprocessRequest.new(
  network_identifier: null,
  operations: null,
  metadata: null,
  max_fee: null,
  suggested_fee_multiplier: null
)
```

