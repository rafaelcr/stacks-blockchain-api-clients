# StacksBlockchainApi\FungibleTokensApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractFtMetadata()**](FungibleTokensApi.md#getContractFtMetadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id
[**getFtMetadataList()**](FungibleTokensApi.md#getFtMetadataList) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list


## `getContractFtMetadata()`

```php
getContractFtMetadata($contract_id): \StacksBlockchainApi\Model\FungibleTokenMetadata
```

Fungible tokens metadata for contract id

Retrieves the metadata for fungible tokens for a given contract id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_id = 'contract_id_example'; // string | token's contract id

try {
    $result = $apiInstance->getContractFtMetadata($contract_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FungibleTokensApi->getContractFtMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **string**| token&#39;s contract id |

### Return type

[**\StacksBlockchainApi\Model\FungibleTokenMetadata**](../Model/FungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getFtMetadataList()`

```php
getFtMetadataList($limit, $offset): \StacksBlockchainApi\Model\FungibleTokensMetadataList
```

Fungible tokens metadata list

Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 56; // int | max number of tokens to fetch
$offset = 56; // int | index of first tokens to fetch

try {
    $result = $apiInstance->getFtMetadataList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FungibleTokensApi->getFtMetadataList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of tokens to fetch | [optional]
 **offset** | **int**| index of first tokens to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\FungibleTokensMetadataList**](../Model/FungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
