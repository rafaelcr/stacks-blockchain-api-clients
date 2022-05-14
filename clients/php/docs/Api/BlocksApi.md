# StacksBlockchainApi\BlocksApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlockByBurnBlockHash()**](BlocksApi.md#getBlockByBurnBlockHash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash
[**getBlockByBurnBlockHeight()**](BlocksApi.md#getBlockByBurnBlockHeight) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height
[**getBlockByHash()**](BlocksApi.md#getBlockByHash) | **GET** /extended/v1/block/{hash} | Get block by hash
[**getBlockByHeight()**](BlocksApi.md#getBlockByHeight) | **GET** /extended/v1/block/by_height/{height} | Get block by height
[**getBlockList()**](BlocksApi.md#getBlockList) | **GET** /extended/v1/block | Get recent blocks


## `getBlockByBurnBlockHash()`

```php
getBlockByBurnBlockHash($burn_block_hash): object
```

Get block by burnchain block hash

Retrieves block details of a specific block for a given burnchain block hash

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\BlocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$burn_block_hash = 'burn_block_hash_example'; // string | Hash of the burnchain block

try {
    $result = $apiInstance->getBlockByBurnBlockHash($burn_block_hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlocksApi->getBlockByBurnBlockHash: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burn_block_hash** | **string**| Hash of the burnchain block |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBlockByBurnBlockHeight()`

```php
getBlockByBurnBlockHeight($burn_block_height): object
```

Get block by burnchain height

Retrieves block details of a specific block for a given burn chain height

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\BlocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$burn_block_height = 3.4; // float | Height of the burn chain block

try {
    $result = $apiInstance->getBlockByBurnBlockHeight($burn_block_height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlocksApi->getBlockByBurnBlockHeight: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burn_block_height** | **float**| Height of the burn chain block |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBlockByHash()`

```php
getBlockByHash($hash): \StacksBlockchainApi\Model\Block
```

Get block by hash

Retrieves block details of a specific block for a given chain height

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\BlocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$hash = 'hash_example'; // string | Hash of the block

try {
    $result = $apiInstance->getBlockByHash($hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlocksApi->getBlockByHash: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **string**| Hash of the block |

### Return type

[**\StacksBlockchainApi\Model\Block**](../Model/Block.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBlockByHeight()`

```php
getBlockByHeight($height): object
```

Get block by height

Retrieves block details of a specific block at a given block height

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\BlocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$height = 3.4; // float | Height of the block

try {
    $result = $apiInstance->getBlockByHeight($height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlocksApi->getBlockByHeight: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **float**| Height of the block |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBlockList()`

```php
getBlockList($limit, $offset): \StacksBlockchainApi\Model\BlockListResponse
```

Get recent blocks

Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\BlocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 20; // int | max number of blocks to fetch
$offset = 56; // int | index of first block to fetch

try {
    $result = $apiInstance->getBlockList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlocksApi->getBlockList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of blocks to fetch | [optional] [default to 20]
 **offset** | **int**| index of first block to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\BlockListResponse**](../Model/BlockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
