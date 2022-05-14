# StacksBlockchainApi::RosettaApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rosetta_account_balance**](RosettaApi.md#rosetta_account_balance) | **POST** /rosetta/v1/account/balance | Get an Account Balance |
| [**rosetta_block**](RosettaApi.md#rosetta_block) | **POST** /rosetta/v1/block | Get a Block |
| [**rosetta_block_transaction**](RosettaApi.md#rosetta_block_transaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction |
| [**rosetta_construction_combine**](RosettaApi.md#rosetta_construction_combine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures |
| [**rosetta_construction_derive**](RosettaApi.md#rosetta_construction_derive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey |
| [**rosetta_construction_hash**](RosettaApi.md#rosetta_construction_hash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction |
| [**rosetta_construction_metadata**](RosettaApi.md#rosetta_construction_metadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction |
| [**rosetta_construction_parse**](RosettaApi.md#rosetta_construction_parse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction |
| [**rosetta_construction_payloads**](RosettaApi.md#rosetta_construction_payloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads |
| [**rosetta_construction_preprocess**](RosettaApi.md#rosetta_construction_preprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata |
| [**rosetta_construction_submit**](RosettaApi.md#rosetta_construction_submit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction |
| [**rosetta_mempool**](RosettaApi.md#rosetta_mempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions |
| [**rosetta_mempool_transaction**](RosettaApi.md#rosetta_mempool_transaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction |
| [**rosetta_network_list**](RosettaApi.md#rosetta_network_list) | **POST** /rosetta/v1/network/list | Get List of Available Networks |
| [**rosetta_network_options**](RosettaApi.md#rosetta_network_options) | **POST** /rosetta/v1/network/options | Get Network Options |
| [**rosetta_network_status**](RosettaApi.md#rosetta_network_status) | **POST** /rosetta/v1/network/status | Get Network Status |


## rosetta_account_balance

> <RosettaAccountBalanceResponse> rosetta_account_balance(rosetta_account_balance_request)

Get an Account Balance

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_account_balance_request = StacksBlockchainApi::RosettaAccountBalanceRequest.new({network_identifier: 3.56, account_identifier: StacksBlockchainApi::RosettaAccount.new({address: 'address_example'})}) # RosettaAccountBalanceRequest | 

begin
  # Get an Account Balance
  result = api_instance.rosetta_account_balance(rosetta_account_balance_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_account_balance: #{e}"
end
```

#### Using the rosetta_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaAccountBalanceResponse>, Integer, Hash)> rosetta_account_balance_with_http_info(rosetta_account_balance_request)

```ruby
begin
  # Get an Account Balance
  data, status_code, headers = api_instance.rosetta_account_balance_with_http_info(rosetta_account_balance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaAccountBalanceResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_account_balance_request** | [**RosettaAccountBalanceRequest**](RosettaAccountBalanceRequest.md) |  |  |

### Return type

[**RosettaAccountBalanceResponse**](RosettaAccountBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_block

> <RosettaBlockResponse> rosetta_block(rosetta_block_request)

Get a Block

Retrieves the Block information for a given block identifier including a list of all transactions in the block.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_block_request = StacksBlockchainApi::RosettaBlockRequest.new({network_identifier: 3.56, block_identifier: 3.56}) # RosettaBlockRequest | 

begin
  # Get a Block
  result = api_instance.rosetta_block(rosetta_block_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_block: #{e}"
end
```

#### Using the rosetta_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaBlockResponse>, Integer, Hash)> rosetta_block_with_http_info(rosetta_block_request)

```ruby
begin
  # Get a Block
  data, status_code, headers = api_instance.rosetta_block_with_http_info(rosetta_block_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaBlockResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_block_request** | [**RosettaBlockRequest**](RosettaBlockRequest.md) |  |  |

### Return type

[**RosettaBlockResponse**](RosettaBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_block_transaction

> <RosettaBlockTransactionResponse> rosetta_block_transaction(rosetta_block_transaction_request)

Get a Block Transaction

Retrieves a Transaction included in a block that is not returned in a BlockResponse.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_block_transaction_request = StacksBlockchainApi::RosettaBlockTransactionRequest.new({network_identifier: 3.56, block_identifier: 3.56, transaction_identifier: StacksBlockchainApi::TransactionIdentifier.new({hash: 'hash_example'})}) # RosettaBlockTransactionRequest | 

begin
  # Get a Block Transaction
  result = api_instance.rosetta_block_transaction(rosetta_block_transaction_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_block_transaction: #{e}"
end
```

#### Using the rosetta_block_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaBlockTransactionResponse>, Integer, Hash)> rosetta_block_transaction_with_http_info(rosetta_block_transaction_request)

```ruby
begin
  # Get a Block Transaction
  data, status_code, headers = api_instance.rosetta_block_transaction_with_http_info(rosetta_block_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaBlockTransactionResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_block_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_block_transaction_request** | [**RosettaBlockTransactionRequest**](RosettaBlockTransactionRequest.md) |  |  |

### Return type

[**RosettaBlockTransactionResponse**](RosettaBlockTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_combine

> <RosettaConstructionCombineResponse> rosetta_construction_combine(rosetta_construction_combine_request)

Create Network Transaction from Signatures

Take unsigned transaction and signature, combine both and return signed transaction

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_combine_request = StacksBlockchainApi::RosettaConstructionCombineRequest.new({network_identifier: 3.56, unsigned_transaction: 'unsigned_transaction_example', signatures: [StacksBlockchainApi::RosettaSignature.new({signing_payload: 3.56, public_key: 3.56, signature_type: 'ecdsa', hex_bytes: 'hex_bytes_example'})]}) # RosettaConstructionCombineRequest | 

begin
  # Create Network Transaction from Signatures
  result = api_instance.rosetta_construction_combine(rosetta_construction_combine_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_combine: #{e}"
end
```

#### Using the rosetta_construction_combine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionCombineResponse>, Integer, Hash)> rosetta_construction_combine_with_http_info(rosetta_construction_combine_request)

```ruby
begin
  # Create Network Transaction from Signatures
  data, status_code, headers = api_instance.rosetta_construction_combine_with_http_info(rosetta_construction_combine_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionCombineResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_combine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_combine_request** | [**RosettaConstructionCombineRequest**](RosettaConstructionCombineRequest.md) |  |  |

### Return type

[**RosettaConstructionCombineResponse**](RosettaConstructionCombineResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_derive

> <RosettaConstructionDeriveResponse> rosetta_construction_derive(rosetta_construction_derive_request)

Derive an AccountIdentifier from a PublicKey

Retrieves the Account Identifier information based on a Public Key for a given network

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_derive_request = StacksBlockchainApi::RosettaConstructionDeriveRequest.new({network_identifier: 3.56, public_key: StacksBlockchainApi::RosettaPublicKey.new({hex_bytes: 'hex_bytes_example', curve_type: 'secp256k1'})}) # RosettaConstructionDeriveRequest | 

begin
  # Derive an AccountIdentifier from a PublicKey
  result = api_instance.rosetta_construction_derive(rosetta_construction_derive_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_derive: #{e}"
end
```

#### Using the rosetta_construction_derive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionDeriveResponse>, Integer, Hash)> rosetta_construction_derive_with_http_info(rosetta_construction_derive_request)

```ruby
begin
  # Derive an AccountIdentifier from a PublicKey
  data, status_code, headers = api_instance.rosetta_construction_derive_with_http_info(rosetta_construction_derive_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionDeriveResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_derive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_derive_request** | [**RosettaConstructionDeriveRequest**](RosettaConstructionDeriveRequest.md) |  |  |

### Return type

[**RosettaConstructionDeriveResponse**](RosettaConstructionDeriveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_hash

> <RosettaConstructionHashResponse> rosetta_construction_hash(rosetta_construction_hash_request)

Get the Hash of a Signed Transaction

Retrieves the network-specific transaction hash for a signed transaction.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_hash_request = StacksBlockchainApi::RosettaConstructionHashRequest.new({network_identifier: 3.56, signed_transaction: 'signed_transaction_example'}) # RosettaConstructionHashRequest | 

begin
  # Get the Hash of a Signed Transaction
  result = api_instance.rosetta_construction_hash(rosetta_construction_hash_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_hash: #{e}"
end
```

#### Using the rosetta_construction_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionHashResponse>, Integer, Hash)> rosetta_construction_hash_with_http_info(rosetta_construction_hash_request)

```ruby
begin
  # Get the Hash of a Signed Transaction
  data, status_code, headers = api_instance.rosetta_construction_hash_with_http_info(rosetta_construction_hash_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionHashResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_hash_request** | [**RosettaConstructionHashRequest**](RosettaConstructionHashRequest.md) |  |  |

### Return type

[**RosettaConstructionHashResponse**](RosettaConstructionHashResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_metadata

> <RosettaConstructionMetadataResponse> rosetta_construction_metadata(rosetta_construction_metadata_request)

Get Metadata for Transaction Construction

To Do

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_metadata_request = StacksBlockchainApi::RosettaConstructionMetadataRequest.new({network_identifier: 3.56, options: StacksBlockchainApi::RosettaOptions.new}) # RosettaConstructionMetadataRequest | 

begin
  # Get Metadata for Transaction Construction
  result = api_instance.rosetta_construction_metadata(rosetta_construction_metadata_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_metadata: #{e}"
end
```

#### Using the rosetta_construction_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionMetadataResponse>, Integer, Hash)> rosetta_construction_metadata_with_http_info(rosetta_construction_metadata_request)

```ruby
begin
  # Get Metadata for Transaction Construction
  data, status_code, headers = api_instance.rosetta_construction_metadata_with_http_info(rosetta_construction_metadata_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionMetadataResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_metadata_request** | [**RosettaConstructionMetadataRequest**](RosettaConstructionMetadataRequest.md) |  |  |

### Return type

[**RosettaConstructionMetadataResponse**](RosettaConstructionMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_parse

> <RosettaConstructionParseResponse> rosetta_construction_parse(rosetta_construction_parse_request)

Parse a Transaction

TODO

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_parse_request = StacksBlockchainApi::RosettaConstructionParseRequest.new({network_identifier: 3.56, signed: false, transaction: 'transaction_example'}) # RosettaConstructionParseRequest | 

begin
  # Parse a Transaction
  result = api_instance.rosetta_construction_parse(rosetta_construction_parse_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_parse: #{e}"
end
```

#### Using the rosetta_construction_parse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionParseResponse>, Integer, Hash)> rosetta_construction_parse_with_http_info(rosetta_construction_parse_request)

```ruby
begin
  # Parse a Transaction
  data, status_code, headers = api_instance.rosetta_construction_parse_with_http_info(rosetta_construction_parse_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionParseResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_parse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_parse_request** | [**RosettaConstructionParseRequest**](RosettaConstructionParseRequest.md) |  |  |

### Return type

[**RosettaConstructionParseResponse**](RosettaConstructionParseResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_payloads

> <RosettaConstructionPayloadResponse> rosetta_construction_payloads(rosetta_construction_payloads_request)

Generate an Unsigned Transaction and Signing Payloads

Generate and unsigned transaction from operations and metadata

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_payloads_request = StacksBlockchainApi::RosettaConstructionPayloadsRequest.new({network_identifier: 3.56, operations: [3.56]}) # RosettaConstructionPayloadsRequest | 

begin
  # Generate an Unsigned Transaction and Signing Payloads
  result = api_instance.rosetta_construction_payloads(rosetta_construction_payloads_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_payloads: #{e}"
end
```

#### Using the rosetta_construction_payloads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionPayloadResponse>, Integer, Hash)> rosetta_construction_payloads_with_http_info(rosetta_construction_payloads_request)

```ruby
begin
  # Generate an Unsigned Transaction and Signing Payloads
  data, status_code, headers = api_instance.rosetta_construction_payloads_with_http_info(rosetta_construction_payloads_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionPayloadResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_payloads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_payloads_request** | [**RosettaConstructionPayloadsRequest**](RosettaConstructionPayloadsRequest.md) |  |  |

### Return type

[**RosettaConstructionPayloadResponse**](RosettaConstructionPayloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_preprocess

> <RosettaConstructionPreprocessResponse> rosetta_construction_preprocess(rosetta_construction_preprocess_request)

Create a Request to Fetch Metadata

TODO

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_preprocess_request = StacksBlockchainApi::RosettaConstructionPreprocessRequest.new({network_identifier: 3.56, operations: [3.56]}) # RosettaConstructionPreprocessRequest | 

begin
  # Create a Request to Fetch Metadata
  result = api_instance.rosetta_construction_preprocess(rosetta_construction_preprocess_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_preprocess: #{e}"
end
```

#### Using the rosetta_construction_preprocess_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionPreprocessResponse>, Integer, Hash)> rosetta_construction_preprocess_with_http_info(rosetta_construction_preprocess_request)

```ruby
begin
  # Create a Request to Fetch Metadata
  data, status_code, headers = api_instance.rosetta_construction_preprocess_with_http_info(rosetta_construction_preprocess_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionPreprocessResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_preprocess_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_preprocess_request** | [**RosettaConstructionPreprocessRequest**](RosettaConstructionPreprocessRequest.md) |  |  |

### Return type

[**RosettaConstructionPreprocessResponse**](RosettaConstructionPreprocessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_construction_submit

> <RosettaConstructionSubmitResponse> rosetta_construction_submit(rosetta_construction_submit_request)

Submit a Signed Transaction

Submit a pre-signed transaction to the node.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_construction_submit_request = StacksBlockchainApi::RosettaConstructionSubmitRequest.new({network_identifier: 3.56, signed_transaction: 'signed_transaction_example'}) # RosettaConstructionSubmitRequest | 

begin
  # Submit a Signed Transaction
  result = api_instance.rosetta_construction_submit(rosetta_construction_submit_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_submit: #{e}"
end
```

#### Using the rosetta_construction_submit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaConstructionSubmitResponse>, Integer, Hash)> rosetta_construction_submit_with_http_info(rosetta_construction_submit_request)

```ruby
begin
  # Submit a Signed Transaction
  data, status_code, headers = api_instance.rosetta_construction_submit_with_http_info(rosetta_construction_submit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaConstructionSubmitResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_construction_submit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_construction_submit_request** | [**RosettaConstructionSubmitRequest**](RosettaConstructionSubmitRequest.md) |  |  |

### Return type

[**RosettaConstructionSubmitResponse**](RosettaConstructionSubmitResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_mempool

> <RosettaMempoolResponse> rosetta_mempool(rosetta_mempool_request)

Get All Mempool Transactions

Retrieves a list of transcations currently in the mempool for a given network.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_mempool_request = StacksBlockchainApi::RosettaMempoolRequest.new({network_identifier: 3.56}) # RosettaMempoolRequest | 

begin
  # Get All Mempool Transactions
  result = api_instance.rosetta_mempool(rosetta_mempool_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_mempool: #{e}"
end
```

#### Using the rosetta_mempool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaMempoolResponse>, Integer, Hash)> rosetta_mempool_with_http_info(rosetta_mempool_request)

```ruby
begin
  # Get All Mempool Transactions
  data, status_code, headers = api_instance.rosetta_mempool_with_http_info(rosetta_mempool_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaMempoolResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_mempool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_mempool_request** | [**RosettaMempoolRequest**](RosettaMempoolRequest.md) |  |  |

### Return type

[**RosettaMempoolResponse**](RosettaMempoolResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_mempool_transaction

> <RosettaMempoolTransactionResponse> rosetta_mempool_transaction(rosetta_mempool_transaction_request)

Get a Mempool Transaction

Retrieves transaction details from the mempool for a given transaction id from a given network.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_mempool_transaction_request = StacksBlockchainApi::RosettaMempoolTransactionRequest.new({network_identifier: 3.56, transaction_identifier: 3.56}) # RosettaMempoolTransactionRequest | 

begin
  # Get a Mempool Transaction
  result = api_instance.rosetta_mempool_transaction(rosetta_mempool_transaction_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_mempool_transaction: #{e}"
end
```

#### Using the rosetta_mempool_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaMempoolTransactionResponse>, Integer, Hash)> rosetta_mempool_transaction_with_http_info(rosetta_mempool_transaction_request)

```ruby
begin
  # Get a Mempool Transaction
  data, status_code, headers = api_instance.rosetta_mempool_transaction_with_http_info(rosetta_mempool_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaMempoolTransactionResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_mempool_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_mempool_transaction_request** | [**RosettaMempoolTransactionRequest**](RosettaMempoolTransactionRequest.md) |  |  |

### Return type

[**RosettaMempoolTransactionResponse**](RosettaMempoolTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_network_list

> <RosettaNetworkListResponse> rosetta_network_list

Get List of Available Networks

Retrieves a list of NetworkIdentifiers that the Rosetta server supports.

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new

begin
  # Get List of Available Networks
  result = api_instance.rosetta_network_list
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_list: #{e}"
end
```

#### Using the rosetta_network_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaNetworkListResponse>, Integer, Hash)> rosetta_network_list_with_http_info

```ruby
begin
  # Get List of Available Networks
  data, status_code, headers = api_instance.rosetta_network_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaNetworkListResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RosettaNetworkListResponse**](RosettaNetworkListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rosetta_network_options

> <RosettaNetworkOptionsResponse> rosetta_network_options(rosetta_options_request)

Get Network Options

Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_options_request = StacksBlockchainApi::RosettaOptionsRequest.new({network_identifier: 3.56}) # RosettaOptionsRequest | 

begin
  # Get Network Options
  result = api_instance.rosetta_network_options(rosetta_options_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_options: #{e}"
end
```

#### Using the rosetta_network_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RosettaNetworkOptionsResponse>, Integer, Hash)> rosetta_network_options_with_http_info(rosetta_options_request)

```ruby
begin
  # Get Network Options
  data, status_code, headers = api_instance.rosetta_network_options_with_http_info(rosetta_options_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RosettaNetworkOptionsResponse>
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_options_request** | [**RosettaOptionsRequest**](RosettaOptionsRequest.md) |  |  |

### Return type

[**RosettaNetworkOptionsResponse**](RosettaNetworkOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rosetta_network_status

> Hash&lt;String, Object&gt; rosetta_network_status(rosetta_status_request)

Get Network Status

Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 

### Examples

```ruby
require 'time'
require 'stacks_blockchain_api_client'

api_instance = StacksBlockchainApi::RosettaApi.new
rosetta_status_request = StacksBlockchainApi::RosettaStatusRequest.new({network_identifier: 3.56}) # RosettaStatusRequest | 

begin
  # Get Network Status
  result = api_instance.rosetta_network_status(rosetta_status_request)
  p result
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_status: #{e}"
end
```

#### Using the rosetta_network_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> rosetta_network_status_with_http_info(rosetta_status_request)

```ruby
begin
  # Get Network Status
  data, status_code, headers = api_instance.rosetta_network_status_with_http_info(rosetta_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue StacksBlockchainApi::ApiError => e
  puts "Error when calling RosettaApi->rosetta_network_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rosetta_status_request** | [**RosettaStatusRequest**](RosettaStatusRequest.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

