# stacks_blockchain_api_client.api.RosettaApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rosettaAccountBalance**](RosettaApi.md#rosettaaccountbalance) | **POST** /rosetta/v1/account/balance | Get an Account Balance
[**rosettaBlock**](RosettaApi.md#rosettablock) | **POST** /rosetta/v1/block | Get a Block
[**rosettaBlockTransaction**](RosettaApi.md#rosettablocktransaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction
[**rosettaConstructionCombine**](RosettaApi.md#rosettaconstructioncombine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures
[**rosettaConstructionDerive**](RosettaApi.md#rosettaconstructionderive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey
[**rosettaConstructionHash**](RosettaApi.md#rosettaconstructionhash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction
[**rosettaConstructionMetadata**](RosettaApi.md#rosettaconstructionmetadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction
[**rosettaConstructionParse**](RosettaApi.md#rosettaconstructionparse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction
[**rosettaConstructionPayloads**](RosettaApi.md#rosettaconstructionpayloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads
[**rosettaConstructionPreprocess**](RosettaApi.md#rosettaconstructionpreprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata
[**rosettaConstructionSubmit**](RosettaApi.md#rosettaconstructionsubmit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction
[**rosettaMempool**](RosettaApi.md#rosettamempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions
[**rosettaMempoolTransaction**](RosettaApi.md#rosettamempooltransaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction
[**rosettaNetworkList**](RosettaApi.md#rosettanetworklist) | **POST** /rosetta/v1/network/list | Get List of Available Networks
[**rosettaNetworkOptions**](RosettaApi.md#rosettanetworkoptions) | **POST** /rosetta/v1/network/options | Get Network Options
[**rosettaNetworkStatus**](RosettaApi.md#rosettanetworkstatus) | **POST** /rosetta/v1/network/status | Get Network Status


# **rosettaAccountBalance**
> RosettaAccountBalanceResponse rosettaAccountBalance(rosettaAccountBalanceRequest)

Get an Account Balance

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaAccountBalanceRequest = RosettaAccountBalanceRequest(); // RosettaAccountBalanceRequest | 

try {
    final result = api_instance.rosettaAccountBalance(rosettaAccountBalanceRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaAccountBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaAccountBalanceRequest** | [**RosettaAccountBalanceRequest**](RosettaAccountBalanceRequest.md)|  | 

### Return type

[**RosettaAccountBalanceResponse**](RosettaAccountBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaBlock**
> RosettaBlockResponse rosettaBlock(rosettaBlockRequest)

Get a Block

Retrieves the Block information for a given block identifier including a list of all transactions in the block.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaBlockRequest = RosettaBlockRequest(); // RosettaBlockRequest | 

try {
    final result = api_instance.rosettaBlock(rosettaBlockRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaBlockRequest** | [**RosettaBlockRequest**](RosettaBlockRequest.md)|  | 

### Return type

[**RosettaBlockResponse**](RosettaBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaBlockTransaction**
> RosettaBlockTransactionResponse rosettaBlockTransaction(rosettaBlockTransactionRequest)

Get a Block Transaction

Retrieves a Transaction included in a block that is not returned in a BlockResponse.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaBlockTransactionRequest = RosettaBlockTransactionRequest(); // RosettaBlockTransactionRequest | 

try {
    final result = api_instance.rosettaBlockTransaction(rosettaBlockTransactionRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaBlockTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaBlockTransactionRequest** | [**RosettaBlockTransactionRequest**](RosettaBlockTransactionRequest.md)|  | 

### Return type

[**RosettaBlockTransactionResponse**](RosettaBlockTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionCombine**
> RosettaConstructionCombineResponse rosettaConstructionCombine(rosettaConstructionCombineRequest)

Create Network Transaction from Signatures

Take unsigned transaction and signature, combine both and return signed transaction

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionCombineRequest = RosettaConstructionCombineRequest(); // RosettaConstructionCombineRequest | 

try {
    final result = api_instance.rosettaConstructionCombine(rosettaConstructionCombineRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionCombine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionCombineRequest** | [**RosettaConstructionCombineRequest**](RosettaConstructionCombineRequest.md)|  | 

### Return type

[**RosettaConstructionCombineResponse**](RosettaConstructionCombineResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionDerive**
> RosettaConstructionDeriveResponse rosettaConstructionDerive(rosettaConstructionDeriveRequest)

Derive an AccountIdentifier from a PublicKey

Retrieves the Account Identifier information based on a Public Key for a given network

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionDeriveRequest = RosettaConstructionDeriveRequest(); // RosettaConstructionDeriveRequest | 

try {
    final result = api_instance.rosettaConstructionDerive(rosettaConstructionDeriveRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionDerive: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionDeriveRequest** | [**RosettaConstructionDeriveRequest**](RosettaConstructionDeriveRequest.md)|  | 

### Return type

[**RosettaConstructionDeriveResponse**](RosettaConstructionDeriveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionHash**
> RosettaConstructionHashResponse rosettaConstructionHash(rosettaConstructionHashRequest)

Get the Hash of a Signed Transaction

Retrieves the network-specific transaction hash for a signed transaction.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionHashRequest = RosettaConstructionHashRequest(); // RosettaConstructionHashRequest | 

try {
    final result = api_instance.rosettaConstructionHash(rosettaConstructionHashRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionHashRequest** | [**RosettaConstructionHashRequest**](RosettaConstructionHashRequest.md)|  | 

### Return type

[**RosettaConstructionHashResponse**](RosettaConstructionHashResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionMetadata**
> RosettaConstructionMetadataResponse rosettaConstructionMetadata(rosettaConstructionMetadataRequest)

Get Metadata for Transaction Construction

To Do

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionMetadataRequest = RosettaConstructionMetadataRequest(); // RosettaConstructionMetadataRequest | 

try {
    final result = api_instance.rosettaConstructionMetadata(rosettaConstructionMetadataRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionMetadataRequest** | [**RosettaConstructionMetadataRequest**](RosettaConstructionMetadataRequest.md)|  | 

### Return type

[**RosettaConstructionMetadataResponse**](RosettaConstructionMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionParse**
> RosettaConstructionParseResponse rosettaConstructionParse(rosettaConstructionParseRequest)

Parse a Transaction

TODO

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionParseRequest = RosettaConstructionParseRequest(); // RosettaConstructionParseRequest | 

try {
    final result = api_instance.rosettaConstructionParse(rosettaConstructionParseRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionParse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionParseRequest** | [**RosettaConstructionParseRequest**](RosettaConstructionParseRequest.md)|  | 

### Return type

[**RosettaConstructionParseResponse**](RosettaConstructionParseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionPayloads**
> RosettaConstructionPayloadResponse rosettaConstructionPayloads(rosettaConstructionPayloadsRequest)

Generate an Unsigned Transaction and Signing Payloads

Generate and unsigned transaction from operations and metadata

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionPayloadsRequest = RosettaConstructionPayloadsRequest(); // RosettaConstructionPayloadsRequest | 

try {
    final result = api_instance.rosettaConstructionPayloads(rosettaConstructionPayloadsRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionPayloads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionPayloadsRequest** | [**RosettaConstructionPayloadsRequest**](RosettaConstructionPayloadsRequest.md)|  | 

### Return type

[**RosettaConstructionPayloadResponse**](RosettaConstructionPayloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionPreprocess**
> RosettaConstructionPreprocessResponse rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest)

Create a Request to Fetch Metadata

TODO

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionPreprocessRequest = RosettaConstructionPreprocessRequest(); // RosettaConstructionPreprocessRequest | 

try {
    final result = api_instance.rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionPreprocess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionPreprocessRequest** | [**RosettaConstructionPreprocessRequest**](RosettaConstructionPreprocessRequest.md)|  | 

### Return type

[**RosettaConstructionPreprocessResponse**](RosettaConstructionPreprocessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionSubmit**
> RosettaConstructionSubmitResponse rosettaConstructionSubmit(rosettaConstructionSubmitRequest)

Submit a Signed Transaction

Submit a pre-signed transaction to the node.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaConstructionSubmitRequest = RosettaConstructionSubmitRequest(); // RosettaConstructionSubmitRequest | 

try {
    final result = api_instance.rosettaConstructionSubmit(rosettaConstructionSubmitRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaConstructionSubmit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaConstructionSubmitRequest** | [**RosettaConstructionSubmitRequest**](RosettaConstructionSubmitRequest.md)|  | 

### Return type

[**RosettaConstructionSubmitResponse**](RosettaConstructionSubmitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaMempool**
> RosettaMempoolResponse rosettaMempool(rosettaMempoolRequest)

Get All Mempool Transactions

Retrieves a list of transcations currently in the mempool for a given network.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaMempoolRequest = RosettaMempoolRequest(); // RosettaMempoolRequest | 

try {
    final result = api_instance.rosettaMempool(rosettaMempoolRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaMempool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaMempoolRequest** | [**RosettaMempoolRequest**](RosettaMempoolRequest.md)|  | 

### Return type

[**RosettaMempoolResponse**](RosettaMempoolResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaMempoolTransaction**
> RosettaMempoolTransactionResponse rosettaMempoolTransaction(rosettaMempoolTransactionRequest)

Get a Mempool Transaction

Retrieves transaction details from the mempool for a given transaction id from a given network.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaMempoolTransactionRequest = RosettaMempoolTransactionRequest(); // RosettaMempoolTransactionRequest | 

try {
    final result = api_instance.rosettaMempoolTransaction(rosettaMempoolTransactionRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaMempoolTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaMempoolTransactionRequest** | [**RosettaMempoolTransactionRequest**](RosettaMempoolTransactionRequest.md)|  | 

### Return type

[**RosettaMempoolTransactionResponse**](RosettaMempoolTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkList**
> RosettaNetworkListResponse rosettaNetworkList()

Get List of Available Networks

Retrieves a list of NetworkIdentifiers that the Rosetta server supports.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();

try {
    final result = api_instance.rosettaNetworkList();
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaNetworkList: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkOptions**
> RosettaNetworkOptionsResponse rosettaNetworkOptions(rosettaOptionsRequest)

Get Network Options

Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaOptionsRequest = RosettaOptionsRequest(); // RosettaOptionsRequest | 

try {
    final result = api_instance.rosettaNetworkOptions(rosettaOptionsRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaNetworkOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaOptionsRequest** | [**RosettaOptionsRequest**](RosettaOptionsRequest.md)|  | 

### Return type

[**RosettaNetworkOptionsResponse**](RosettaNetworkOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkStatus**
> Map<String, Object> rosettaNetworkStatus(rosettaStatusRequest)

Get Network Status

Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = RosettaApi();
final rosettaStatusRequest = RosettaStatusRequest(); // RosettaStatusRequest | 

try {
    final result = api_instance.rosettaNetworkStatus(rosettaStatusRequest);
    print(result);
} catch (e) {
    print('Exception when calling RosettaApi->rosettaNetworkStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosettaStatusRequest** | [**RosettaStatusRequest**](RosettaStatusRequest.md)|  | 

### Return type

[**Map<String, Object>**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

