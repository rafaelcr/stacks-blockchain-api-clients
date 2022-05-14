# StacksBlockchainApi::FaucetsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**run_faucet_btc**](FaucetsApi.md#run_faucet_btc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address |
| [**run_faucet_stx**](FaucetsApi.md#run_faucet_stx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens |


## run_faucet_btc

> Object run_faucet_btc(address, opts)

Add testnet BTC tokens to address

Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FaucetsApi.new
address = '2N4M94S1ZPt8HfxydXzL2P7qyzgVq7MHWts' # String | A valid testnet BTC address
opts = {
  inline_object1: StacksBlockchainApi::InlineObject1.new # InlineObject1 | 
}

begin
  # Add testnet BTC tokens to address
  result = api_instance.run_faucet_btc(address, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FaucetsApi->run_faucet_btc: #{e}"
end
```

#### Using the run_faucet_btc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> run_faucet_btc_with_http_info(address, opts)

```ruby
begin
  # Add testnet BTC tokens to address
  data, status_code, headers = api_instance.run_faucet_btc_with_http_info(address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FaucetsApi->run_faucet_btc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | A valid testnet BTC address |  |
| **inline_object1** | [**InlineObject1**](InlineObject1.md) |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_faucet_stx

> <RunFaucetResponse> run_faucet_stx(address, opts)

Get STX testnet tokens

Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::FaucetsApi.new
address = 'ST3M7N9Q9HDRM7RVP1Q26P0EE69358PZZAZD7KMXQ' # String | A valid testnet STX address
opts = {
  stacking: true, # Boolean | Request the amount of STX tokens needed for individual address stacking
  inline_object: StacksBlockchainApi::InlineObject.new # InlineObject | 
}

begin
  # Get STX testnet tokens
  result = api_instance.run_faucet_stx(address, opts)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FaucetsApi->run_faucet_stx: #{e}"
end
```

#### Using the run_faucet_stx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunFaucetResponse>, Integer, Hash)> run_faucet_stx_with_http_info(address, opts)

```ruby
begin
  # Get STX testnet tokens
  data, status_code, headers = api_instance.run_faucet_stx_with_http_info(address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunFaucetResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling FaucetsApi->run_faucet_stx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | A valid testnet STX address |  |
| **stacking** | **Boolean** | Request the amount of STX tokens needed for individual address stacking | [optional][default to false] |
| **inline_object** | [**InlineObject**](InlineObject.md) |  | [optional] |

### Return type

[**RunFaucetResponse**](RunFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

