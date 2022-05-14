# StacksBlockchainApi::NamesApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_zone_file**](NamesApi.md#fetch_zone_file) | **GET** /v1/names/{name}/zonefile | Get Zone File |
| [**get_all_names**](NamesApi.md#get_all_names) | **GET** /v1/names | Get All Names |
| [**get_all_namespaces**](NamesApi.md#get_all_namespaces) | **GET** /v1/namespaces | Get All Namespaces |
| [**get_historical_zone_file**](NamesApi.md#get_historical_zone_file) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File |
| [**get_name_history**](NamesApi.md#get_name_history) | **GET** /v1/names/{name}/history | Get Name History |
| [**get_name_info**](NamesApi.md#get_name_info) | **GET** /v1/names/{name} | Get Name Details |
| [**get_name_price**](NamesApi.md#get_name_price) | **GET** /v2/prices/names/{name} | Get Name Price |
| [**get_names_owned_by_address**](NamesApi.md#get_names_owned_by_address) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address |
| [**get_namespace_names**](NamesApi.md#get_namespace_names) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names |
| [**get_namespace_price**](NamesApi.md#get_namespace_price) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price |


## fetch_zone_file

> <AnyOfobjectobject> fetch_zone_file(name)

Get Zone File

Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
name = 'bar.test' # String | fully-qualified name

begin
  # Get Zone File
  result = api_instance.fetch_zone_file(name)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->fetch_zone_file: #{e}"
end
```

#### Using the fetch_zone_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobject>, Integer, Hash)> fetch_zone_file_with_http_info(name)

```ruby
begin
  # Get Zone File
  data, status_code, headers = api_instance.fetch_zone_file_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobject>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->fetch_zone_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | fully-qualified name |  |

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_names

> Array&lt;String&gt; get_all_names(page)

Get All Names

Retrieves a list of all names known to the node.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
page = 23 # Integer | names are returned in pages of size 100, so specify the page number.

begin
  # Get All Names
  result = api_instance.get_all_names(page)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_all_names: #{e}"
end
```

#### Using the get_all_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_all_names_with_http_info(page)

```ruby
begin
  # Get All Names
  data, status_code, headers = api_instance.get_all_names_with_http_info(page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_all_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | names are returned in pages of size 100, so specify the page number. |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_namespaces

> <BnsGetAllNamespacesResponse> get_all_namespaces

Get All Namespaces

Retrieves a list of all namespaces known to the node.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new

begin
  # Get All Namespaces
  result = api_instance.get_all_namespaces
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_all_namespaces: #{e}"
end
```

#### Using the get_all_namespaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BnsGetAllNamespacesResponse>, Integer, Hash)> get_all_namespaces_with_http_info

```ruby
begin
  # Get All Namespaces
  data, status_code, headers = api_instance.get_all_namespaces_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BnsGetAllNamespacesResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_all_namespaces_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BnsGetAllNamespacesResponse**](BnsGetAllNamespacesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_historical_zone_file

> <AnyOfobjectobject> get_historical_zone_file(name, zone_file_hash)

Get Historical Zone File

Retrieves the historical zonefile specified by the username and zone hash.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
name = 'muneeb.id' # String | fully-qualified name
zone_file_hash = 'b100a68235244b012854a95f9114695679002af9' # String | zone file hash

begin
  # Get Historical Zone File
  result = api_instance.get_historical_zone_file(name, zone_file_hash)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_historical_zone_file: #{e}"
end
```

#### Using the get_historical_zone_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobject>, Integer, Hash)> get_historical_zone_file_with_http_info(name, zone_file_hash)

```ruby
begin
  # Get Historical Zone File
  data, status_code, headers = api_instance.get_historical_zone_file_with_http_info(name, zone_file_hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobject>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_historical_zone_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | fully-qualified name |  |
| **zone_file_hash** | **String** | zone file hash |  |

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_name_history

> Object get_name_history(name, page)

Get Name History

Retrieves a history of all blockchain records of a registered name.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
name = 'muneeb.id' # String | name to query
page = 0 # Integer | the page (in 20-entry pages) of the history to fetch

begin
  # Get Name History
  result = api_instance.get_name_history(name, page)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_history: #{e}"
end
```

#### Using the get_name_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_name_history_with_http_info(name, page)

```ruby
begin
  # Get Name History
  data, status_code, headers = api_instance.get_name_history_with_http_info(name, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name to query |  |
| **page** | **Integer** | the page (in 20-entry pages) of the history to fetch |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_name_info

> <BnsGetNameInfoResponse> get_name_info(name)

Get Name Details

Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
name = 'muneeb.id' # String | fully-qualified name

begin
  # Get Name Details
  result = api_instance.get_name_info(name)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_info: #{e}"
end
```

#### Using the get_name_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BnsGetNameInfoResponse>, Integer, Hash)> get_name_info_with_http_info(name)

```ruby
begin
  # Get Name Details
  data, status_code, headers = api_instance.get_name_info_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BnsGetNameInfoResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | fully-qualified name |  |

### Return type

[**BnsGetNameInfoResponse**](BnsGetNameInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_name_price

> <BnsGetNamePriceResponse> get_name_price(name)

Get Name Price

Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
name = 'muneeb.id' # String | the name to query price information for

begin
  # Get Name Price
  result = api_instance.get_name_price(name)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_price: #{e}"
end
```

#### Using the get_name_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BnsGetNamePriceResponse>, Integer, Hash)> get_name_price_with_http_info(name)

```ruby
begin
  # Get Name Price
  data, status_code, headers = api_instance.get_name_price_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BnsGetNamePriceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_name_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | the name to query price information for |  |

### Return type

[**BnsGetNamePriceResponse**](BnsGetNamePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_names_owned_by_address

> <BnsNamesOwnByAddressResponse> get_names_owned_by_address(blockchain, address)

Get Names Owned by Address

Retrieves a list of names owned by the address provided.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
blockchain = 'bitcoin' # String | the layer-1 blockchain for the address
address = '1QJQxDas5JhdiXhEbNS14iNjr8auFT96GP' # String | the address to lookup

begin
  # Get Names Owned by Address
  result = api_instance.get_names_owned_by_address(blockchain, address)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_names_owned_by_address: #{e}"
end
```

#### Using the get_names_owned_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BnsNamesOwnByAddressResponse>, Integer, Hash)> get_names_owned_by_address_with_http_info(blockchain, address)

```ruby
begin
  # Get Names Owned by Address
  data, status_code, headers = api_instance.get_names_owned_by_address_with_http_info(blockchain, address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BnsNamesOwnByAddressResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_names_owned_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | the layer-1 blockchain for the address |  |
| **address** | **String** | the address to lookup |  |

### Return type

[**BnsNamesOwnByAddressResponse**](BnsNamesOwnByAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_namespace_names

> Array&lt;String&gt; get_namespace_names(tld, page)

Get Namespace Names

Retrieves a list of names within a given namespace.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
tld = 'id' # String | the namespace to fetch names from
page = 23 # Integer | names are returned in pages of size 100, so specify the page number.

begin
  # Get Namespace Names
  result = api_instance.get_namespace_names(tld, page)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_namespace_names: #{e}"
end
```

#### Using the get_namespace_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_namespace_names_with_http_info(tld, page)

```ruby
begin
  # Get Namespace Names
  data, status_code, headers = api_instance.get_namespace_names_with_http_info(tld, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_namespace_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tld** | **String** | the namespace to fetch names from |  |
| **page** | **Integer** | names are returned in pages of size 100, so specify the page number. |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_namespace_price

> <BnsGetNamespacePriceResponse> get_namespace_price(tld)

Get Namespace Price

Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NamesApi.new
tld = 'id' # String | the namespace to fetch price for

begin
  # Get Namespace Price
  result = api_instance.get_namespace_price(tld)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_namespace_price: #{e}"
end
```

#### Using the get_namespace_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BnsGetNamespacePriceResponse>, Integer, Hash)> get_namespace_price_with_http_info(tld)

```ruby
begin
  # Get Namespace Price
  data, status_code, headers = api_instance.get_namespace_price_with_http_info(tld)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BnsGetNamespacePriceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NamesApi->get_namespace_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tld** | **String** | the namespace to fetch price for |  |

### Return type

[**BnsGetNamespacePriceResponse**](BnsGetNamespacePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

