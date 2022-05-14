# StacksBlockchainApi::InfoApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_core_api_info**](InfoApi.md#get_core_api_info) | **GET** /v2/info | Get Core API info |
| [**get_network_block_time_by_network**](InfoApi.md#get_network_block_time_by_network) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network&#39;s target block time |
| [**get_network_block_times**](InfoApi.md#get_network_block_times) | **GET** /extended/v1/info/network_block_times | Get the network target block time |
| [**get_pox_info**](InfoApi.md#get_pox_info) | **GET** /v2/pox | Get Proof-of-Transfer details |
| [**get_status**](InfoApi.md#get_status) | **GET** /extended/v1/status | API status |
| [**get_stx_supply**](InfoApi.md#get_stx_supply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply |
| [**get_stx_supply_circulating_plain**](InfoApi.md#get_stx_supply_circulating_plain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format |
| [**get_stx_supply_total_supply_plain**](InfoApi.md#get_stx_supply_total_supply_plain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format |
| [**get_total_stx_supply_legacy_format**](InfoApi.md#get_total_stx_supply_legacy_format) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API) |


## get_core_api_info

> <CoreNodeInfoResponse> get_core_api_info

Get Core API info

Retrieves information about the Core API including the server version

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # Get Core API info
  result = api_instance.get_core_api_info
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_core_api_info: #{e}"
end
```

#### Using the get_core_api_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreNodeInfoResponse>, Integer, Hash)> get_core_api_info_with_http_info

```ruby
begin
  # Get Core API info
  data, status_code, headers = api_instance.get_core_api_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreNodeInfoResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_core_api_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CoreNodeInfoResponse**](CoreNodeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_block_time_by_network

> Object get_network_block_time_by_network(network)

Get a given network's target block time

Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new
network = 'testnet' # String | Which network to retrieve the target block time of

begin
  # Get a given network's target block time
  result = api_instance.get_network_block_time_by_network(network)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_network_block_time_by_network: #{e}"
end
```

#### Using the get_network_block_time_by_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_network_block_time_by_network_with_http_info(network)

```ruby
begin
  # Get a given network's target block time
  data, status_code, headers = api_instance.get_network_block_time_by_network_with_http_info(network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_network_block_time_by_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Which network to retrieve the target block time of |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_block_times

> <NetworkBlockTimesResponse> get_network_block_times

Get the network target block time

Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # Get the network target block time
  result = api_instance.get_network_block_times
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_network_block_times: #{e}"
end
```

#### Using the get_network_block_times_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkBlockTimesResponse>, Integer, Hash)> get_network_block_times_with_http_info

```ruby
begin
  # Get the network target block time
  data, status_code, headers = api_instance.get_network_block_times_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkBlockTimesResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_network_block_times_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NetworkBlockTimesResponse**](NetworkBlockTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pox_info

> <CoreNodePoxResponse> get_pox_info

Get Proof-of-Transfer details

Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # Get Proof-of-Transfer details
  result = api_instance.get_pox_info
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_pox_info: #{e}"
end
```

#### Using the get_pox_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreNodePoxResponse>, Integer, Hash)> get_pox_info_with_http_info

```ruby
begin
  # Get Proof-of-Transfer details
  data, status_code, headers = api_instance.get_pox_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreNodePoxResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_pox_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CoreNodePoxResponse**](CoreNodePoxResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status

> <ServerStatusResponse> get_status

API status

Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # API status
  result = api_instance.get_status
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerStatusResponse>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # API status
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerStatusResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServerStatusResponse**](ServerStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stx_supply

> <GetStxSupplyResponse> get_stx_supply(opts)

Get total and unlocked STX supply

Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new
opts = {
  height: 8.14 # Float | The block height at which to query supply details from, if not provided then the latest block height is used
}

begin
  # Get total and unlocked STX supply
  result = api_instance.get_stx_supply(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply: #{e}"
end
```

#### Using the get_stx_supply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStxSupplyResponse>, Integer, Hash)> get_stx_supply_with_http_info(opts)

```ruby
begin
  # Get total and unlocked STX supply
  data, status_code, headers = api_instance.get_stx_supply_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStxSupplyResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Float** | The block height at which to query supply details from, if not provided then the latest block height is used | [optional] |

### Return type

[**GetStxSupplyResponse**](GetStxSupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stx_supply_circulating_plain

> String get_stx_supply_circulating_plain

Get circulating STX supply in plain text format

Retrieves the STX tokens currently in circulation that have been unlocked as plain text.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # Get circulating STX supply in plain text format
  result = api_instance.get_stx_supply_circulating_plain
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply_circulating_plain: #{e}"
end
```

#### Using the get_stx_supply_circulating_plain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_stx_supply_circulating_plain_with_http_info

```ruby
begin
  # Get circulating STX supply in plain text format
  data, status_code, headers = api_instance.get_stx_supply_circulating_plain_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply_circulating_plain_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_stx_supply_total_supply_plain

> String get_stx_supply_total_supply_plain

Get total STX supply in plain text format

Retrieves the total supply for STX tokens as plain text.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new

begin
  # Get total STX supply in plain text format
  result = api_instance.get_stx_supply_total_supply_plain
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply_total_supply_plain: #{e}"
end
```

#### Using the get_stx_supply_total_supply_plain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_stx_supply_total_supply_plain_with_http_info

```ruby
begin
  # Get total STX supply in plain text format
  data, status_code, headers = api_instance.get_stx_supply_total_supply_plain_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_stx_supply_total_supply_plain_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_total_stx_supply_legacy_format

> <GetStxSupplyLegacyFormatResponse> get_total_stx_supply_legacy_format(opts)

Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)

Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::InfoApi.new
opts = {
  height: 8.14 # Float | The block height at which to query supply details from, if not provided then the latest block height is used
}

begin
  # Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
  result = api_instance.get_total_stx_supply_legacy_format(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_total_stx_supply_legacy_format: #{e}"
end
```

#### Using the get_total_stx_supply_legacy_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStxSupplyLegacyFormatResponse>, Integer, Hash)> get_total_stx_supply_legacy_format_with_http_info(opts)

```ruby
begin
  # Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
  data, status_code, headers = api_instance.get_total_stx_supply_legacy_format_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStxSupplyLegacyFormatResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling InfoApi->get_total_stx_supply_legacy_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Float** | The block height at which to query supply details from, if not provided then the latest block height is used | [optional] |

### Return type

[**GetStxSupplyLegacyFormatResponse**](GetStxSupplyLegacyFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

