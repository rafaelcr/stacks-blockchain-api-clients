# TransactionsAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressMempoolTransactions**](TransactionsAPI.md#getaddressmempooltransactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address
[**getDroppedMempoolTransactionList**](TransactionsAPI.md#getdroppedmempooltransactionlist) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions
[**getMempoolTransactionList**](TransactionsAPI.md#getmempooltransactionlist) | **GET** /extended/v1/tx/mempool | Get mempool transactions
[**getRawTransactionById**](TransactionsAPI.md#getrawtransactionbyid) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction
[**getTransactionById**](TransactionsAPI.md#gettransactionbyid) | **GET** /extended/v1/tx/{tx_id} | Get transaction
[**getTransactionList**](TransactionsAPI.md#gettransactionlist) | **GET** /extended/v1/tx | Get recent transactions
[**getTransactionsByBlockHash**](TransactionsAPI.md#gettransactionsbyblockhash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash
[**getTransactionsByBlockHeight**](TransactionsAPI.md#gettransactionsbyblockheight) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height
[**getTxListDetails**](TransactionsAPI.md#gettxlistdetails) | **GET** /extended/v1/tx/multiple | Get list of details for transactions
[**postCoreNodeTransactions**](TransactionsAPI.md#postcorenodetransactions) | **POST** /v2/transactions | Broadcast raw transaction


# **getAddressMempoolTransactions**
```swift
    open class func getAddressMempoolTransactions(address: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Transactions for address

Retrieves all transactions for a given address that are currently in mempool

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | Transactions for the address
let limit = 987 // Int | max number of transactions to fetch (optional)
let offset = 987 // Int | index of first transaction to fetch (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Transactions for address
TransactionsAPI.getAddressMempoolTransactions(address: address, limit: limit, offset: offset, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | Transactions for the address | 
 **limit** | **Int** | max number of transactions to fetch | [optional] 
 **offset** | **Int** | index of first transaction to fetch | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDroppedMempoolTransactionList**
```swift
    open class func getDroppedMempoolTransactionList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get dropped mempool transactions

Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of mempool transactions to fetch (optional) (default to 96)
let offset = 987 // Int | index of first mempool transaction to fetch (optional)

// Get dropped mempool transactions
TransactionsAPI.getDroppedMempoolTransactionList(limit: limit, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **Int** | index of first mempool transaction to fetch | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMempoolTransactionList**
```swift
    open class func getMempoolTransactionList(senderAddress: String? = nil, recipientAddress: String? = nil, address: String? = nil, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: MempoolTransactionListResponse?, _ error: Error?) -> Void)
```

Get mempool transactions

Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let senderAddress = "senderAddress_example" // String | Filter to only return transactions with this sender address. (optional)
let recipientAddress = "recipientAddress_example" // String | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). (optional)
let address = "address_example" // String | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). (optional)
let limit = 987 // Int | max number of mempool transactions to fetch (optional) (default to 96)
let offset = 987 // Int | index of first mempool transaction to fetch (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get mempool transactions
TransactionsAPI.getMempoolTransactionList(senderAddress: senderAddress, recipientAddress: recipientAddress, address: address, limit: limit, offset: offset, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **senderAddress** | **String** | Filter to only return transactions with this sender address. | [optional] 
 **recipientAddress** | **String** | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). | [optional] 
 **address** | **String** | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). | [optional] 
 **limit** | **Int** | max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **Int** | index of first mempool transaction to fetch | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**MempoolTransactionListResponse**](MempoolTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawTransactionById**
```swift
    open class func getRawTransactionById(txId: String, completion: @escaping (_ data: GetRawTransactionResult?, _ error: Error?) -> Void)
```

Get Raw Transaction

Retrieves a hex encoded serialized transaction for a given ID 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let txId = "txId_example" // String | Hash of transaction

// Get Raw Transaction
TransactionsAPI.getRawTransactionById(txId: txId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | **String** | Hash of transaction | 

### Return type

[**GetRawTransactionResult**](GetRawTransactionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionById**
```swift
    open class func getTransactionById(txId: String, eventOffset: Int? = nil, eventLimit: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: AnyOfobjectobjectobjectobjectobject?, _ error: Error?) -> Void)
```

Get transaction

Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let txId = "txId_example" // String | Hash of transaction
let eventOffset = 987 // Int | The number of events to skip (optional) (default to 0)
let eventLimit = 987 // Int | The numbers of events to return (optional) (default to 96)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get transaction
TransactionsAPI.getTransactionById(txId: txId, eventOffset: eventOffset, eventLimit: eventLimit, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | **String** | Hash of transaction | 
 **eventOffset** | **Int** | The number of events to skip | [optional] [default to 0]
 **eventLimit** | **Int** | The numbers of events to return | [optional] [default to 96]
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionList**
```swift
    open class func getTransactionList(limit: Int? = nil, offset: Int? = nil, type: [ModelType_getTransactionList]? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: TransactionResults?, _ error: Error?) -> Void)
```

Get recent transactions

Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of transactions to fetch (optional) (default to 96)
let offset = 987 // Int | index of first transaction to fetch (optional)
let type = ["type_example"] // [String] | Filter by transaction type (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get recent transactions
TransactionsAPI.getTransactionList(limit: limit, offset: offset, type: type, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | max number of transactions to fetch | [optional] [default to 96]
 **offset** | **Int** | index of first transaction to fetch | [optional] 
 **type** | [**[String]**](String.md) | Filter by transaction type | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**TransactionResults**](TransactionResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsByBlockHash**
```swift
    open class func getTransactionsByBlockHash(blockHash: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Transactions by block hash

Retrieves a list of all transactions within a block for a given block hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let blockHash = "blockHash_example" // String | Hash of block
let limit = 987 // Int | max number of transactions to fetch (optional)
let offset = 987 // Int | index of first transaction to fetch (optional)

// Transactions by block hash
TransactionsAPI.getTransactionsByBlockHash(blockHash: blockHash, limit: limit, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockHash** | **String** | Hash of block | 
 **limit** | **Int** | max number of transactions to fetch | [optional] 
 **offset** | **Int** | index of first transaction to fetch | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionsByBlockHeight**
```swift
    open class func getTransactionsByBlockHeight(height: Int, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Transactions by block height

Retrieves all transactions within a block at a given height

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let height = 987 // Int | Height of block
let limit = 987 // Int | max number of transactions to fetch (optional)
let offset = 987 // Int | index of first transaction to fetch (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Transactions by block height
TransactionsAPI.getTransactionsByBlockHeight(height: height, limit: limit, offset: offset, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **Int** | Height of block | 
 **limit** | **Int** | max number of transactions to fetch | [optional] 
 **offset** | **Int** | index of first transaction to fetch | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTxListDetails**
```swift
    open class func getTxListDetails(txId: [String], eventOffset: Int? = nil, eventLimit: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: [String: AnyOfobjectobject]?, _ error: Error?) -> Void)
```

Get list of details for transactions

Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let txId = ["inner_example"] // [String] | Array of transaction ids
let eventOffset = 987 // Int | The number of events to skip (optional) (default to 0)
let eventLimit = 987 // Int | The numbers of events to return (optional) (default to 96)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get list of details for transactions
TransactionsAPI.getTxListDetails(txId: txId, eventOffset: eventOffset, eventLimit: eventLimit, unanchored: unanchored) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | [**[String]**](String.md) | Array of transaction ids | 
 **eventOffset** | **Int** | The number of events to skip | [optional] [default to 0]
 **eventLimit** | **Int** | The numbers of events to return | [optional] [default to 96]
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**[String: AnyOfobjectobject]**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCoreNodeTransactions**
```swift
    open class func postCoreNodeTransactions(body: URL? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Broadcast raw transaction

Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let body = URL(string: "https://example.com")! // URL |  (optional)

// Broadcast raw transaction
TransactionsAPI.postCoreNodeTransactions(body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **URL** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

