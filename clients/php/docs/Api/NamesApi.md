# StacksBlockchainApi\NamesApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchZoneFile()**](NamesApi.md#fetchZoneFile) | **GET** /v1/names/{name}/zonefile | Get Zone File
[**getAllNames()**](NamesApi.md#getAllNames) | **GET** /v1/names | Get All Names
[**getAllNamespaces()**](NamesApi.md#getAllNamespaces) | **GET** /v1/namespaces | Get All Namespaces
[**getHistoricalZoneFile()**](NamesApi.md#getHistoricalZoneFile) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File
[**getNameHistory()**](NamesApi.md#getNameHistory) | **GET** /v1/names/{name}/history | Get Name History
[**getNameInfo()**](NamesApi.md#getNameInfo) | **GET** /v1/names/{name} | Get Name Details
[**getNamePrice()**](NamesApi.md#getNamePrice) | **GET** /v2/prices/names/{name} | Get Name Price
[**getNamesOwnedByAddress()**](NamesApi.md#getNamesOwnedByAddress) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address
[**getNamespaceNames()**](NamesApi.md#getNamespaceNames) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names
[**getNamespacePrice()**](NamesApi.md#getNamespacePrice) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price


## `fetchZoneFile()`

```php
fetchZoneFile($name): AnyOfObjectObject
```

Get Zone File

Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$name = bar.test; // string | fully-qualified name

try {
    $result = $apiInstance->fetchZoneFile($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->fetchZoneFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| fully-qualified name |

### Return type

[**AnyOfObjectObject**](../Model/AnyOfObjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAllNames()`

```php
getAllNames($page): string[]
```

Get All Names

Retrieves a list of all names known to the node.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$page = 23; // int | names are returned in pages of size 100, so specify the page number.

try {
    $result = $apiInstance->getAllNames($page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getAllNames: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| names are returned in pages of size 100, so specify the page number. |

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAllNamespaces()`

```php
getAllNamespaces(): \StacksBlockchainApi\Model\BnsGetAllNamespacesResponse
```

Get All Namespaces

Retrieves a list of all namespaces known to the node.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getAllNamespaces();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getAllNamespaces: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\StacksBlockchainApi\Model\BnsGetAllNamespacesResponse**](../Model/BnsGetAllNamespacesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getHistoricalZoneFile()`

```php
getHistoricalZoneFile($name, $zone_file_hash): AnyOfObjectObject
```

Get Historical Zone File

Retrieves the historical zonefile specified by the username and zone hash.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$name = muneeb.id; // string | fully-qualified name
$zone_file_hash = b100a68235244b012854a95f9114695679002af9; // string | zone file hash

try {
    $result = $apiInstance->getHistoricalZoneFile($name, $zone_file_hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getHistoricalZoneFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| fully-qualified name |
 **zone_file_hash** | **string**| zone file hash |

### Return type

[**AnyOfObjectObject**](../Model/AnyOfObjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNameHistory()`

```php
getNameHistory($name, $page): object
```

Get Name History

Retrieves a history of all blockchain records of a registered name.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$name = muneeb.id; // string | name to query
$page = 0; // int | the page (in 20-entry pages) of the history to fetch

try {
    $result = $apiInstance->getNameHistory($name, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNameHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name to query |
 **page** | **int**| the page (in 20-entry pages) of the history to fetch |

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

## `getNameInfo()`

```php
getNameInfo($name): \StacksBlockchainApi\Model\BnsGetNameInfoResponse
```

Get Name Details

Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$name = muneeb.id; // string | fully-qualified name

try {
    $result = $apiInstance->getNameInfo($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNameInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| fully-qualified name |

### Return type

[**\StacksBlockchainApi\Model\BnsGetNameInfoResponse**](../Model/BnsGetNameInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNamePrice()`

```php
getNamePrice($name): \StacksBlockchainApi\Model\BnsGetNamePriceResponse
```

Get Name Price

Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$name = muneeb.id; // string | the name to query price information for

try {
    $result = $apiInstance->getNamePrice($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNamePrice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| the name to query price information for |

### Return type

[**\StacksBlockchainApi\Model\BnsGetNamePriceResponse**](../Model/BnsGetNamePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNamesOwnedByAddress()`

```php
getNamesOwnedByAddress($blockchain, $address): \StacksBlockchainApi\Model\BnsNamesOwnByAddressResponse
```

Get Names Owned by Address

Retrieves a list of names owned by the address provided.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$blockchain = bitcoin; // string | the layer-1 blockchain for the address
$address = 1QJQxDas5JhdiXhEbNS14iNjr8auFT96GP; // string | the address to lookup

try {
    $result = $apiInstance->getNamesOwnedByAddress($blockchain, $address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNamesOwnedByAddress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **string**| the layer-1 blockchain for the address |
 **address** | **string**| the address to lookup |

### Return type

[**\StacksBlockchainApi\Model\BnsNamesOwnByAddressResponse**](../Model/BnsNamesOwnByAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNamespaceNames()`

```php
getNamespaceNames($tld, $page): string[]
```

Get Namespace Names

Retrieves a list of names within a given namespace.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tld = id; // string | the namespace to fetch names from
$page = 23; // int | names are returned in pages of size 100, so specify the page number.

try {
    $result = $apiInstance->getNamespaceNames($tld, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNamespaceNames: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tld** | **string**| the namespace to fetch names from |
 **page** | **int**| names are returned in pages of size 100, so specify the page number. |

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNamespacePrice()`

```php
getNamespacePrice($tld): \StacksBlockchainApi\Model\BnsGetNamespacePriceResponse
```

Get Namespace Price

Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tld = id; // string | the namespace to fetch price for

try {
    $result = $apiInstance->getNamespacePrice($tld);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NamesApi->getNamespacePrice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tld** | **string**| the namespace to fetch price for |

### Return type

[**\StacksBlockchainApi\Model\BnsGetNamespacePriceResponse**](../Model/BnsGetNamespacePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
