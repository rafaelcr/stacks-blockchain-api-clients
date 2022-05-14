# StacksBlockchainApi::MicroblocksApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_microblock_by_hash**](MicroblocksApi.md#get_microblock_by_hash) | **GET** /extended/v1/microblock/{hash} | Get microblock |
| [**get_microblock_list**](MicroblocksApi.md#get_microblock_list) | **GET** /extended/v1/microblock | Get recent microblocks |
| [**get_unanchored_txs**](MicroblocksApi.md#get_unanchored_txs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks |


## get_microblock_by_hash

> <Microblock> get_microblock_by_hash(hash)

Get microblock

Retrieves a specific microblock by `hash`

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::MicroblocksApi.new
hash = 'hash_example' # String | Hash of the microblock

begin
  # Get microblock
  result = api_instance.get_microblock_by_hash(hash)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_microblock_by_hash: #{e}"
end
```

#### Using the get_microblock_by_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Microblock>, Integer, Hash)> get_microblock_by_hash_with_http_info(hash)

```ruby
begin
  # Get microblock
  data, status_code, headers = api_instance.get_microblock_by_hash_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Microblock>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_microblock_by_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Hash of the microblock |  |

### Return type

[**Microblock**](Microblock.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_microblock_list

> <MicroblockListResponse> get_microblock_list(opts)

Get recent microblocks

Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::MicroblocksApi.new
opts = {
  limit: 56, # Integer | Max number of microblocks to fetch
  offset: 56 # Integer | Index of the first microblock to fetch
}

begin
  # Get recent microblocks
  result = api_instance.get_microblock_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_microblock_list: #{e}"
end
```

#### Using the get_microblock_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicroblockListResponse>, Integer, Hash)> get_microblock_list_with_http_info(opts)

```ruby
begin
  # Get recent microblocks
  data, status_code, headers = api_instance.get_microblock_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicroblockListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_microblock_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max number of microblocks to fetch | [optional][default to 20] |
| **offset** | **Integer** | Index of the first microblock to fetch | [optional] |

### Return type

[**MicroblockListResponse**](MicroblockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unanchored_txs

> <UnanchoredTransactionListResponse> get_unanchored_txs

Get the list of current transactions that belong to unanchored microblocks

Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::MicroblocksApi.new

begin
  # Get the list of current transactions that belong to unanchored microblocks
  result = api_instance.get_unanchored_txs
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_unanchored_txs: #{e}"
end
```

#### Using the get_unanchored_txs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnanchoredTransactionListResponse>, Integer, Hash)> get_unanchored_txs_with_http_info

```ruby
begin
  # Get the list of current transactions that belong to unanchored microblocks
  data, status_code, headers = api_instance.get_unanchored_txs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnanchoredTransactionListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling MicroblocksApi->get_unanchored_txs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UnanchoredTransactionListResponse**](UnanchoredTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

