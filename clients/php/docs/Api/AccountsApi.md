# StacksBlockchainApi\AccountsApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountAssets()**](AccountsApi.md#getAccountAssets) | **GET** /extended/v1/address/{principal}/assets | Get account assets
[**getAccountBalance()**](AccountsApi.md#getAccountBalance) | **GET** /extended/v1/address/{principal}/balances | Get account balances
[**getAccountInbound()**](AccountsApi.md#getAccountInbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers
[**getAccountInfo()**](AccountsApi.md#getAccountInfo) | **GET** /v2/accounts/{principal} | Get account info
[**getAccountNft()**](AccountsApi.md#getAccountNft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events
[**getAccountNonces()**](AccountsApi.md#getAccountNonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account
[**getAccountStxBalance()**](AccountsApi.md#getAccountStxBalance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance
[**getAccountTransactions()**](AccountsApi.md#getAccountTransactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions
[**getAccountTransactionsWithTransfers()**](AccountsApi.md#getAccountTransactionsWithTransfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction.
[**getSingleTransactionWithTransfers()**](AccountsApi.md#getSingleTransactionWithTransfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction


## `getAccountAssets()`

```php
getAccountAssets($principal, $limit, $offset, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressAssetsListResponse
```

Get account assets

Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | max number of account assets to fetch
$offset = 56; // int | index of first account assets to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state at that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountAssets($principal, $limit, $offset, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountAssets: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **int**| max number of account assets to fetch | [optional]
 **offset** | **int**| index of first account assets to fetch | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state at that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressAssetsListResponse**](../Model/AddressAssetsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountBalance()`

```php
getAccountBalance($principal, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressBalanceResponse
```

Get account balances

Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountBalance($principal, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountBalance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressBalanceResponse**](../Model/AddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountInbound()`

```php
getAccountInbound($principal, $limit, $offset, $height, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressStxInboundListResponse
```

Get inbound STX transfers

Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | number of items to return
$offset = 56; // int | number of items to skip
$height = 3.4; // float | Filter for transfers only at this given block height
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountInbound($principal, $limit, $offset, $height, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountInbound: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **int**| number of items to return | [optional]
 **offset** | **int**| number of items to skip | [optional]
 **height** | **float**| Filter for transfers only at this given block height | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressStxInboundListResponse**](../Model/AddressStxInboundListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountInfo()`

```php
getAccountInfo($principal, $proof, $tip): \StacksBlockchainApi\Model\AccountDataResponse
```

Get account info

Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$proof = 56; // int | Returns object without the proof field if set to 0
$tip = 'tip_example'; // string | The Stacks chain tip to query from

try {
    $result = $apiInstance->getAccountInfo($principal, $proof, $tip);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **proof** | **int**| Returns object without the proof field if set to 0 | [optional]
 **tip** | **string**| The Stacks chain tip to query from | [optional]

### Return type

[**\StacksBlockchainApi\Model\AccountDataResponse**](../Model/AccountDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountNft()`

```php
getAccountNft($principal, $limit, $offset, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressNftListResponse
```

Get nft events

**NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | number of items to return
$offset = 56; // int | number of items to skip
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountNft($principal, $limit, $offset, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountNft: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **int**| number of items to return | [optional]
 **offset** | **int**| number of items to skip | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressNftListResponse**](../Model/AddressNftListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountNonces()`

```php
getAccountNonces($principal, $block_height, $block_hash): \StacksBlockchainApi\Model\AddressNonces
```

Get the latest nonce used by an account

Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
$block_height = 3.4; // float | Optionally get the nonce at a given block height
$block_hash = 'block_hash_example'; // string | Optionally get the nonce at a given block hash

try {
    $result = $apiInstance->getAccountNonces($principal, $block_height, $block_hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountNonces: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0&#x60;) |
 **block_height** | **float**| Optionally get the nonce at a given block height | [optional]
 **block_hash** | **string**| Optionally get the nonce at a given block hash | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressNonces**](../Model/AddressNonces.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountStxBalance()`

```php
getAccountStxBalance($principal, $unanchored, $until_block): object
```

Get account STX balance

Retrieves STX token balance for a given Address or Contract Identifier.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountStxBalance($principal, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountStxBalance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

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

## `getAccountTransactions()`

```php
getAccountTransactions($principal, $limit, $offset, $height, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressTransactionsListResponse
```

Get account transactions

Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | max number of account transactions to fetch
$offset = 56; // int | index of first account transaction to fetch
$height = 3.4; // float | Filter for transactions only at this given block height
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountTransactions($principal, $limit, $offset, $height, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **int**| max number of account transactions to fetch | [optional]
 **offset** | **int**| index of first account transaction to fetch | [optional]
 **height** | **float**| Filter for transactions only at this given block height | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressTransactionsListResponse**](../Model/AddressTransactionsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccountTransactionsWithTransfers()`

```php
getAccountTransactionsWithTransfers($principal, $limit, $offset, $height, $unanchored, $until_block): \StacksBlockchainApi\Model\AddressTransactionsWithTransfersListResponse
```

Get account transactions including STX transfers for each transaction.

Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | max number of account transactions to fetch
$offset = 56; // int | index of first account transaction to fetch
$height = 3.4; // float | Filter for transactions only at this given block height
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state up until that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountTransactionsWithTransfers($principal, $limit, $offset, $height, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountTransactionsWithTransfers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **int**| max number of account transactions to fetch | [optional]
 **offset** | **int**| index of first account transaction to fetch | [optional]
 **height** | **float**| Filter for transactions only at this given block height | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **until_block** | **string**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**\StacksBlockchainApi\Model\AddressTransactionsWithTransfersListResponse**](../Model/AddressTransactionsWithTransfersListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSingleTransactionWithTransfers()`

```php
getSingleTransactionWithTransfers($principal, $tx_id): \StacksBlockchainApi\Model\AddressTransactionWithTransfers
```

Get account transaction information for specific transaction

Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a contract identifier
$tx_id = 'tx_id_example'; // string | Transaction id

try {
    $result = $apiInstance->getSingleTransactionWithTransfers($principal, $tx_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getSingleTransactionWithTransfers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **string**| Stacks address or a contract identifier |
 **tx_id** | **string**| Transaction id |

### Return type

[**\StacksBlockchainApi\Model\AddressTransactionWithTransfers**](../Model/AddressTransactionWithTransfers.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
