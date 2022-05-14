# StacksBlockchainApi::RosettaOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_address** | **String** | sender&#39;s address  | [optional] |
| **type** | **String** | Type of operation e.g transfer | [optional] |
| **status** | **Object** | This value indicates the state of the operations | [optional] |
| **token_transfer_recipient_address** | **String** | Recipient&#39;s address | [optional] |
| **amount** | **String** | Amount to be transfered. | [optional] |
| **symbol** | **String** | Currency symbol e.g STX | [optional] |
| **decimals** | **Integer** | Number of decimal places | [optional] |
| **gas_limit** | **Float** | Maximum price a user is willing to pay. | [optional] |
| **gas_price** | **Float** | Cost necessary to perform a transaction on the network | [optional] |
| **suggested_fee_multiplier** | **Float** |  A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. | [optional] |
| **max_fee** | **String** | Maximum fee user is willing to pay | [optional] |
| **fee** | **String** | Fee for this transaction | [optional] |
| **size** | **Integer** | Transaction approximative size (used to calculate total fee). | [optional] |
| **memo** | **String** | STX token transfer memo. | [optional] |
| **number_of_cycles** | **Integer** | Number of cycles when stacking. | [optional] |
| **contract_address** | **String** | Address of the contract to call. | [optional] |
| **contract_name** | **String** | Name of the contract to call. | [optional] |
| **burn_block_height** | **Integer** | Set the burnchain (BTC) block for stacking lock to start. | [optional] |
| **delegate_to** | **String** | Delegator address for when calling &#x60;delegate-stacking&#x60;. | [optional] |
| **pox_addr** | **String** | The reward address for stacking transaction. It should be a valid Bitcoin address | [optional] |

## Example

```ruby
require 'stacks_blockchain_api_client'

instance = StacksBlockchainApi::RosettaOptions.new(
  sender_address: null,
  type: null,
  status: null,
  token_transfer_recipient_address: null,
  amount: null,
  symbol: null,
  decimals: null,
  gas_limit: null,
  gas_price: null,
  suggested_fee_multiplier: null,
  max_fee: null,
  fee: null,
  size: null,
  memo: null,
  number_of_cycles: null,
  contract_address: null,
  contract_name: null,
  burn_block_height: null,
  delegate_to: null,
  pox_addr: null
)
```

