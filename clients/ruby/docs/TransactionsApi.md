# StacksBlockchainApi::TransactionsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_mempool_transactions**](TransactionsApi.md#get_address_mempool_transactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address |
| [**get_dropped_mempool_transaction_list**](TransactionsApi.md#get_dropped_mempool_transaction_list) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions |
| [**get_mempool_transaction_list**](TransactionsApi.md#get_mempool_transaction_list) | **GET** /extended/v1/tx/mempool | Get mempool transactions |
| [**get_raw_transaction_by_id**](TransactionsApi.md#get_raw_transaction_by_id) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction |
| [**get_transaction_by_id**](TransactionsApi.md#get_transaction_by_id) | **GET** /extended/v1/tx/{tx_id} | Get transaction |
| [**get_transaction_list**](TransactionsApi.md#get_transaction_list) | **GET** /extended/v1/tx | Get recent transactions |
| [**get_transactions_by_block_hash**](TransactionsApi.md#get_transactions_by_block_hash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash |
| [**get_transactions_by_block_height**](TransactionsApi.md#get_transactions_by_block_height) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height |
| [**get_tx_list_details**](TransactionsApi.md#get_tx_list_details) | **GET** /extended/v1/tx/multiple | Get list of details for transactions |
| [**post_core_node_transactions**](TransactionsApi.md#post_core_node_transactions) | **POST** /v2/transactions | Broadcast raw transaction |


## get_address_mempool_transactions

> Object get_address_mempool_transactions(address, opts)

Transactions for address

Retrieves all transactions for a given address that are currently in mempool

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
address = 'address_example' # String | Transactions for the address
opts = {
  limit: 56, # Integer | max number of transactions to fetch
  offset: 56, # Integer | index of first transaction to fetch
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Transactions for address
  result = api_instance.get_address_mempool_transactions(address, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_address_mempool_transactions: #{e}"
end
```

#### Using the get_address_mempool_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_address_mempool_transactions_with_http_info(address, opts)

```ruby
begin
  # Transactions for address
  data, status_code, headers = api_instance.get_address_mempool_transactions_with_http_info(address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_address_mempool_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Transactions for the address |  |
| **limit** | **Integer** | max number of transactions to fetch | [optional] |
| **offset** | **Integer** | index of first transaction to fetch | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dropped_mempool_transaction_list

> Object get_dropped_mempool_transaction_list(opts)

Get dropped mempool transactions

Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
opts = {
  limit: 56, # Integer | max number of mempool transactions to fetch
  offset: 56 # Integer | index of first mempool transaction to fetch
}

begin
  # Get dropped mempool transactions
  result = api_instance.get_dropped_mempool_transaction_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_dropped_mempool_transaction_list: #{e}"
end
```

#### Using the get_dropped_mempool_transaction_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_dropped_mempool_transaction_list_with_http_info(opts)

```ruby
begin
  # Get dropped mempool transactions
  data, status_code, headers = api_instance.get_dropped_mempool_transaction_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_dropped_mempool_transaction_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of mempool transactions to fetch | [optional][default to 96] |
| **offset** | **Integer** | index of first mempool transaction to fetch | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mempool_transaction_list

> <MempoolTransactionListResponse> get_mempool_transaction_list(opts)

Get mempool transactions

Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
opts = {
  sender_address: 'sender_address_example', # String | Filter to only return transactions with this sender address.
  recipient_address: 'recipient_address_example', # String | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
  address: 'address_example', # String | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
  limit: 56, # Integer | max number of mempool transactions to fetch
  offset: 56, # Integer | index of first mempool transaction to fetch
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get mempool transactions
  result = api_instance.get_mempool_transaction_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_mempool_transaction_list: #{e}"
end
```

#### Using the get_mempool_transaction_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MempoolTransactionListResponse>, Integer, Hash)> get_mempool_transaction_list_with_http_info(opts)

```ruby
begin
  # Get mempool transactions
  data, status_code, headers = api_instance.get_mempool_transaction_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MempoolTransactionListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_mempool_transaction_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_address** | **String** | Filter to only return transactions with this sender address. | [optional] |
| **recipient_address** | **String** | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). | [optional] |
| **address** | **String** | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). | [optional] |
| **limit** | **Integer** | max number of mempool transactions to fetch | [optional][default to 96] |
| **offset** | **Integer** | index of first mempool transaction to fetch | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

[**MempoolTransactionListResponse**](MempoolTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_raw_transaction_by_id

> <GetRawTransactionResult> get_raw_transaction_by_id(tx_id)

Get Raw Transaction

Retrieves a hex encoded serialized transaction for a given ID 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
tx_id = 'tx_id_example' # String | Hash of transaction

begin
  # Get Raw Transaction
  result = api_instance.get_raw_transaction_by_id(tx_id)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_raw_transaction_by_id: #{e}"
end
```

#### Using the get_raw_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRawTransactionResult>, Integer, Hash)> get_raw_transaction_by_id_with_http_info(tx_id)

```ruby
begin
  # Get Raw Transaction
  data, status_code, headers = api_instance.get_raw_transaction_by_id_with_http_info(tx_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRawTransactionResult>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_raw_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tx_id** | **String** | Hash of transaction |  |

### Return type

[**GetRawTransactionResult**](GetRawTransactionResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_by_id

> <AnyOfobjectobjectobjectobjectobject> get_transaction_by_id(tx_id, opts)

Get transaction

Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
tx_id = 'tx_id_example' # String | Hash of transaction
opts = {
  event_offset: 56, # Integer | The number of events to skip
  event_limit: 56, # Integer | The numbers of events to return
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get transaction
  result = api_instance.get_transaction_by_id(tx_id, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_by_id: #{e}"
end
```

#### Using the get_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobjectobjectobjectobject>, Integer, Hash)> get_transaction_by_id_with_http_info(tx_id, opts)

```ruby
begin
  # Get transaction
  data, status_code, headers = api_instance.get_transaction_by_id_with_http_info(tx_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobjectobjectobjectobject>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tx_id** | **String** | Hash of transaction |  |
| **event_offset** | **Integer** | The number of events to skip | [optional][default to 0] |
| **event_limit** | **Integer** | The numbers of events to return | [optional][default to 96] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_list

> <TransactionResults> get_transaction_list(opts)

Get recent transactions

Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
opts = {
  limit: 56, # Integer | max number of transactions to fetch
  offset: 56, # Integer | index of first transaction to fetch
  type: ['coinbase'], # Array<String> | Filter by transaction type
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get recent transactions
  result = api_instance.get_transaction_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_list: #{e}"
end
```

#### Using the get_transaction_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResults>, Integer, Hash)> get_transaction_list_with_http_info(opts)

```ruby
begin
  # Get recent transactions
  data, status_code, headers = api_instance.get_transaction_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResults>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of transactions to fetch | [optional][default to 96] |
| **offset** | **Integer** | index of first transaction to fetch | [optional] |
| **type** | [**Array&lt;String&gt;**](String.md) | Filter by transaction type | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

[**TransactionResults**](TransactionResults.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_by_block_hash

> Object get_transactions_by_block_hash(block_hash, opts)

Transactions by block hash

Retrieves a list of all transactions within a block for a given block hash.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
block_hash = 'block_hash_example' # String | Hash of block
opts = {
  limit: 56, # Integer | max number of transactions to fetch
  offset: 56 # Integer | index of first transaction to fetch
}

begin
  # Transactions by block hash
  result = api_instance.get_transactions_by_block_hash(block_hash, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_by_block_hash: #{e}"
end
```

#### Using the get_transactions_by_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_transactions_by_block_hash_with_http_info(block_hash, opts)

```ruby
begin
  # Transactions by block hash
  data, status_code, headers = api_instance.get_transactions_by_block_hash_with_http_info(block_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_by_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_hash** | **String** | Hash of block |  |
| **limit** | **Integer** | max number of transactions to fetch | [optional] |
| **offset** | **Integer** | index of first transaction to fetch | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_by_block_height

> Object get_transactions_by_block_height(height, opts)

Transactions by block height

Retrieves all transactions within a block at a given height

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
height = 56 # Integer | Height of block
opts = {
  limit: 56, # Integer | max number of transactions to fetch
  offset: 56, # Integer | index of first transaction to fetch
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Transactions by block height
  result = api_instance.get_transactions_by_block_height(height, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_by_block_height: #{e}"
end
```

#### Using the get_transactions_by_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_transactions_by_block_height_with_http_info(height, opts)

```ruby
begin
  # Transactions by block height
  data, status_code, headers = api_instance.get_transactions_by_block_height_with_http_info(height, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_by_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Height of block |  |
| **limit** | **Integer** | max number of transactions to fetch | [optional] |
| **offset** | **Integer** | index of first transaction to fetch | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tx_list_details

> <Hash<String, AnyOfobjectobject>> get_tx_list_details(tx_id, opts)

Get list of details for transactions

Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
tx_id = ['inner_example'] # Array<String> | Array of transaction ids
opts = {
  event_offset: 56, # Integer | The number of events to skip
  event_limit: 56, # Integer | The numbers of events to return
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get list of details for transactions
  result = api_instance.get_tx_list_details(tx_id, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_tx_list_details: #{e}"
end
```

#### Using the get_tx_list_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, AnyOfobjectobject>>, Integer, Hash)> get_tx_list_details_with_http_info(tx_id, opts)

```ruby
begin
  # Get list of details for transactions
  data, status_code, headers = api_instance.get_tx_list_details_with_http_info(tx_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, AnyOfobjectobject>>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->get_tx_list_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tx_id** | [**Array&lt;String&gt;**](String.md) | Array of transaction ids |  |
| **event_offset** | **Integer** | The number of events to skip | [optional][default to 0] |
| **event_limit** | **Integer** | The numbers of events to return | [optional][default to 96] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

[**Hash&lt;String, AnyOfobjectobject&gt;**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_core_node_transactions

> String post_core_node_transactions(opts)

Broadcast raw transaction

Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::TransactionsApi.new
opts = {
  body: File.new('/path/to/some/file') # File | 
}

begin
  # Broadcast raw transaction
  result = api_instance.post_core_node_transactions(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->post_core_node_transactions: #{e}"
end
```

#### Using the post_core_node_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> post_core_node_transactions_with_http_info(opts)

```ruby
begin
  # Broadcast raw transaction
  data, status_code, headers = api_instance.post_core_node_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling TransactionsApi->post_core_node_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **File** |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: text/plain, application/json

