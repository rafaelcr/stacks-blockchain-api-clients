# TransactionsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressMempoolTransactions**](TransactionsApi.md#getAddressMempoolTransactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address
[**getDroppedMempoolTransactionList**](TransactionsApi.md#getDroppedMempoolTransactionList) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions
[**getMempoolTransactionList**](TransactionsApi.md#getMempoolTransactionList) | **GET** /extended/v1/tx/mempool | Get mempool transactions
[**getRawTransactionById**](TransactionsApi.md#getRawTransactionById) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction
[**getTransactionById**](TransactionsApi.md#getTransactionById) | **GET** /extended/v1/tx/{tx_id} | Get transaction
[**getTransactionList**](TransactionsApi.md#getTransactionList) | **GET** /extended/v1/tx | Get recent transactions
[**getTransactionsByBlockHash**](TransactionsApi.md#getTransactionsByBlockHash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash
[**getTransactionsByBlockHeight**](TransactionsApi.md#getTransactionsByBlockHeight) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height
[**getTxListDetails**](TransactionsApi.md#getTxListDetails) | **GET** /extended/v1/tx/multiple | Get list of details for transactions
[**postCoreNodeTransactions**](TransactionsApi.md#postCoreNodeTransactions) | **POST** /v2/transactions | Broadcast raw transaction


<a name="getAddressMempoolTransactions"></a>
# **getAddressMempoolTransactions**
> Object getAddressMempoolTransactions(address, limit, offset, unanchored)

Transactions for address

Retrieves all transactions for a given address that are currently in mempool

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    String address = "address_example"; // String | Transactions for the address
    Integer limit = 56; // Integer | max number of transactions to fetch
    Integer offset = 56; // Integer | index of first transaction to fetch
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      Object result = apiInstance.getAddressMempoolTransactions(address, limit, offset, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getAddressMempoolTransactions");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Transactions for the address |
 **limit** | **Integer**| max number of transactions to fetch | [optional]
 **offset** | **Integer**| index of first transaction to fetch | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of Transactions |  -  |

<a name="getDroppedMempoolTransactionList"></a>
# **getDroppedMempoolTransactionList**
> Object getDroppedMempoolTransactionList(limit, offset)

Get dropped mempool transactions

Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    Integer limit = 96; // Integer | max number of mempool transactions to fetch
    Integer offset = 56; // Integer | index of first mempool transaction to fetch
    try {
      Object result = apiInstance.getDroppedMempoolTransactionList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getDroppedMempoolTransactionList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **Integer**| index of first mempool transaction to fetch | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of dropped mempool transactions |  -  |

<a name="getMempoolTransactionList"></a>
# **getMempoolTransactionList**
> MempoolTransactionListResponse getMempoolTransactionList(senderAddress, recipientAddress, address, limit, offset, unanchored)

Get mempool transactions

Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    String senderAddress = "senderAddress_example"; // String | Filter to only return transactions with this sender address.
    String recipientAddress = "recipientAddress_example"; // String | Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
    String address = "address_example"; // String | Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
    Integer limit = 96; // Integer | max number of mempool transactions to fetch
    Integer offset = 56; // Integer | index of first mempool transaction to fetch
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      MempoolTransactionListResponse result = apiInstance.getMempoolTransactionList(senderAddress, recipientAddress, address, limit, offset, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getMempoolTransactionList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **senderAddress** | **String**| Filter to only return transactions with this sender address. | [optional]
 **recipientAddress** | **String**| Filter to only return transactions with this recipient address (only applicable for STX transfer tx types). | [optional]
 **address** | **String**| Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types). | [optional]
 **limit** | **Integer**| max number of mempool transactions to fetch | [optional] [default to 96]
 **offset** | **Integer**| index of first mempool transaction to fetch | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**MempoolTransactionListResponse**](MempoolTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of mempool transactions |  -  |

<a name="getRawTransactionById"></a>
# **getRawTransactionById**
> GetRawTransactionResult getRawTransactionById(txId)

Get Raw Transaction

Retrieves a hex encoded serialized transaction for a given ID 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    String txId = "txId_example"; // String | Hash of transaction
    try {
      GetRawTransactionResult result = apiInstance.getRawTransactionById(txId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getRawTransactionById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Hex encoded serialized transaction |  -  |
**404** | Cannot find transaction for given ID |  -  |

<a name="getTransactionById"></a>
# **getTransactionById**
> AnyOfobjectobjectobjectobjectobject getTransactionById(txId, eventOffset, eventLimit, unanchored)

Get transaction

Retrieves transaction details for a given transaction ID  &#x60;import type { Transaction } from &#39;@stacks/stacks-blockchain-api-types&#39;;&#x60; 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    String txId = "txId_example"; // String | Hash of transaction
    Integer eventOffset = 0; // Integer | The number of events to skip
    Integer eventLimit = 96; // Integer | The numbers of events to return
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      AnyOfobjectobjectobjectobjectobject result = apiInstance.getTransactionById(txId, eventOffset, eventLimit, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getTransactionById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | **String**| Hash of transaction |
 **eventOffset** | **Integer**| The number of events to skip | [optional] [default to 0]
 **eventLimit** | **Integer**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Transaction |  -  |
**404** | Cannot find transaction for given ID |  -  |

<a name="getTransactionList"></a>
# **getTransactionList**
> TransactionResults getTransactionList(limit, offset, type, unanchored)

Get recent transactions

Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  &#x60;import type { TransactionResults } from &#39;@stacks/stacks-blockchain-api-types&#39;;&#x60; 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    Integer limit = 96; // Integer | max number of transactions to fetch
    Integer offset = 56; // Integer | index of first transaction to fetch
    List<String> type = Arrays.asList(); // List<String> | Filter by transaction type
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      TransactionResults result = apiInstance.getTransactionList(limit, offset, type, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getTransactionList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| max number of transactions to fetch | [optional] [default to 96]
 **offset** | **Integer**| index of first transaction to fetch | [optional]
 **type** | [**List&lt;String&gt;**](String.md)| Filter by transaction type | [optional] [enum: coinbase, token_transfer, smart_contract, contract_call, poison_microblock]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**TransactionResults**](TransactionResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of transactions |  -  |

<a name="getTransactionsByBlockHash"></a>
# **getTransactionsByBlockHash**
> Object getTransactionsByBlockHash(blockHash, limit, offset)

Transactions by block hash

Retrieves a list of all transactions within a block for a given block hash.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    String blockHash = "blockHash_example"; // String | Hash of block
    Integer limit = 56; // Integer | max number of transactions to fetch
    Integer offset = 56; // Integer | index of first transaction to fetch
    try {
      Object result = apiInstance.getTransactionsByBlockHash(blockHash, limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getTransactionsByBlockHash");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockHash** | **String**| Hash of block |
 **limit** | **Integer**| max number of transactions to fetch | [optional]
 **offset** | **Integer**| index of first transaction to fetch | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of Transactions |  -  |

<a name="getTransactionsByBlockHeight"></a>
# **getTransactionsByBlockHeight**
> Object getTransactionsByBlockHeight(height, limit, offset, unanchored)

Transactions by block height

Retrieves all transactions within a block at a given height

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    Integer height = 56; // Integer | Height of block
    Integer limit = 56; // Integer | max number of transactions to fetch
    Integer offset = 56; // Integer | index of first transaction to fetch
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      Object result = apiInstance.getTransactionsByBlockHeight(height, limit, offset, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getTransactionsByBlockHeight");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **Integer**| Height of block |
 **limit** | **Integer**| max number of transactions to fetch | [optional]
 **offset** | **Integer**| index of first transaction to fetch | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of Transactions |  -  |

<a name="getTxListDetails"></a>
# **getTxListDetails**
> Map&lt;String, AnyOfobjectobject&gt; getTxListDetails(txId, eventOffset, eventLimit, unanchored)

Get list of details for transactions

Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  &#x60;import type { Transaction } from &#39;@stacks/stacks-blockchain-api-types&#39;;&#x60; 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    List<String> txId = Arrays.asList(); // List<String> | Array of transaction ids
    Integer eventOffset = 0; // Integer | The number of events to skip
    Integer eventLimit = 96; // Integer | The numbers of events to return
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      Map<String, AnyOfobjectobject> result = apiInstance.getTxListDetails(txId, eventOffset, eventLimit, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#getTxListDetails");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txId** | [**List&lt;String&gt;**](String.md)| Array of transaction ids |
 **eventOffset** | **Integer**| The number of events to skip | [optional] [default to 0]
 **eventLimit** | **Integer**| The numbers of events to return | [optional] [default to 96]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**Map&lt;String, AnyOfobjectobject&gt;**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns list of transactions with their details for corresponding requested tx_ids. |  -  |
**404** | Could not find any transaction by ID |  -  |

<a name="postCoreNodeTransactions"></a>
# **postCoreNodeTransactions**
> String postCoreNodeTransactions(body)

Broadcast raw transaction

Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.TransactionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    TransactionsApi apiInstance = new TransactionsApi(defaultClient);
    File body = binary format of 00000000010400bed38c2aadffa348931bcb542880ff79d607afec000000000000000000000000000000c800012b0b1fff6cccd0974966dcd665835838f0985be508e1322e09fb3d751eca132c492bda720f9ef1768d14fdabed6127560ba52d5e3ac470dcb60b784e97dc88c9030200000000000516df0ba3e79792be7be5e50a370289accfc8c9e032000000000000303974657374206d656d6f00000000000000000000000000000000000000000000000000; // File | 
    try {
      String result = apiInstance.postCoreNodeTransactions(body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsApi#postCoreNodeTransactions");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **File**|  | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Transaction id of successful post of a raw tx to the node&#39;s mempool |  -  |
**400** | Rejections result in a 400 error |  -  |

