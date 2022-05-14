# StacksBlockchainApi\StackingRewardsApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBurnchainRewardList()**](StackingRewardsApi.md#getBurnchainRewardList) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients
[**getBurnchainRewardListByAddress()**](StackingRewardsApi.md#getBurnchainRewardListByAddress) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient
[**getBurnchainRewardSlotHolders()**](StackingRewardsApi.md#getBurnchainRewardSlotHolders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders
[**getBurnchainRewardSlotHoldersByAddress()**](StackingRewardsApi.md#getBurnchainRewardSlotHoldersByAddress) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address
[**getBurnchainRewardsTotalByAddress()**](StackingRewardsApi.md#getBurnchainRewardsTotalByAddress) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient


## `getBurnchainRewardList()`

```php
getBurnchainRewardList($limit, $offset): \StacksBlockchainApi\Model\BurnchainRewardListResponse
```

Get recent burnchain reward recipients

Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\StackingRewardsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 96; // int | max number of rewards to fetch
$offset = 56; // int | index of first rewards to fetch

try {
    $result = $apiInstance->getBurnchainRewardList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StackingRewardsApi->getBurnchainRewardList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of rewards to fetch | [optional] [default to 96]
 **offset** | **int**| index of first rewards to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\BurnchainRewardListResponse**](../Model/BurnchainRewardListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBurnchainRewardListByAddress()`

```php
getBurnchainRewardListByAddress($address, $limit, $offset): object
```

Get recent burnchain reward for the given recipient

Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\StackingRewardsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
$limit = 56; // int | max number of rewards to fetch
$offset = 56; // int | index of first rewards to fetch

try {
    $result = $apiInstance->getBurnchainRewardListByAddress($address, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StackingRewardsApi->getBurnchainRewardListByAddress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |
 **limit** | **int**| max number of rewards to fetch | [optional]
 **offset** | **int**| index of first rewards to fetch | [optional]

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

## `getBurnchainRewardSlotHolders()`

```php
getBurnchainRewardSlotHolders($limit, $offset): \StacksBlockchainApi\Model\BurnchainRewardSlotHolderListResponse
```

Get recent reward slot holders

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\StackingRewardsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 96; // int | max number of items to fetch
$offset = 56; // int | index of the first items to fetch

try {
    $result = $apiInstance->getBurnchainRewardSlotHolders($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StackingRewardsApi->getBurnchainRewardSlotHolders: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of items to fetch | [optional] [default to 96]
 **offset** | **int**| index of the first items to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\BurnchainRewardSlotHolderListResponse**](../Model/BurnchainRewardSlotHolderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBurnchainRewardSlotHoldersByAddress()`

```php
getBurnchainRewardSlotHoldersByAddress($address, $limit, $offset): object
```

Get recent reward slot holder entries for the given address

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\StackingRewardsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string | Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
$limit = 56; // int | max number of items to fetch
$offset = 56; // int | index of the first items to fetch

try {
    $result = $apiInstance->getBurnchainRewardSlotHoldersByAddress($address, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StackingRewardsApi->getBurnchainRewardSlotHoldersByAddress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| Reward slot holder recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |
 **limit** | **int**| max number of items to fetch | [optional]
 **offset** | **int**| index of the first items to fetch | [optional]

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

## `getBurnchainRewardsTotalByAddress()`

```php
getBurnchainRewardsTotalByAddress($address): \StacksBlockchainApi\Model\BurnchainRewardsTotal
```

Get total burnchain rewards for the given recipient

Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\StackingRewardsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format

try {
    $result = $apiInstance->getBurnchainRewardsTotalByAddress($address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StackingRewardsApi->getBurnchainRewardsTotalByAddress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |

### Return type

[**\StacksBlockchainApi\Model\BurnchainRewardsTotal**](../Model/BurnchainRewardsTotal.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
