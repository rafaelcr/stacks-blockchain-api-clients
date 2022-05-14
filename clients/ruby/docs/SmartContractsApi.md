# StacksBlockchainApi::SmartContractsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**call_read_only_function**](SmartContractsApi.md#call_read_only_function) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function |
| [**get_contract_by_id**](SmartContractsApi.md#get_contract_by_id) | **GET** /extended/v1/contract/{contract_id} | Get contract info |
| [**get_contract_data_map_entry**](SmartContractsApi.md#get_contract_data_map_entry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract |
| [**get_contract_events_by_id**](SmartContractsApi.md#get_contract_events_by_id) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events |
| [**get_contract_interface**](SmartContractsApi.md#get_contract_interface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface |
| [**get_contract_source**](SmartContractsApi.md#get_contract_source) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source |
| [**get_contracts_by_trait**](SmartContractsApi.md#get_contracts_by_trait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait |


## call_read_only_function

> <ReadOnlyFunctionSuccessResponse> call_read_only_function(contract_address, contract_name, function_name, read_only_function_args, opts)

Call read-only function

Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_address = 'contract_address_example' # String | Stacks address
contract_name = 'contract_name_example' # String | Contract name
function_name = 'function_name_example' # String | Function name
read_only_function_args = StacksBlockchainApi::ReadOnlyFunctionArgs.new({sender: 'sender_example', arguments: ['arguments_example']}) # ReadOnlyFunctionArgs | 
opts = {
  tip: 'tip_example' # String | The Stacks chain tip to query from
}

begin
  # Call read-only function
  result = api_instance.call_read_only_function(contract_address, contract_name, function_name, read_only_function_args, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->call_read_only_function: #{e}"
end
```

#### Using the call_read_only_function_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReadOnlyFunctionSuccessResponse>, Integer, Hash)> call_read_only_function_with_http_info(contract_address, contract_name, function_name, read_only_function_args, opts)

```ruby
begin
  # Call read-only function
  data, status_code, headers = api_instance.call_read_only_function_with_http_info(contract_address, contract_name, function_name, read_only_function_args, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReadOnlyFunctionSuccessResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->call_read_only_function_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Stacks address |  |
| **contract_name** | **String** | Contract name |  |
| **function_name** | **String** | Function name |  |
| **read_only_function_args** | [**ReadOnlyFunctionArgs**](ReadOnlyFunctionArgs.md) |  |  |
| **tip** | **String** | The Stacks chain tip to query from | [optional] |

### Return type

[**ReadOnlyFunctionSuccessResponse**](ReadOnlyFunctionSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_contract_by_id

> Object get_contract_by_id(contract_id, opts)

Get contract info

Retrieves details of a contract with a given `contract_id`

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_id = 'contract_id_example' # String | Contract identifier formatted as `<contract_address>.<contract_name>`
opts = {
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get contract info
  result = api_instance.get_contract_by_id(contract_id, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_by_id: #{e}"
end
```

#### Using the get_contract_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_contract_by_id_with_http_info(contract_id, opts)

```ruby
begin
  # Get contract info
  data, status_code, headers = api_instance.get_contract_by_id_with_http_info(contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |  |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contract_data_map_entry

> <MapEntryResponse> get_contract_data_map_entry(contract_address, contract_name, map_name, key, opts)

Get specific data-map inside a contract

Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_address = 'contract_address_example' # String | Stacks address
contract_name = 'contract_name_example' # String | Contract name
map_name = 'map_name_example' # String | Map name
key = 'key_example' # String | Hex string serialization of the lookup key (which should be a Clarity value)
opts = {
  proof: 56, # Integer | Returns object without the proof field when set to 0
  tip: 'tip_example' # String | The Stacks chain tip to query from
}

begin
  # Get specific data-map inside a contract
  result = api_instance.get_contract_data_map_entry(contract_address, contract_name, map_name, key, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_data_map_entry: #{e}"
end
```

#### Using the get_contract_data_map_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MapEntryResponse>, Integer, Hash)> get_contract_data_map_entry_with_http_info(contract_address, contract_name, map_name, key, opts)

```ruby
begin
  # Get specific data-map inside a contract
  data, status_code, headers = api_instance.get_contract_data_map_entry_with_http_info(contract_address, contract_name, map_name, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MapEntryResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_data_map_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Stacks address |  |
| **contract_name** | **String** | Contract name |  |
| **map_name** | **String** | Map name |  |
| **key** | **String** | Hex string serialization of the lookup key (which should be a Clarity value) |  |
| **proof** | **Integer** | Returns object without the proof field when set to 0 | [optional] |
| **tip** | **String** | The Stacks chain tip to query from | [optional] |

### Return type

[**MapEntryResponse**](MapEntryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_contract_events_by_id

> <AnyOfobjectobjectobjectobjectobject> get_contract_events_by_id(contract_id, opts)

Get contract events

Retrieves a list of events that have been triggered by a given `contract_id`

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_id = 'contract_id_example' # String | Contract identifier formatted as `<contract_address>.<contract_name>`
opts = {
  limit: 56, # Integer | max number of contract events to fetch
  offset: 56, # Integer | index of first contract event to fetch
  unanchored: true # Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
}

begin
  # Get contract events
  result = api_instance.get_contract_events_by_id(contract_id, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_events_by_id: #{e}"
end
```

#### Using the get_contract_events_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobjectobjectobjectobject>, Integer, Hash)> get_contract_events_by_id_with_http_info(contract_id, opts)

```ruby
begin
  # Get contract events
  data, status_code, headers = api_instance.get_contract_events_by_id_with_http_info(contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobjectobjectobjectobject>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_events_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |  |
| **limit** | **Integer** | max number of contract events to fetch | [optional] |
| **offset** | **Integer** | index of first contract event to fetch | [optional] |
| **unanchored** | **Boolean** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional][default to false] |

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contract_interface

> <ContractInterfaceResponse> get_contract_interface(contract_address, contract_name, opts)

Get contract interface

Retrieves a contract interface with a given `contract_address` and `contract name`

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_address = 'contract_address_example' # String | Stacks address
contract_name = 'contract_name_example' # String | Contract name
opts = {
  tip: 'tip_example' # String | The Stacks chain tip to query from
}

begin
  # Get contract interface
  result = api_instance.get_contract_interface(contract_address, contract_name, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_interface: #{e}"
end
```

#### Using the get_contract_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractInterfaceResponse>, Integer, Hash)> get_contract_interface_with_http_info(contract_address, contract_name, opts)

```ruby
begin
  # Get contract interface
  data, status_code, headers = api_instance.get_contract_interface_with_http_info(contract_address, contract_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractInterfaceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Stacks address |  |
| **contract_name** | **String** | Contract name |  |
| **tip** | **String** | The Stacks chain tip to query from | [optional] |

### Return type

[**ContractInterfaceResponse**](ContractInterfaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contract_source

> <ContractSourceResponse> get_contract_source(contract_address, contract_name, opts)

Get contract source

Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
contract_address = 'contract_address_example' # String | Stacks address
contract_name = 'contract_name_example' # String | Contract name
opts = {
  proof: 56, # Integer | Returns object without the proof field if set to 0
  tip: 'tip_example' # String | The Stacks chain tip to query from
}

begin
  # Get contract source
  result = api_instance.get_contract_source(contract_address, contract_name, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_source: #{e}"
end
```

#### Using the get_contract_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractSourceResponse>, Integer, Hash)> get_contract_source_with_http_info(contract_address, contract_name, opts)

```ruby
begin
  # Get contract source
  data, status_code, headers = api_instance.get_contract_source_with_http_info(contract_address, contract_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractSourceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contract_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Stacks address |  |
| **contract_name** | **String** | Contract name |  |
| **proof** | **Integer** | Returns object without the proof field if set to 0 | [optional] |
| **tip** | **String** | The Stacks chain tip to query from | [optional] |

### Return type

[**ContractSourceResponse**](ContractSourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_by_trait

> <ContractListResponse> get_contracts_by_trait(trait_abi, opts)

Get contracts by trait

Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::SmartContractsApi.new
trait_abi = 'trait_abi_example' # String | JSON abi of the trait.
opts = {
  limit: 56, # Integer | max number of contracts fetch
  offset: 56 # Integer | index of first contract event to fetch
}

begin
  # Get contracts by trait
  result = api_instance.get_contracts_by_trait(trait_abi, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contracts_by_trait: #{e}"
end
```

#### Using the get_contracts_by_trait_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractListResponse>, Integer, Hash)> get_contracts_by_trait_with_http_info(trait_abi, opts)

```ruby
begin
  # Get contracts by trait
  data, status_code, headers = api_instance.get_contracts_by_trait_with_http_info(trait_abi, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling SmartContractsApi->get_contracts_by_trait_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trait_abi** | **String** | JSON abi of the trait. |  |
| **limit** | **Integer** | max number of contracts fetch | [optional] |
| **offset** | **Integer** | index of first contract event to fetch | [optional] |

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

