# StacksBlockchainApi\FeesApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchFeeRate()**](FeesApi.md#fetchFeeRate) | **POST** /extended/v1/fee_rate | fetch fee rate
[**getFeeTransfer()**](FeesApi.md#getFeeTransfer) | **GET** /v2/fees/transfer | Get estimated fee


## `fetchFeeRate()`

```php
fetchFeeRate($fee_rate_request): \StacksBlockchainApi\Model\FeeRate
```

fetch fee rate

Retrieves estimated fee rate.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FeesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$fee_rate_request = new \StacksBlockchainApi\Model\FeeRateRequest(); // \StacksBlockchainApi\Model\FeeRateRequest

try {
    $result = $apiInstance->fetchFeeRate($fee_rate_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FeesApi->fetchFeeRate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fee_rate_request** | [**\StacksBlockchainApi\Model\FeeRateRequest**](../Model/FeeRateRequest.md)|  |

### Return type

[**\StacksBlockchainApi\Model\FeeRate**](../Model/FeeRate.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getFeeTransfer()`

```php
getFeeTransfer(): object
```

Get estimated fee

Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FeesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getFeeTransfer();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FeesApi->getFeeTransfer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

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
