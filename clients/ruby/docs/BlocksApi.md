# StacksBlockchainApi::BlocksApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_block_by_burn_block_hash**](BlocksApi.md#get_block_by_burn_block_hash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash |
| [**get_block_by_burn_block_height**](BlocksApi.md#get_block_by_burn_block_height) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height |
| [**get_block_by_hash**](BlocksApi.md#get_block_by_hash) | **GET** /extended/v1/block/{hash} | Get block by hash |
| [**get_block_by_height**](BlocksApi.md#get_block_by_height) | **GET** /extended/v1/block/by_height/{height} | Get block by height |
| [**get_block_list**](BlocksApi.md#get_block_list) | **GET** /extended/v1/block | Get recent blocks |


## get_block_by_burn_block_hash

> Object get_block_by_burn_block_hash(burn_block_hash)

Get block by burnchain block hash

Retrieves block details of a specific block for a given burnchain block hash

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::BlocksApi.new
burn_block_hash = 'burn_block_hash_example' # String | Hash of the burnchain block

begin
  # Get block by burnchain block hash
  result = api_instance.get_block_by_burn_block_hash(burn_block_hash)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_burn_block_hash: #{e}"
end
```

#### Using the get_block_by_burn_block_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_block_by_burn_block_hash_with_http_info(burn_block_hash)

```ruby
begin
  # Get block by burnchain block hash
  data, status_code, headers = api_instance.get_block_by_burn_block_hash_with_http_info(burn_block_hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_burn_block_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **burn_block_hash** | **String** | Hash of the burnchain block |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_by_burn_block_height

> Object get_block_by_burn_block_height(burn_block_height)

Get block by burnchain height

Retrieves block details of a specific block for a given burn chain height

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::BlocksApi.new
burn_block_height = 8.14 # Float | Height of the burn chain block

begin
  # Get block by burnchain height
  result = api_instance.get_block_by_burn_block_height(burn_block_height)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_burn_block_height: #{e}"
end
```

#### Using the get_block_by_burn_block_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_block_by_burn_block_height_with_http_info(burn_block_height)

```ruby
begin
  # Get block by burnchain height
  data, status_code, headers = api_instance.get_block_by_burn_block_height_with_http_info(burn_block_height)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_burn_block_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **burn_block_height** | **Float** | Height of the burn chain block |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_by_hash

> <Block> get_block_by_hash(hash)

Get block by hash

Retrieves block details of a specific block for a given chain height

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::BlocksApi.new
hash = 'hash_example' # String | Hash of the block

begin
  # Get block by hash
  result = api_instance.get_block_by_hash(hash)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_hash: #{e}"
end
```

#### Using the get_block_by_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Block>, Integer, Hash)> get_block_by_hash_with_http_info(hash)

```ruby
begin
  # Get block by hash
  data, status_code, headers = api_instance.get_block_by_hash_with_http_info(hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Block>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Hash of the block |  |

### Return type

[**Block**](Block.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_by_height

> Object get_block_by_height(height)

Get block by height

Retrieves block details of a specific block at a given block height

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::BlocksApi.new
height = 8.14 # Float | Height of the block

begin
  # Get block by height
  result = api_instance.get_block_by_height(height)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_height: #{e}"
end
```

#### Using the get_block_by_height_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_block_by_height_with_http_info(height)

```ruby
begin
  # Get block by height
  data, status_code, headers = api_instance.get_block_by_height_with_http_info(height)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_by_height_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Float** | Height of the block |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_block_list

> <BlockListResponse> get_block_list(opts)

Get recent blocks

Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::BlocksApi.new
opts = {
  limit: 56, # Integer | max number of blocks to fetch
  offset: 56 # Integer | index of first block to fetch
}

begin
  # Get recent blocks
  result = api_instance.get_block_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_list: #{e}"
end
```

#### Using the get_block_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockListResponse>, Integer, Hash)> get_block_list_with_http_info(opts)

```ruby
begin
  # Get recent blocks
  data, status_code, headers = api_instance.get_block_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling BlocksApi->get_block_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of blocks to fetch | [optional][default to 20] |
| **offset** | **Integer** | index of first block to fetch | [optional] |

### Return type

[**BlockListResponse**](BlockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

