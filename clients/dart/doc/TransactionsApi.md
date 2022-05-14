# stacks_blockchain_api_client.api.TransactionsApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressMempoolTransactions**](TransactionsApi.md#getaddressmempooltransactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address
[**getDroppedMempoolTransactionList**](TransactionsApi.md#getdroppedmempooltransactionlist) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions
[**getMempoolTransactionList**](TransactionsApi.md#getmempooltransactionlist) | **GET** /extended/v1/tx/mempool | Get mempool transactions
[**getRawTransactionById**](TransactionsApi.md#getrawtransactionbyid) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction
[**getTransactionById**](TransactionsApi.md#gettransactionbyid) | **GET** /extended/v1/tx/{tx_id} | Get transaction
[**getTransactionList**](TransactionsApi.md#gettransactionlist) | **GET** /extended/v1/tx | Get recent transactions
[**getTransactionsByBlockHash**](TransactionsApi.md#gettransactionsbyblockhash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash
[**getTransactionsByBlockHeight**](TransactionsApi.md#gettransactionsbyblockheight) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height
[**getTxListDetails**](TransactionsApi.md#gettxlistdetails) | **GET** /extended/v1/tx/multiple | Get list of details for transactions
[**postCoreNodeTransactions**](TransactionsApi.md#postcorenodetransactions) | **POST** /v2/transactions | Broadcast raw transaction


# **getAddressMempoolTransactions**
> Object getAddressMempoolTransactions(address, limit, offset, unanchored)

Transactions for address

Retrieves all transactions for a given address that are currently in mempool

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final address = address_example; // String | Transactions for the address
final limit = 56; // int | max number of transactions to fetch
final offset = 56; // int | index of first transaction to fetch
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getAddressMempoolTransactions(address, limit, offset, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getAddressMempoolTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Transactions for the address | 
 **limit** | **int**| max number of transactions to fetch | [optional] 
 **offset** | **int**| index of first transaction to fetch | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDroppedMempoolTransactionList**
> Object getDroppedMempoolTransactionList(limit, offset)

Get dropped mempool transactions

Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final limit = 56; // int | max number of mempool transactions to fetch
final offset = 56; // int | index of first mempool transaction to fetch

try {
    final result = api_instance.getDroppedMempoolTransactionList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getDroppedMempoolTransactionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first mempool transaction to fetch | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMempoolTransactionList**
> MempoolTransactionListResponse getMempoolTransactionList(senderAddress, recipientAddress, address, limit, offset, unanchored)

Get mempool transactions

Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final senderAddress = senderAddress_example; // String | Filter to only return transactions with this sender address.
final recipientAddress = recipientAddress_example; // String | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
final address = address_example; // String | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
final limit = 56; // int | max number of mempool transactions to fetch
final offset = 56; // int | index of first mempool transaction to fetch
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getMempoolTransactionList(senderAddress, recipientAddress, address, limit, offset, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getMempoolTransactionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **senderAddress** | **String**| Filter to only return transactions with this sender address. | [optional] 
 **recipientAddress** | **String**| Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). | [optional] 
 **address** | **String**| Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). | [optional] 
 **limit** | **int**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first mempool transaction to fetch | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**MempoolTransactionListResponse**](MempoolTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawTransactionById**
> GetRawTransactionResult getRawTransactionById(txId)

Get Raw Transaction

Retrieves a hex encoded serialized transaction for a given ID 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final txId = txId_example; // String | Hash of transaction

try {
    final result = api_instance.getRawTransactionById(txId);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getRawTransactionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | **String**| Hash of transaction | 

### Return type

[**GetRawTransactionResult**](GetRawTransactionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionById**
> AnyOfobjectobjectobjectobjectobject getTransactionById(txId, eventOffset, eventLimit, unanchored)

Get transaction

Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final txId = txId_example; // String | Hash of transaction
final eventOffset = 56; // int | The number of events to skip
final eventLimit = 56; // int | The numbers of events to return
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getTransactionById(txId, eventOffset, eventLimit, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getTransactionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | **String**| Hash of transaction | 
 **eventOffset** | **int**| The number of events to skip | [optional] [default to 0]
 **eventLimit** | **int**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionList**
> TransactionResults getTransactionList(limit, offset, type, unanchored)

Get recent transactions

Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final limit = 56; // int | max number of transactions to fetch
final offset = 56; // int | index of first transaction to fetch
final type = []; // List<String> | Filter by transaction type
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getTransactionList(limit, offset, type, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getTransactionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of transactions to fetch | [optional] [default to 96]
 **offset** | **int**| index of first transaction to fetch | [optional] 
 **type** | [**List<String>**](String.md)| Filter by transaction type | [optional] [default to const []]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**TransactionResults**](TransactionResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsByBlockHash**
> Object getTransactionsByBlockHash(blockHash, limit, offset)

Transactions by block hash

Retrieves a list of all transactions within a block for a given block hash.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final blockHash = blockHash_example; // String | Hash of block
final limit = 56; // int | max number of transactions to fetch
final offset = 56; // int | index of first transaction to fetch

try {
    final result = api_instance.getTransactionsByBlockHash(blockHash, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getTransactionsByBlockHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockHash** | **String**| Hash of block | 
 **limit** | **int**| max number of transactions to fetch | [optional] 
 **offset** | **int**| index of first transaction to fetch | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsByBlockHeight**
> Object getTransactionsByBlockHeight(height, limit, offset, unanchored)

Transactions by block height

Retrieves all transactions within a block at a given height

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final height = 56; // int | Height of block
final limit = 56; // int | max number of transactions to fetch
final offset = 56; // int | index of first transaction to fetch
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getTransactionsByBlockHeight(height, limit, offset, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getTransactionsByBlockHeight: $e\n');
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

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTxListDetails**
> Map<String, AnyOfobjectobject> getTxListDetails(txId, eventOffset, eventLimit, unanchored)

Get list of details for transactions

Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final txId = []; // List<String> | Array of transaction ids
final eventOffset = 56; // int | The number of events to skip
final eventLimit = 56; // int | The numbers of events to return
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getTxListDetails(txId, eventOffset, eventLimit, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->getTxListDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | [**List<String>**](String.md)| Array of transaction ids | [default to const []]
 **eventOffset** | **int**| The number of events to skip | [optional] [default to 0]
 **eventLimit** | **int**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**Map<String, AnyOfobjectobject>**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCoreNodeTransactions**
> String postCoreNodeTransactions(body)

Broadcast raw transaction

Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = TransactionsApi();
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.postCoreNodeTransactions(body);
    print(result);
} catch (e) {
    print('Exception when calling TransactionsApi->postCoreNodeTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **MultipartFile**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

