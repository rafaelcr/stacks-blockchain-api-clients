# StacksBlockchainApi\NonFungibleTokensApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractNftMetadata()**](NonFungibleTokensApi.md#getContractNftMetadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id
[**getNftHistory()**](NonFungibleTokensApi.md#getNftHistory) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history
[**getNftHoldings()**](NonFungibleTokensApi.md#getNftHoldings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings
[**getNftMetadataList()**](NonFungibleTokensApi.md#getNftMetadataList) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list
[**getNftMints()**](NonFungibleTokensApi.md#getNftMints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints


## `getContractNftMetadata()`

```php
getContractNftMetadata($contract_id): \StacksBlockchainApi\Model\NonFungibleTokenMetadata
```

Non fungible tokens metadata for contract id

Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NonFungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_id = 'contract_id_example'; // string | token's contract id

try {
    $result = $apiInstance->getContractNftMetadata($contract_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NonFungibleTokensApi->getContractNftMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **string**| token&#39;s contract id |

### Return type

[**\StacksBlockchainApi\Model\NonFungibleTokenMetadata**](../Model/NonFungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNftHistory()`

```php
getNftHistory($asset_identifier, $value, $limit, $offset, $unanchored, $tx_metadata): \StacksBlockchainApi\Model\NonFungibleTokenHistoryEventList
```

Non-Fungible Token history

Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NonFungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$asset_identifier = SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild; // string | token asset class identifier
$value = 0x0100000000000000000000000000000803; // string | hex representation of the token's unique value
$limit = 50; // int | max number of events to fetch
$offset = 0; // int | index of first event to fetch
$unanchored = false; // bool | whether or not to include events from unconfirmed transactions
$tx_metadata = false; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    $result = $apiInstance->getNftHistory($asset_identifier, $value, $limit, $offset, $unanchored, $tx_metadata);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NonFungibleTokensApi->getNftHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_identifier** | **string**| token asset class identifier |
 **value** | **string**| hex representation of the token&#39;s unique value |
 **limit** | **int**| max number of events to fetch | [optional] [default to 50]
 **offset** | **int**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **tx_metadata** | **bool**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**\StacksBlockchainApi\Model\NonFungibleTokenHistoryEventList**](../Model/NonFungibleTokenHistoryEventList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNftHoldings()`

```php
getNftHoldings($principal, $asset_identifiers, $limit, $offset, $unanchored, $tx_metadata): \StacksBlockchainApi\Model\NonFungibleTokenHoldingsList
```

Non-Fungible Token holdings

Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NonFungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S.marketplace-v3; // string | token owner's STX address or Smart Contract ID
$asset_identifiers = SPQZF23W7SEYBFG5JQ496NMY0G7379SRYEDREMSV.Candy::candy; // string[] | identifiers of the token asset classes to filter for
$limit = 50; // int | max number of tokens to fetch
$offset = 0; // int | index of first tokens to fetch
$unanchored = false; // bool | whether or not to include tokens from unconfirmed transactions
$tx_metadata = false; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    $result = $apiInstance->getNftHoldings($principal, $asset_identifiers, $limit, $offset, $unanchored, $tx_metadata);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NonFungibleTokensApi->getNftHoldings: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| token owner&#39;s STX address or Smart Contract ID |
 **asset_identifiers** | [**string[]**](../Model/string.md)| identifiers of the token asset classes to filter for | [optional]
 **limit** | **int**| max number of tokens to fetch | [optional] [default to 50]
 **offset** | **int**| index of first tokens to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include tokens from unconfirmed transactions | [optional] [default to false]
 **tx_metadata** | **bool**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**\StacksBlockchainApi\Model\NonFungibleTokenHoldingsList**](../Model/NonFungibleTokenHoldingsList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNftMetadataList()`

```php
getNftMetadataList($limit, $offset): \StacksBlockchainApi\Model\NonFungibleTokensMetadataList
```

Non fungible tokens metadata list

Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NonFungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 56; // int | max number of tokens to fetch
$offset = 56; // int | index of first tokens to fetch

try {
    $result = $apiInstance->getNftMetadataList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NonFungibleTokensApi->getNftMetadataList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of tokens to fetch | [optional]
 **offset** | **int**| index of first tokens to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\NonFungibleTokensMetadataList**](../Model/NonFungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNftMints()`

```php
getNftMints($asset_identifier, $limit, $offset, $unanchored, $tx_metadata): \StacksBlockchainApi\Model\NonFungibleTokenMintList
```

Non-Fungible Token mints

Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\NonFungibleTokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$asset_identifier = SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild; // string | token asset class identifier
$limit = 50; // int | max number of events to fetch
$offset = 0; // int | index of first event to fetch
$unanchored = false; // bool | whether or not to include events from unconfirmed transactions
$tx_metadata = false; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    $result = $apiInstance->getNftMints($asset_identifier, $limit, $offset, $unanchored, $tx_metadata);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NonFungibleTokensApi->getNftMints: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_identifier** | **string**| token asset class identifier |
 **limit** | **int**| max number of events to fetch | [optional] [default to 50]
 **offset** | **int**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **tx_metadata** | **bool**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**\StacksBlockchainApi\Model\NonFungibleTokenMintList**](../Model/NonFungibleTokenMintList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
