# StacksBlockchainApi\MicroblocksApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMicroblockByHash()**](MicroblocksApi.md#getMicroblockByHash) | **GET** /extended/v1/microblock/{hash} | Get microblock
[**getMicroblockList()**](MicroblocksApi.md#getMicroblockList) | **GET** /extended/v1/microblock | Get recent microblocks
[**getUnanchoredTxs()**](MicroblocksApi.md#getUnanchoredTxs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks


## `getMicroblockByHash()`

```php
getMicroblockByHash($hash): \StacksBlockchainApi\Model\Microblock
```

Get microblock

Retrieves a specific microblock by `hash`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\MicroblocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$hash = 'hash_example'; // string | Hash of the microblock

try {
    $result = $apiInstance->getMicroblockByHash($hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MicroblocksApi->getMicroblockByHash: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **string**| Hash of the microblock |

### Return type

[**\StacksBlockchainApi\Model\Microblock**](../Model/Microblock.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMicroblockList()`

```php
getMicroblockList($limit, $offset): \StacksBlockchainApi\Model\MicroblockListResponse
```

Get recent microblocks

Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\MicroblocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 20; // int | Max number of microblocks to fetch
$offset = 56; // int | Index of the first microblock to fetch

try {
    $result = $apiInstance->getMicroblockList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MicroblocksApi->getMicroblockList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Max number of microblocks to fetch | [optional] [default to 20]
 **offset** | **int**| Index of the first microblock to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\MicroblockListResponse**](../Model/MicroblockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUnanchoredTxs()`

```php
getUnanchoredTxs(): \StacksBlockchainApi\Model\UnanchoredTransactionListResponse
```

Get the list of current transactions that belong to unanchored microblocks

Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\MicroblocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getUnanchoredTxs();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MicroblocksApi->getUnanchoredTxs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\UnanchoredTransactionListResponse**](../Model/UnanchoredTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
