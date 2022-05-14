# StacksBlockchainApi\InfoApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoreApiInfo()**](InfoApi.md#getCoreApiInfo) | **GET** /v2/info | Get Core API info
[**getNetworkBlockTimeByNetwork()**](InfoApi.md#getNetworkBlockTimeByNetwork) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network&#39;s target block time
[**getNetworkBlockTimes()**](InfoApi.md#getNetworkBlockTimes) | **GET** /extended/v1/info/network_block_times | Get the network target block time
[**getPoxInfo()**](InfoApi.md#getPoxInfo) | **GET** /v2/pox | Get Proof-of-Transfer details
[**getStatus()**](InfoApi.md#getStatus) | **GET** /extended/v1/status | API status
[**getStxSupply()**](InfoApi.md#getStxSupply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply
[**getStxSupplyCirculatingPlain()**](InfoApi.md#getStxSupplyCirculatingPlain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format
[**getStxSupplyTotalSupplyPlain()**](InfoApi.md#getStxSupplyTotalSupplyPlain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format
[**getTotalStxSupplyLegacyFormat()**](InfoApi.md#getTotalStxSupplyLegacyFormat) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)


## `getCoreApiInfo()`

```php
getCoreApiInfo(): \StacksBlockchainApi\Model\CoreNodeInfoResponse
```

Get Core API info

Retrieves information about the Core API including the server version

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getCoreApiInfo();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getCoreApiInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\CoreNodeInfoResponse**](../Model/CoreNodeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNetworkBlockTimeByNetwork()`

```php
getNetworkBlockTimeByNetwork($network): object
```

Get a given network's target block time

Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$network = 'network_example'; // string | Which network to retrieve the target block time of

try {
    $result = $apiInstance->getNetworkBlockTimeByNetwork($network);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getNetworkBlockTimeByNetwork: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **string**| Which network to retrieve the target block time of |

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

## `getNetworkBlockTimes()`

```php
getNetworkBlockTimes(): \StacksBlockchainApi\Model\NetworkBlockTimesResponse
```

Get the network target block time

Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getNetworkBlockTimes();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getNetworkBlockTimes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\NetworkBlockTimesResponse**](../Model/NetworkBlockTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPoxInfo()`

```php
getPoxInfo(): \StacksBlockchainApi\Model\CoreNodePoxResponse
```

Get Proof-of-Transfer details

Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getPoxInfo();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getPoxInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\CoreNodePoxResponse**](../Model/CoreNodePoxResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStatus()`

```php
getStatus(): \StacksBlockchainApi\Model\ServerStatusResponse
```

API status

Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getStatus();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\ServerStatusResponse**](../Model/ServerStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStxSupply()`

```php
getStxSupply($height): \StacksBlockchainApi\Model\GetStxSupplyResponse
```

Get total and unlocked STX supply

Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$height = 3.4; // float | The block height at which to query supply details from, if not provided then the latest block height is used

try {
    $result = $apiInstance->getStxSupply($height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getStxSupply: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **float**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional]

### Return type

[**\StacksBlockchainApi\Model\GetStxSupplyResponse**](../Model/GetStxSupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStxSupplyCirculatingPlain()`

```php
getStxSupplyCirculatingPlain(): string
```

Get circulating STX supply in plain text format

Retrieves the STX tokens currently in circulation that have been unlocked as plain text.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getStxSupplyCirculatingPlain();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getStxSupplyCirculatingPlain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStxSupplyTotalSupplyPlain()`

```php
getStxSupplyTotalSupplyPlain(): string
```

Get total STX supply in plain text format

Retrieves the total supply for STX tokens as plain text.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getStxSupplyTotalSupplyPlain();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getStxSupplyTotalSupplyPlain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTotalStxSupplyLegacyFormat()`

```php
getTotalStxSupplyLegacyFormat($height): \StacksBlockchainApi\Model\GetStxSupplyLegacyFormatResponse
```

Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)

Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\InfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$height = 3.4; // float | The block height at which to query supply details from, if not provided then the latest block height is used

try {
    $result = $apiInstance->getTotalStxSupplyLegacyFormat($height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InfoApi->getTotalStxSupplyLegacyFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **float**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional]

### Return type

[**\StacksBlockchainApi\Model\GetStxSupplyLegacyFormatResponse**](../Model/GetStxSupplyLegacyFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
