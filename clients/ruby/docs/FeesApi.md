# StacksBlockchainApi::FeesApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_fee_rate**](FeesApi.md#fetch_fee_rate) | **POST** /extended/v1/fee_rate | fetch fee rate |
| [**get_fee_transfer**](FeesApi.md#get_fee_transfer) | **GET** /v2/fees/transfer | Get estimated fee |


## fetch_fee_rate

> <FeeRate> fetch_fee_rate(fee_rate_request)

fetch fee rate

Retrieves estimated fee rate.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FeesApi.new
fee_rate_request = StacksBlockchainApi::FeeRateRequest.new({transaction: 'transaction_example'}) # FeeRateRequest | 

begin
  # fetch fee rate
  result = api_instance.fetch_fee_rate(fee_rate_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FeesApi->fetch_fee_rate: #{e}"
end
```

#### Using the fetch_fee_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeRate>, Integer, Hash)> fetch_fee_rate_with_http_info(fee_rate_request)

```ruby
begin
  # fetch fee rate
  data, status_code, headers = api_instance.fetch_fee_rate_with_http_info(fee_rate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeRate>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FeesApi->fetch_fee_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_rate_request** | [**FeeRateRequest**](FeeRateRequest.md) |  |  |

### Return type

[**FeeRate**](FeeRate.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_fee_transfer

> Object get_fee_transfer

Get estimated fee

Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FeesApi.new

begin
  # Get estimated fee
  result = api_instance.get_fee_transfer
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FeesApi->get_fee_transfer: #{e}"
end
```

#### Using the get_fee_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_fee_transfer_with_http_info

```ruby
begin
  # Get estimated fee
  data, status_code, headers = api_instance.get_fee_transfer_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FeesApi->get_fee_transfer_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

