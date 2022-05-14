# MicroblocksApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMicroblockByHash**](MicroblocksApi.md#getMicroblockByHash) | **GET** /extended/v1/microblock/{hash} | Get microblock
[**getMicroblockList**](MicroblocksApi.md#getMicroblockList) | **GET** /extended/v1/microblock | Get recent microblocks
[**getUnanchoredTxs**](MicroblocksApi.md#getUnanchoredTxs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks


<a name="getMicroblockByHash"></a>
# **getMicroblockByHash**
> Microblock getMicroblockByHash(hash)

Get microblock

Retrieves a specific microblock by &#x60;hash&#x60;

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.MicroblocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    MicroblocksApi apiInstance = new MicroblocksApi(defaultClient);
    String hash = "hash_example"; // String | Hash of the microblock
    try {
      Microblock result = apiInstance.getMicroblockByHash(hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MicroblocksApi#getMicroblockByHash");
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
 **hash** | **String**| Hash of the microblock |

### Return type

[**Microblock**](Microblock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Microblock |  -  |
**404** | Cannot find microblock with given hash |  -  |

<a name="getMicroblockList"></a>
# **getMicroblockList**
> MicroblockListResponse getMicroblockList(limit, offset)

Get recent microblocks

Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.MicroblocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    MicroblocksApi apiInstance = new MicroblocksApi(defaultClient);
    Integer limit = 20; // Integer | Max number of microblocks to fetch
    Integer offset = 56; // Integer | Index of the first microblock to fetch
    try {
      MicroblockListResponse result = apiInstance.getMicroblockList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MicroblocksApi#getMicroblockList");
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
 **limit** | **Integer**| Max number of microblocks to fetch | [optional] [default to 20]
 **offset** | **Integer**| Index of the first microblock to fetch | [optional]

### Return type

[**MicroblockListResponse**](MicroblockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of microblocks |  -  |

<a name="getUnanchoredTxs"></a>
# **getUnanchoredTxs**
> UnanchoredTransactionListResponse getUnanchoredTxs()

Get the list of current transactions that belong to unanchored microblocks

Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.MicroblocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    MicroblocksApi apiInstance = new MicroblocksApi(defaultClient);
    try {
      UnanchoredTransactionListResponse result = apiInstance.getUnanchoredTxs();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MicroblocksApi#getUnanchoredTxs");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnanchoredTransactionListResponse**](UnanchoredTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Transactions |  -  |

