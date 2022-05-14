# StacksBlockchainApi\SearchApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchById()**](SearchApi.md#searchById) | **GET** /extended/v1/search/{id} | Search


## `searchById()`

```php
searchById($id, $include_metadata): AnyOfObjectObject
```

Search

Search blocks, transactions, contracts, or accounts by hash/ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | The hex hash string for a block or transaction, account address, or contract address
$include_metadata = True; // bool | This includes the detailed data for purticular hash in the response

try {
    $result = $apiInstance->searchById($id, $include_metadata);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SearchApi->searchById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The hex hash string for a block or transaction, account address, or contract address |
 **include_metadata** | **bool**| This includes the detailed data for purticular hash in the response | [optional]

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
