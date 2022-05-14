# StacksBlockchainApi\TransactionsApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressMempoolTransactions()**](TransactionsApi.md#getAddressMempoolTransactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address
[**getDroppedMempoolTransactionList()**](TransactionsApi.md#getDroppedMempoolTransactionList) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions
[**getMempoolTransactionList()**](TransactionsApi.md#getMempoolTransactionList) | **GET** /extended/v1/tx/mempool | Get mempool transactions
[**getRawTransactionById()**](TransactionsApi.md#getRawTransactionById) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction
[**getTransactionById()**](TransactionsApi.md#getTransactionById) | **GET** /extended/v1/tx/{tx_id} | Get transaction
[**getTransactionList()**](TransactionsApi.md#getTransactionList) | **GET** /extended/v1/tx | Get recent transactions
[**getTransactionsByBlockHash()**](TransactionsApi.md#getTransactionsByBlockHash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash
[**getTransactionsByBlockHeight()**](TransactionsApi.md#getTransactionsByBlockHeight) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height
[**getTxListDetails()**](TransactionsApi.md#getTxListDetails) | **GET** /extended/v1/tx/multiple | Get list of details for transactions
[**postCoreNodeTransactions()**](TransactionsApi.md#postCoreNodeTransactions) | **POST** /v2/transactions | Broadcast raw transaction


## `getAddressMempoolTransactions()`

```php
getAddressMempoolTransactions($address, $limit, $offset, $unanchored): object
```

Transactions for address

Retrieves all transactions for a given address that are currently in mempool

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string | Transactions for the address
$limit = 56; // int | max number of transactions to fetch
$offset = 56; // int | index of first transaction to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getAddressMempoolTransactions($address, $limit, $offset, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getAddressMempoolTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| Transactions for the address |
 **limit** | **int**| max number of transactions to fetch | [optional]
 **offset** | **int**| index of first transaction to fetch | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

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

## `getDroppedMempoolTransactionList()`

```php
getDroppedMempoolTransactionList($limit, $offset): object
```

Get dropped mempool transactions

Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 96; // int | max number of mempool transactions to fetch
$offset = 56; // int | index of first mempool transaction to fetch

try {
    $result = $apiInstance->getDroppedMempoolTransactionList($limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getDroppedMempoolTransactionList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first mempool transaction to fetch | [optional]

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

## `getMempoolTransactionList()`

```php
getMempoolTransactionList($sender_address, $recipient_address, $address, $limit, $offset, $unanchored): \StacksBlockchainApi\Model\MempoolTransactionListResponse
```

Get mempool transactions

Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$sender_address = 'sender_address_example'; // string | Filter to only return transactions with this sender address.
$recipient_address = 'recipient_address_example'; // string | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
$address = 'address_example'; // string | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
$limit = 96; // int | max number of mempool transactions to fetch
$offset = 56; // int | index of first mempool transaction to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getMempoolTransactionList($sender_address, $recipient_address, $address, $limit, $offset, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getMempoolTransactionList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_address** | **string**| Filter to only return transactions with this sender address. | [optional]
 **recipient_address** | **string**| Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). | [optional]
 **address** | **string**| Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). | [optional]
 **limit** | **int**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first mempool transaction to fetch | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**\StacksBlockchainApi\Model\MempoolTransactionListResponse**](../Model/MempoolTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRawTransactionById()`

```php
getRawTransactionById($tx_id): \StacksBlockchainApi\Model\GetRawTransactionResult
```

Get Raw Transaction

Retrieves a hex encoded serialized transaction for a given ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tx_id = 'tx_id_example'; // string | Hash of transaction

try {
    $result = $apiInstance->getRawTransactionById($tx_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getRawTransactionById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx_id** | **string**| Hash of transaction |

### Return type

[**\StacksBlockchainApi\Model\GetRawTransactionResult**](../Model/GetRawTransactionResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTransactionById()`

```php
getTransactionById($tx_id, $event_offset, $event_limit, $unanchored): AnyOfObjectObjectObjectObjectObject
```

Get transaction

Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tx_id = 'tx_id_example'; // string | Hash of transaction
$event_offset = 0; // int | The number of events to skip
$event_limit = 96; // int | The numbers of events to return
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getTransactionById($tx_id, $event_offset, $event_limit, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getTransactionById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx_id** | **string**| Hash of transaction |
 **event_offset** | **int**| The number of events to skip | [optional] [default to 0]
 **event_limit** | **int**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfObjectObjectObjectObjectObject**](../Model/AnyOfObjectObjectObjectObjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTransactionList()`

```php
getTransactionList($limit, $offset, $type, $unanchored): \StacksBlockchainApi\Model\TransactionResults
```

Get recent transactions

Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 96; // int | max number of transactions to fetch
$offset = 56; // int | index of first transaction to fetch
$type = array('type_example'); // string[] | Filter by transaction type
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getTransactionList($limit, $offset, $type, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getTransactionList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first transaction to fetch | [optional]
 **type** | [**string[]**](../Model/string.md)| Filter by transaction type | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**\StacksBlockchainApi\Model\TransactionResults**](../Model/TransactionResults.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTransactionsByBlockHash()`

```php
getTransactionsByBlockHash($block_hash, $limit, $offset): object
```

Transactions by block hash

Retrieves a list of all transactions within a block for a given block hash.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$block_hash = 'block_hash_example'; // string | Hash of block
$limit = 56; // int | max number of transactions to fetch
$offset = 56; // int | index of first transaction to fetch

try {
    $result = $apiInstance->getTransactionsByBlockHash($block_hash, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getTransactionsByBlockHash: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **block_hash** | **string**| Hash of block |
 **limit** | **int**| max number of transactions to fetch | [optional]
 **offset** | **int**| index of first transaction to fetch | [optional]

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

## `getTransactionsByBlockHeight()`

```php
getTransactionsByBlockHeight($height, $limit, $offset, $unanchored): object
```

Transactions by block height

Retrieves all transactions within a block at a given height

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$height = 56; // int | Height of block
$limit = 56; // int | max number of transactions to fetch
$offset = 56; // int | index of first transaction to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getTransactionsByBlockHeight($height, $limit, $offset, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getTransactionsByBlockHeight: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **int**| Height of block |
 **limit** | **int**| max number of transactions to fetch | [optional]
 **offset** | **int**| index of first transaction to fetch | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

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

## `getTxListDetails()`

```php
getTxListDetails($tx_id, $event_offset, $event_limit, $unanchored): array<string,AnyOfObjectObject>
```

Get list of details for transactions

Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tx_id = array('tx_id_example'); // string[] | Array of transaction ids
$event_offset = 0; // int | The number of events to skip
$event_limit = 96; // int | The numbers of events to return
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getTxListDetails($tx_id, $event_offset, $event_limit, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->getTxListDetails: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx_id** | [**string[]**](../Model/string.md)| Array of transaction ids |
 **event_offset** | **int**| The number of events to skip | [optional] [default to 0]
 **event_limit** | **int**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**array<string,AnyOfObjectObject>**](../Model/AnyOfObjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postCoreNodeTransactions()`

```php
postCoreNodeTransactions($body): string
```

Broadcast raw transaction

Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = binary format of 00000000010400bed38c2aadffa348931bcb542880ff79d607afec000000000000000000000000000000c800012b0b1fff6cccd0974966dcd665835838f0985be508e1322e09fb3d751eca132c492bda720f9ef1768d14fdabed6127560ba52d5e3ac470dcb60b784e97dc88c9030200000000000516df0ba3e79792be7be5e50a370289accfc8c9e032000000000000303974657374206d656d6f00000000000000000000000000000000000000000000000000; // \SplFileObject

try {
    $result = $apiInstance->postCoreNodeTransactions($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->postCoreNodeTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **\SplFileObject****\SplFileObject**|  | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/octet-stream`
- **Accept**: `text/plain`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
