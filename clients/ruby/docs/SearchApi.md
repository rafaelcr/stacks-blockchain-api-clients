# StacksBlockchainApi::SearchApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_by_id**](SearchApi.md#search_by_id) | **GET** /extended/v1/search/{id} | Search |


## search_by_id

> <AnyOfobjectobject> search_by_id(id, opts)

Search

Search blocks, transactions, contracts, or accounts by hash/ID

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SearchApi.new
id = 'id_example' # String | The hex hash string for a block or transaction, account address, or contract address
opts = {
  include_metadata: true # Boolean | This includes the detailed data for purticular hash in the response
}

begin
  # Search
  result = api_instance.search_by_id(id, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SearchApi->search_by_id: #{e}"
end
```

#### Using the search_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobject>, Integer, Hash)> search_by_id_with_http_info(id, opts)

```ruby
begin
  # Search
  data, status_code, headers = api_instance.search_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobject>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SearchApi->search_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The hex hash string for a block or transaction, account address, or contract address |  |
| **include_metadata** | **Boolean** | This includes the detailed data for purticular hash in the response | [optional] |

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

