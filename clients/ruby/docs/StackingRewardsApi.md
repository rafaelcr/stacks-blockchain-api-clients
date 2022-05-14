# StacksBlockchainApi::StackingRewardsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_burnchain_reward_list**](StackingRewardsApi.md#get_burnchain_reward_list) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients |
| [**get_burnchain_reward_list_by_address**](StackingRewardsApi.md#get_burnchain_reward_list_by_address) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient |
| [**get_burnchain_reward_slot_holders**](StackingRewardsApi.md#get_burnchain_reward_slot_holders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders |
| [**get_burnchain_reward_slot_holders_by_address**](StackingRewardsApi.md#get_burnchain_reward_slot_holders_by_address) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address |
| [**get_burnchain_rewards_total_by_address**](StackingRewardsApi.md#get_burnchain_rewards_total_by_address) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient |


## get_burnchain_reward_list

> <BurnchainRewardListResponse> get_burnchain_reward_list(opts)

Get recent burnchain reward recipients

Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::StackingRewardsApi.new
opts = {
  limit: 56, # Integer | max number of rewards to fetch
  offset: 56 # Integer | index of first rewards to fetch
}

begin
  # Get recent burnchain reward recipients
  result = api_instance.get_burnchain_reward_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_list: #{e}"
end
```

#### Using the get_burnchain_reward_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BurnchainRewardListResponse>, Integer, Hash)> get_burnchain_reward_list_with_http_info(opts)

```ruby
begin
  # Get recent burnchain reward recipients
  data, status_code, headers = api_instance.get_burnchain_reward_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BurnchainRewardListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of rewards to fetch | [optional][default to 96] |
| **offset** | **Integer** | index of first rewards to fetch | [optional] |

### Return type

[**BurnchainRewardListResponse**](BurnchainRewardListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_burnchain_reward_list_by_address

> Object get_burnchain_reward_list_by_address(address, opts)

Get recent burnchain reward for the given recipient

Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::StackingRewardsApi.new
address = 'address_example' # String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
opts = {
  limit: 56, # Integer | max number of rewards to fetch
  offset: 56 # Integer | index of first rewards to fetch
}

begin
  # Get recent burnchain reward for the given recipient
  result = api_instance.get_burnchain_reward_list_by_address(address, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_list_by_address: #{e}"
end
```

#### Using the get_burnchain_reward_list_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_burnchain_reward_list_by_address_with_http_info(address, opts)

```ruby
begin
  # Get recent burnchain reward for the given recipient
  data, status_code, headers = api_instance.get_burnchain_reward_list_by_address_with_http_info(address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_list_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |  |
| **limit** | **Integer** | max number of rewards to fetch | [optional] |
| **offset** | **Integer** | index of first rewards to fetch | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_burnchain_reward_slot_holders

> <BurnchainRewardSlotHolderListResponse> get_burnchain_reward_slot_holders(opts)

Get recent reward slot holders

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::StackingRewardsApi.new
opts = {
  limit: 56, # Integer | max number of items to fetch
  offset: 56 # Integer | index of the first items to fetch
}

begin
  # Get recent reward slot holders
  result = api_instance.get_burnchain_reward_slot_holders(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_slot_holders: #{e}"
end
```

#### Using the get_burnchain_reward_slot_holders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BurnchainRewardSlotHolderListResponse>, Integer, Hash)> get_burnchain_reward_slot_holders_with_http_info(opts)

```ruby
begin
  # Get recent reward slot holders
  data, status_code, headers = api_instance.get_burnchain_reward_slot_holders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BurnchainRewardSlotHolderListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_slot_holders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of items to fetch | [optional][default to 96] |
| **offset** | **Integer** | index of the first items to fetch | [optional] |

### Return type

[**BurnchainRewardSlotHolderListResponse**](BurnchainRewardSlotHolderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_burnchain_reward_slot_holders_by_address

> Object get_burnchain_reward_slot_holders_by_address(address, opts)

Get recent reward slot holder entries for the given address

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::StackingRewardsApi.new
address = 'address_example' # String | Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
opts = {
  limit: 56, # Integer | max number of items to fetch
  offset: 56 # Integer | index of the first items to fetch
}

begin
  # Get recent reward slot holder entries for the given address
  result = api_instance.get_burnchain_reward_slot_holders_by_address(address, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_slot_holders_by_address: #{e}"
end
```

#### Using the get_burnchain_reward_slot_holders_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_burnchain_reward_slot_holders_by_address_with_http_info(address, opts)

```ruby
begin
  # Get recent reward slot holder entries for the given address
  data, status_code, headers = api_instance.get_burnchain_reward_slot_holders_by_address_with_http_info(address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_reward_slot_holders_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Reward slot holder recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |  |
| **limit** | **Integer** | max number of items to fetch | [optional] |
| **offset** | **Integer** | index of the first items to fetch | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_burnchain_rewards_total_by_address

> <BurnchainRewardsTotal> get_burnchain_rewards_total_by_address(address)

Get total burnchain rewards for the given recipient

Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::StackingRewardsApi.new
address = 'address_example' # String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format

begin
  # Get total burnchain rewards for the given recipient
  result = api_instance.get_burnchain_rewards_total_by_address(address)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_rewards_total_by_address: #{e}"
end
```

#### Using the get_burnchain_rewards_total_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BurnchainRewardsTotal>, Integer, Hash)> get_burnchain_rewards_total_by_address_with_http_info(address)

```ruby
begin
  # Get total burnchain rewards for the given recipient
  data, status_code, headers = api_instance.get_burnchain_rewards_total_by_address_with_http_info(address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BurnchainRewardsTotal>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling StackingRewardsApi->get_burnchain_rewards_total_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |  |

### Return type

[**BurnchainRewardsTotal**](BurnchainRewardsTotal.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

