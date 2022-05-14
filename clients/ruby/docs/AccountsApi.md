# StacksBlockchainApi::AccountsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_assets**](AccountsApi.md#get_account_assets) | **GET** /extended/v1/address/{principal}/assets | Get account assets |
| [**get_account_balance**](AccountsApi.md#get_account_balance) | **GET** /extended/v1/address/{principal}/balances | Get account balances |
| [**get_account_inbound**](AccountsApi.md#get_account_inbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers |
| [**get_account_info**](AccountsApi.md#get_account_info) | **GET** /v2/accounts/{principal} | Get account info |
| [**get_account_nft**](AccountsApi.md#get_account_nft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events |
| [**get_account_nonces**](AccountsApi.md#get_account_nonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account |
| [**get_account_stx_balance**](AccountsApi.md#get_account_stx_balance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance |
| [**get_account_transactions**](AccountsApi.md#get_account_transactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions |
| [**get_account_transactions_with_transfers**](AccountsApi.md#get_account_transactions_with_transfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction. |
| [**get_single_transaction_with_transfers**](AccountsApi.md#get_single_transaction_with_transfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction |


## get_account_assets

> <AddressAssetsListResponse> get_account_assets(principal, opts)

Get account assets

Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  limit: 56, # Integer | max number of account assets to fetch
  offset: 56, # Integer | index of first account assets to fetch
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state at that point in time, rather than the current block.
}

begin
  # Get account assets
  result = api_instance.get_account_assets(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_assets: #{e}"
end
```

#### Using the get_account_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressAssetsListResponse>, Integer, Hash)> get_account_assets_with_http_info(principal, opts)

```ruby
begin
  # Get account assets
  data, status_code, headers = api_instance.get_account_assets_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressAssetsListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **limit** | **Integer** | max number of account assets to fetch | [optional] |
| **offset** | **Integer** | index of first account assets to fetch | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state at that point in time, rather than the current block. | [optional] |

### Return type

[**AddressAssetsListResponse**](AddressAssetsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_balance

> <AddressBalanceResponse> get_account_balance(principal, opts)

Get account balances

Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get account balances
  result = api_instance.get_account_balance(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_balance: #{e}"
end
```

#### Using the get_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressBalanceResponse>, Integer, Hash)> get_account_balance_with_http_info(principal, opts)

```ruby
begin
  # Get account balances
  data, status_code, headers = api_instance.get_account_balance_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressBalanceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

[**AddressBalanceResponse**](AddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_inbound

> <AddressStxInboundListResponse> get_account_inbound(principal, opts)

Get inbound STX transfers

Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  limit: 56, # Integer | number of items to return
  offset: 56, # Integer | number of items to skip
  height: 8.14, # Float | Filter for transfers only at this given block height
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get inbound STX transfers
  result = api_instance.get_account_inbound(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_inbound: #{e}"
end
```

#### Using the get_account_inbound_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressStxInboundListResponse>, Integer, Hash)> get_account_inbound_with_http_info(principal, opts)

```ruby
begin
  # Get inbound STX transfers
  data, status_code, headers = api_instance.get_account_inbound_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressStxInboundListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_inbound_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **limit** | **Integer** | number of items to return | [optional] |
| **offset** | **Integer** | number of items to skip | [optional] |
| **height** | **Float** | Filter for transfers only at this given block height | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

[**AddressStxInboundListResponse**](AddressStxInboundListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_info

> <AccountDataResponse> get_account_info(principal, opts)

Get account info

Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  proof: 56, # Integer | Returns object without the proof field if set to 0
  tip: 'tip_example' # String | The Stacks chain tip to query from
}

begin
  # Get account info
  result = api_instance.get_account_info(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_info: #{e}"
end
```

#### Using the get_account_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountDataResponse>, Integer, Hash)> get_account_info_with_http_info(principal, opts)

```ruby
begin
  # Get account info
  data, status_code, headers = api_instance.get_account_info_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountDataResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **proof** | **Integer** | Returns object without the proof field if set to 0 | [optional] |
| **tip** | **String** | The Stacks chain tip to query from | [optional] |

### Return type

[**AccountDataResponse**](AccountDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_nft

> <AddressNftListResponse> get_account_nft(principal, opts)

Get nft events

**NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  limit: 56, # Integer | number of items to return
  offset: 56, # Integer | number of items to skip
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get nft events
  result = api_instance.get_account_nft(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_nft: #{e}"
end
```

#### Using the get_account_nft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressNftListResponse>, Integer, Hash)> get_account_nft_with_http_info(principal, opts)

```ruby
begin
  # Get nft events
  data, status_code, headers = api_instance.get_account_nft_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressNftListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_nft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **limit** | **Integer** | number of items to return | [optional] |
| **offset** | **Integer** | number of items to skip | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

[**AddressNftListResponse**](AddressNftListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_nonces

> <AddressNonces> get_account_nonces(principal, opts)

Get the latest nonce used by an account

Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
opts = {
  block_height: 8.14, # Float | Optionally get the nonce at a given block height
  block_hash: 'block_hash_example' # String | Optionally get the nonce at a given block hash
}

begin
  # Get the latest nonce used by an account
  result = api_instance.get_account_nonces(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_nonces: #{e}"
end
```

#### Using the get_account_nonces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressNonces>, Integer, Hash)> get_account_nonces_with_http_info(principal, opts)

```ruby
begin
  # Get the latest nonce used by an account
  data, status_code, headers = api_instance.get_account_nonces_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressNonces>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_nonces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0&#x60;) |  |
| **block_height** | **Float** | Optionally get the nonce at a given block height | [optional] |
| **block_hash** | **String** | Optionally get the nonce at a given block hash | [optional] |

### Return type

[**AddressNonces**](AddressNonces.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_stx_balance

> Object get_account_stx_balance(principal, opts)

Get account STX balance

Retrieves STX token balance for a given Address or Contract Identifier.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get account STX balance
  result = api_instance.get_account_stx_balance(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_stx_balance: #{e}"
end
```

#### Using the get_account_stx_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_account_stx_balance_with_http_info(principal, opts)

```ruby
begin
  # Get account STX balance
  data, status_code, headers = api_instance.get_account_stx_balance_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_stx_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_transactions

> <AddressTransactionsListResponse> get_account_transactions(principal, opts)

Get account transactions

Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  limit: 56, # Integer | max number of account transactions to fetch
  offset: 56, # Integer | index of first account transaction to fetch
  height: 8.14, # Float | Filter for transactions only at this given block height
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get account transactions
  result = api_instance.get_account_transactions(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_transactions: #{e}"
end
```

#### Using the get_account_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressTransactionsListResponse>, Integer, Hash)> get_account_transactions_with_http_info(principal, opts)

```ruby
begin
  # Get account transactions
  data, status_code, headers = api_instance.get_account_transactions_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressTransactionsListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **limit** | **Integer** | max number of account transactions to fetch | [optional] |
| **offset** | **Integer** | index of first account transaction to fetch | [optional] |
| **height** | **Float** | Filter for transactions only at this given block height | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

[**AddressTransactionsListResponse**](AddressTransactionsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_transactions_with_transfers

> <AddressTransactionsWithTransfersListResponse> get_account_transactions_with_transfers(principal, opts)

Get account transactions including STX transfers for each transaction.

Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
opts = {
  limit: 56, # Integer | max number of account transactions to fetch
  offset: 56, # Integer | index of first account transaction to fetch
  height: 8.14, # Float | Filter for transactions only at this given block height
  unanchored: true, # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
  until_block: 'until_block_example' # String | returned data representing the state up until that point in time, rather than the current block.
}

begin
  # Get account transactions including STX transfers for each transaction.
  result = api_instance.get_account_transactions_with_transfers(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_transactions_with_transfers: #{e}"
end
```

#### Using the get_account_transactions_with_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressTransactionsWithTransfersListResponse>, Integer, Hash)> get_account_transactions_with_transfers_with_http_info(principal, opts)

```ruby
begin
  # Get account transactions including STX transfers for each transaction.
  data, status_code, headers = api_instance.get_account_transactions_with_transfers_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressTransactionsWithTransfersListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_transactions_with_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |  |
| **limit** | **Integer** | max number of account transactions to fetch | [optional] |
| **offset** | **Integer** | index of first account transaction to fetch | [optional] |
| **height** | **Float** | Filter for transactions only at this given block height | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |
| **until_block** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] |

### Return type

[**AddressTransactionsWithTransfersListResponse**](AddressTransactionsWithTransfersListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_single_transaction_with_transfers

> <AddressTransactionWithTransfers> get_single_transaction_with_transfers(principal, tx_id)

Get account transaction information for specific transaction

Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::AccountsApi.new
principal = 'principal_example' # String | Stacks address or a contract identifier
tx_id = 'tx_id_example' # String | Transaction id

begin
  # Get account transaction information for specific transaction
  result = api_instance.get_single_transaction_with_transfers(principal, tx_id)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_single_transaction_with_transfers: #{e}"
end
```

#### Using the get_single_transaction_with_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressTransactionWithTransfers>, Integer, Hash)> get_single_transaction_with_transfers_with_http_info(principal, tx_id)

```ruby
begin
  # Get account transaction information for specific transaction
  data, status_code, headers = api_instance.get_single_transaction_with_transfers_with_http_info(principal, tx_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressTransactionWithTransfers>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling AccountsApi->get_single_transaction_with_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Stacks address or a contract identifier |  |
| **tx_id** | **String** | Transaction id |  |

### Return type

[**AddressTransactionWithTransfers**](AddressTransactionWithTransfers.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

