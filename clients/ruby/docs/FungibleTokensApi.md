# StacksBlockchainApi::FungibleTokensApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contract_ft_metadata**](FungibleTokensApi.md#get_contract_ft_metadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id |
| [**get_ft_metadata_list**](FungibleTokensApi.md#get_ft_metadata_list) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list |


## get_contract_ft_metadata

> <FungibleTokenMetadata> get_contract_ft_metadata(contract_id)

Fungible tokens metadata for contract id

Retrieves the metadata for fungible tokens for a given contract id

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FungibleTokensApi.new
contract_id = 'contract_id_example' # String | token's contract id

begin
  # Fungible tokens metadata for contract id
  result = api_instance.get_contract_ft_metadata(contract_id)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FungibleTokensApi->get_contract_ft_metadata: #{e}"
end
```

#### Using the get_contract_ft_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FungibleTokenMetadata>, Integer, Hash)> get_contract_ft_metadata_with_http_info(contract_id)

```ruby
begin
  # Fungible tokens metadata for contract id
  data, status_code, headers = api_instance.get_contract_ft_metadata_with_http_info(contract_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FungibleTokenMetadata>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FungibleTokensApi->get_contract_ft_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | token&#39;s contract id |  |

### Return type

[**FungibleTokenMetadata**](FungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ft_metadata_list

> <FungibleTokensMetadataList> get_ft_metadata_list(opts)

Fungible tokens metadata list

Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FungibleTokensApi.new
opts = {
  limit: 56, # Integer | max number of tokens to fetch
  offset: 56 # Integer | index of first tokens to fetch
}

begin
  # Fungible tokens metadata list
  result = api_instance.get_ft_metadata_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FungibleTokensApi->get_ft_metadata_list: #{e}"
end
```

#### Using the get_ft_metadata_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FungibleTokensMetadataList>, Integer, Hash)> get_ft_metadata_list_with_http_info(opts)

```ruby
begin
  # Fungible tokens metadata list
  data, status_code, headers = api_instance.get_ft_metadata_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FungibleTokensMetadataList>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FungibleTokensApi->get_ft_metadata_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of tokens to fetch | [optional] |
| **offset** | **Integer** | index of first tokens to fetch | [optional] |

### Return type

[**FungibleTokensMetadataList**](FungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

