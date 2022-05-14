# StacksBlockchainApi::NonFungibleTokensApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contract_nft_metadata**](NonFungibleTokensApi.md#get_contract_nft_metadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id |
| [**get_nft_history**](NonFungibleTokensApi.md#get_nft_history) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history |
| [**get_nft_holdings**](NonFungibleTokensApi.md#get_nft_holdings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings |
| [**get_nft_metadata_list**](NonFungibleTokensApi.md#get_nft_metadata_list) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list |
| [**get_nft_mints**](NonFungibleTokensApi.md#get_nft_mints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints |


## get_contract_nft_metadata

> <NonFungibleTokenMetadata> get_contract_nft_metadata(contract_id)

Non fungible tokens metadata for contract id

Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NonFungibleTokensApi.new
contract_id = 'contract_id_example' # String | token's contract id

begin
  # Non fungible tokens metadata for contract id
  result = api_instance.get_contract_nft_metadata(contract_id)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_contract_nft_metadata: #{e}"
end
```

#### Using the get_contract_nft_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NonFungibleTokenMetadata>, Integer, Hash)> get_contract_nft_metadata_with_http_info(contract_id)

```ruby
begin
  # Non fungible tokens metadata for contract id
  data, status_code, headers = api_instance.get_contract_nft_metadata_with_http_info(contract_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NonFungibleTokenMetadata>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_contract_nft_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | token&#39;s contract id |  |

### Return type

[**NonFungibleTokenMetadata**](NonFungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nft_history

> <NonFungibleTokenHistoryEventList> get_nft_history(asset_identifier, value, opts)

Non-Fungible Token history

Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NonFungibleTokensApi.new
asset_identifier = 'SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild' # String | token asset class identifier
value = '0x0100000000000000000000000000000803' # String | hex representation of the token's unique value
opts = {
  limit: 56, # Integer | max number of events to fetch
  offset: 56, # Integer | index of first event to fetch
  unanchored: true, # Boolean | whether or not to include events from unconfirmed transactions
  tx_metadata: true # Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
}

begin
  # Non-Fungible Token history
  result = api_instance.get_nft_history(asset_identifier, value, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_history: #{e}"
end
```

#### Using the get_nft_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NonFungibleTokenHistoryEventList>, Integer, Hash)> get_nft_history_with_http_info(asset_identifier, value, opts)

```ruby
begin
  # Non-Fungible Token history
  data, status_code, headers = api_instance.get_nft_history_with_http_info(asset_identifier, value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NonFungibleTokenHistoryEventList>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_identifier** | **String** | token asset class identifier |  |
| **value** | **String** | hex representation of the token&#39;s unique value |  |
| **limit** | **Integer** | max number of events to fetch | [optional][default to 50] |
| **offset** | **Integer** | index of first event to fetch | [optional][default to 0] |
| **unanchored** | **Boolean** | whether or not to include events from unconfirmed transactions | [optional][default to false] |
| **tx_metadata** | **Boolean** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional][default to false] |

### Return type

[**NonFungibleTokenHistoryEventList**](NonFungibleTokenHistoryEventList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nft_holdings

> <NonFungibleTokenHoldingsList> get_nft_holdings(principal, opts)

Non-Fungible Token holdings

Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NonFungibleTokensApi.new
principal = 'SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S.marketplace-v3' # String | token owner's STX address or Smart Contract ID
opts = {
  asset_identifiers: ['inner_example'], # Array<String> | identifiers of the token asset classes to filter for
  limit: 56, # Integer | max number of tokens to fetch
  offset: 56, # Integer | index of first tokens to fetch
  unanchored: true, # Boolean | whether or not to include tokens from unconfirmed transactions
  tx_metadata: true # Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
}

begin
  # Non-Fungible Token holdings
  result = api_instance.get_nft_holdings(principal, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_holdings: #{e}"
end
```

#### Using the get_nft_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NonFungibleTokenHoldingsList>, Integer, Hash)> get_nft_holdings_with_http_info(principal, opts)

```ruby
begin
  # Non-Fungible Token holdings
  data, status_code, headers = api_instance.get_nft_holdings_with_http_info(principal, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NonFungibleTokenHoldingsList>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | token owner&#39;s STX address or Smart Contract ID |  |
| **asset_identifiers** | [**Array&lt;String&gt;**](String.md) | identifiers of the token asset classes to filter for | [optional] |
| **limit** | **Integer** | max number of tokens to fetch | [optional][default to 50] |
| **offset** | **Integer** | index of first tokens to fetch | [optional][default to 0] |
| **unanchored** | **Boolean** | whether or not to include tokens from unconfirmed transactions | [optional][default to false] |
| **tx_metadata** | **Boolean** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional][default to false] |

### Return type

[**NonFungibleTokenHoldingsList**](NonFungibleTokenHoldingsList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nft_metadata_list

> <NonFungibleTokensMetadataList> get_nft_metadata_list(opts)

Non fungible tokens metadata list

Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NonFungibleTokensApi.new
opts = {
  limit: 56, # Integer | max number of tokens to fetch
  offset: 56 # Integer | index of first tokens to fetch
}

begin
  # Non fungible tokens metadata list
  result = api_instance.get_nft_metadata_list(opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_metadata_list: #{e}"
end
```

#### Using the get_nft_metadata_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NonFungibleTokensMetadataList>, Integer, Hash)> get_nft_metadata_list_with_http_info(opts)

```ruby
begin
  # Non fungible tokens metadata list
  data, status_code, headers = api_instance.get_nft_metadata_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NonFungibleTokensMetadataList>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_metadata_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | max number of tokens to fetch | [optional] |
| **offset** | **Integer** | index of first tokens to fetch | [optional] |

### Return type

[**NonFungibleTokensMetadataList**](NonFungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nft_mints

> <NonFungibleTokenMintList> get_nft_mints(asset_identifier, opts)

Non-Fungible Token mints

Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::NonFungibleTokensApi.new
asset_identifier = 'SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild' # String | token asset class identifier
opts = {
  limit: 56, # Integer | max number of events to fetch
  offset: 56, # Integer | index of first event to fetch
  unanchored: true, # Boolean | whether or not to include events from unconfirmed transactions
  tx_metadata: true # Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
}

begin
  # Non-Fungible Token mints
  result = api_instance.get_nft_mints(asset_identifier, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_mints: #{e}"
end
```

#### Using the get_nft_mints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NonFungibleTokenMintList>, Integer, Hash)> get_nft_mints_with_http_info(asset_identifier, opts)

```ruby
begin
  # Non-Fungible Token mints
  data, status_code, headers = api_instance.get_nft_mints_with_http_info(asset_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NonFungibleTokenMintList>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling NonFungibleTokensApi->get_nft_mints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_identifier** | **String** | token asset class identifier |  |
| **limit** | **Integer** | max number of events to fetch | [optional][default to 50] |
| **offset** | **Integer** | index of first event to fetch | [optional][default to 0] |
| **unanchored** | **Boolean** | whether or not to include events from unconfirmed transactions | [optional][default to false] |
| **tx_metadata** | **Boolean** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional][default to false] |

### Return type

[**NonFungibleTokenMintList**](NonFungibleTokenMintList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

