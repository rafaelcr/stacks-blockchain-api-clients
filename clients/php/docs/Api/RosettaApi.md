# StacksBlockchainApi\RosettaApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**rosettaAccountBalance()**](RosettaApi.md#rosettaAccountBalance) | **POST** /rosetta/v1/account/balance | Get an Account Balance
[**rosettaBlock()**](RosettaApi.md#rosettaBlock) | **POST** /rosetta/v1/block | Get a Block
[**rosettaBlockTransaction()**](RosettaApi.md#rosettaBlockTransaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction
[**rosettaConstructionCombine()**](RosettaApi.md#rosettaConstructionCombine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures
[**rosettaConstructionDerive()**](RosettaApi.md#rosettaConstructionDerive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey
[**rosettaConstructionHash()**](RosettaApi.md#rosettaConstructionHash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction
[**rosettaConstructionMetadata()**](RosettaApi.md#rosettaConstructionMetadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction
[**rosettaConstructionParse()**](RosettaApi.md#rosettaConstructionParse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction
[**rosettaConstructionPayloads()**](RosettaApi.md#rosettaConstructionPayloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads
[**rosettaConstructionPreprocess()**](RosettaApi.md#rosettaConstructionPreprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata
[**rosettaConstructionSubmit()**](RosettaApi.md#rosettaConstructionSubmit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction
[**rosettaMempool()**](RosettaApi.md#rosettaMempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions
[**rosettaMempoolTransaction()**](RosettaApi.md#rosettaMempoolTransaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction
[**rosettaNetworkList()**](RosettaApi.md#rosettaNetworkList) | **POST** /rosetta/v1/network/list | Get List of Available Networks
[**rosettaNetworkOptions()**](RosettaApi.md#rosettaNetworkOptions) | **POST** /rosetta/v1/network/options | Get Network Options
[**rosettaNetworkStatus()**](RosettaApi.md#rosettaNetworkStatus) | **POST** /rosetta/v1/network/status | Get Network Status


## `rosettaAccountBalance()`

```php
rosettaAccountBalance($rosetta_account_balance_request): \StacksBlockchainApi\Model\RosettaAccountBalanceResponse
```

Get an Account Balance

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_account_balance_request = new \StacksBlockchainApi\Model\RosettaAccountBalanceRequest(); // \StacksBlockchainApi\Model\RosettaAccountBalanceRequest

try {
    $result = $apiInstance->rosettaAccountBalance($rosetta_account_balance_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaAccountBalance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_account_balance_request** | [**\StacksBlockchainApi\Model\RosettaAccountBalanceRequest**](../Model/RosettaAccountBalanceRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaAccountBalanceResponse**](../Model/RosettaAccountBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaBlock()`

```php
rosettaBlock($rosetta_block_request): \StacksBlockchainApi\Model\RosettaBlockResponse
```

Get a Block

Retrieves the Block information for a given block identifier including a list of all transactions in the block.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_block_request = new \StacksBlockchainApi\Model\RosettaBlockRequest(); // \StacksBlockchainApi\Model\RosettaBlockRequest

try {
    $result = $apiInstance->rosettaBlock($rosetta_block_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaBlock: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_block_request** | [**\StacksBlockchainApi\Model\RosettaBlockRequest**](../Model/RosettaBlockRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaBlockResponse**](../Model/RosettaBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaBlockTransaction()`

```php
rosettaBlockTransaction($rosetta_block_transaction_request): \StacksBlockchainApi\Model\RosettaBlockTransactionResponse
```

Get a Block Transaction

Retrieves a Transaction included in a block that is not returned in a BlockResponse.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_block_transaction_request = new \StacksBlockchainApi\Model\RosettaBlockTransactionRequest(); // \StacksBlockchainApi\Model\RosettaBlockTransactionRequest

try {
    $result = $apiInstance->rosettaBlockTransaction($rosetta_block_transaction_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaBlockTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_block_transaction_request** | [**\StacksBlockchainApi\Model\RosettaBlockTransactionRequest**](../Model/RosettaBlockTransactionRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaBlockTransactionResponse**](../Model/RosettaBlockTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionCombine()`

```php
rosettaConstructionCombine($rosetta_construction_combine_request): \StacksBlockchainApi\Model\RosettaConstructionCombineResponse
```

Create Network Transaction from Signatures

Take unsigned transaction and signature, combine both and return signed transaction

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_combine_request = new \StacksBlockchainApi\Model\RosettaConstructionCombineRequest(); // \StacksBlockchainApi\Model\RosettaConstructionCombineRequest

try {
    $result = $apiInstance->rosettaConstructionCombine($rosetta_construction_combine_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionCombine: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_combine_request** | [**\StacksBlockchainApi\Model\RosettaConstructionCombineRequest**](../Model/RosettaConstructionCombineRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionCombineResponse**](../Model/RosettaConstructionCombineResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionDerive()`

```php
rosettaConstructionDerive($rosetta_construction_derive_request): \StacksBlockchainApi\Model\RosettaConstructionDeriveResponse
```

Derive an AccountIdentifier from a PublicKey

Retrieves the Account Identifier information based on a Public Key for a given network

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_derive_request = new \StacksBlockchainApi\Model\RosettaConstructionDeriveRequest(); // \StacksBlockchainApi\Model\RosettaConstructionDeriveRequest

try {
    $result = $apiInstance->rosettaConstructionDerive($rosetta_construction_derive_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionDerive: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_derive_request** | [**\StacksBlockchainApi\Model\RosettaConstructionDeriveRequest**](../Model/RosettaConstructionDeriveRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionDeriveResponse**](../Model/RosettaConstructionDeriveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionHash()`

```php
rosettaConstructionHash($rosetta_construction_hash_request): \StacksBlockchainApi\Model\RosettaConstructionHashResponse
```

Get the Hash of a Signed Transaction

Retrieves the network-specific transaction hash for a signed transaction.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_hash_request = new \StacksBlockchainApi\Model\RosettaConstructionHashRequest(); // \StacksBlockchainApi\Model\RosettaConstructionHashRequest

try {
    $result = $apiInstance->rosettaConstructionHash($rosetta_construction_hash_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionHash: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_hash_request** | [**\StacksBlockchainApi\Model\RosettaConstructionHashRequest**](../Model/RosettaConstructionHashRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionHashResponse**](../Model/RosettaConstructionHashResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionMetadata()`

```php
rosettaConstructionMetadata($rosetta_construction_metadata_request): \StacksBlockchainApi\Model\RosettaConstructionMetadataResponse
```

Get Metadata for Transaction Construction

To Do

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_metadata_request = new \StacksBlockchainApi\Model\RosettaConstructionMetadataRequest(); // \StacksBlockchainApi\Model\RosettaConstructionMetadataRequest

try {
    $result = $apiInstance->rosettaConstructionMetadata($rosetta_construction_metadata_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_metadata_request** | [**\StacksBlockchainApi\Model\RosettaConstructionMetadataRequest**](../Model/RosettaConstructionMetadataRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionMetadataResponse**](../Model/RosettaConstructionMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionParse()`

```php
rosettaConstructionParse($rosetta_construction_parse_request): \StacksBlockchainApi\Model\RosettaConstructionParseResponse
```

Parse a Transaction

TODO

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_parse_request = new \StacksBlockchainApi\Model\RosettaConstructionParseRequest(); // \StacksBlockchainApi\Model\RosettaConstructionParseRequest

try {
    $result = $apiInstance->rosettaConstructionParse($rosetta_construction_parse_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionParse: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_parse_request** | [**\StacksBlockchainApi\Model\RosettaConstructionParseRequest**](../Model/RosettaConstructionParseRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionParseResponse**](../Model/RosettaConstructionParseResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionPayloads()`

```php
rosettaConstructionPayloads($rosetta_construction_payloads_request): \StacksBlockchainApi\Model\RosettaConstructionPayloadResponse
```

Generate an Unsigned Transaction and Signing Payloads

Generate and unsigned transaction from operations and metadata

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_payloads_request = new \StacksBlockchainApi\Model\RosettaConstructionPayloadsRequest(); // \StacksBlockchainApi\Model\RosettaConstructionPayloadsRequest

try {
    $result = $apiInstance->rosettaConstructionPayloads($rosetta_construction_payloads_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionPayloads: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_payloads_request** | [**\StacksBlockchainApi\Model\RosettaConstructionPayloadsRequest**](../Model/RosettaConstructionPayloadsRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionPayloadResponse**](../Model/RosettaConstructionPayloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionPreprocess()`

```php
rosettaConstructionPreprocess($rosetta_construction_preprocess_request): \StacksBlockchainApi\Model\RosettaConstructionPreprocessResponse
```

Create a Request to Fetch Metadata

TODO

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_preprocess_request = new \StacksBlockchainApi\Model\RosettaConstructionPreprocessRequest(); // \StacksBlockchainApi\Model\RosettaConstructionPreprocessRequest

try {
    $result = $apiInstance->rosettaConstructionPreprocess($rosetta_construction_preprocess_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionPreprocess: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_preprocess_request** | [**\StacksBlockchainApi\Model\RosettaConstructionPreprocessRequest**](../Model/RosettaConstructionPreprocessRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionPreprocessResponse**](../Model/RosettaConstructionPreprocessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaConstructionSubmit()`

```php
rosettaConstructionSubmit($rosetta_construction_submit_request): \StacksBlockchainApi\Model\RosettaConstructionSubmitResponse
```

Submit a Signed Transaction

Submit a pre-signed transaction to the node.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_construction_submit_request = new \StacksBlockchainApi\Model\RosettaConstructionSubmitRequest(); // \StacksBlockchainApi\Model\RosettaConstructionSubmitRequest

try {
    $result = $apiInstance->rosettaConstructionSubmit($rosetta_construction_submit_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaConstructionSubmit: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_construction_submit_request** | [**\StacksBlockchainApi\Model\RosettaConstructionSubmitRequest**](../Model/RosettaConstructionSubmitRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaConstructionSubmitResponse**](../Model/RosettaConstructionSubmitResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaMempool()`

```php
rosettaMempool($rosetta_mempool_request): \StacksBlockchainApi\Model\RosettaMempoolResponse
```

Get All Mempool Transactions

Retrieves a list of transcations currently in the mempool for a given network.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_mempool_request = new \StacksBlockchainApi\Model\RosettaMempoolRequest(); // \StacksBlockchainApi\Model\RosettaMempoolRequest

try {
    $result = $apiInstance->rosettaMempool($rosetta_mempool_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaMempool: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_mempool_request** | [**\StacksBlockchainApi\Model\RosettaMempoolRequest**](../Model/RosettaMempoolRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaMempoolResponse**](../Model/RosettaMempoolResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaMempoolTransaction()`

```php
rosettaMempoolTransaction($rosetta_mempool_transaction_request): \StacksBlockchainApi\Model\RosettaMempoolTransactionResponse
```

Get a Mempool Transaction

Retrieves transaction details from the mempool for a given transaction id from a given network.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_mempool_transaction_request = new \StacksBlockchainApi\Model\RosettaMempoolTransactionRequest(); // \StacksBlockchainApi\Model\RosettaMempoolTransactionRequest

try {
    $result = $apiInstance->rosettaMempoolTransaction($rosetta_mempool_transaction_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaMempoolTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_mempool_transaction_request** | [**\StacksBlockchainApi\Model\RosettaMempoolTransactionRequest**](../Model/RosettaMempoolTransactionRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaMempoolTransactionResponse**](../Model/RosettaMempoolTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaNetworkList()`

```php
rosettaNetworkList(): \StacksBlockchainApi\Model\RosettaNetworkListResponse
```

Get List of Available Networks

Retrieves a list of NetworkIdentifiers that the Rosetta server supports.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->rosettaNetworkList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaNetworkList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\RosettaNetworkListResponse**](../Model/RosettaNetworkListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaNetworkOptions()`

```php
rosettaNetworkOptions($rosetta_options_request): \StacksBlockchainApi\Model\RosettaNetworkOptionsResponse
```

Get Network Options

Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_options_request = new \StacksBlockchainApi\Model\RosettaOptionsRequest(); // \StacksBlockchainApi\Model\RosettaOptionsRequest

try {
    $result = $apiInstance->rosettaNetworkOptions($rosetta_options_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaNetworkOptions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_options_request** | [**\StacksBlockchainApi\Model\RosettaOptionsRequest**](../Model/RosettaOptionsRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\RosettaNetworkOptionsResponse**](../Model/RosettaNetworkOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rosettaNetworkStatus()`

```php
rosettaNetworkStatus($rosetta_status_request): array<string,object>
```

Get Network Status

Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\RosettaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rosetta_status_request = new \StacksBlockchainApi\Model\RosettaStatusRequest(); // \StacksBlockchainApi\Model\RosettaStatusRequest

try {
    $result = $apiInstance->rosettaNetworkStatus($rosetta_status_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RosettaApi->rosettaNetworkStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rosetta_status_request** | [**\StacksBlockchainApi\Model\RosettaStatusRequest**](../Model/RosettaStatusRequest.md)|  |

### Return type

**array<string,object>**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
