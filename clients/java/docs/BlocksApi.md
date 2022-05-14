# BlocksApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlockByBurnBlockHash**](BlocksApi.md#getBlockByBurnBlockHash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash
[**getBlockByBurnBlockHeight**](BlocksApi.md#getBlockByBurnBlockHeight) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height
[**getBlockByHash**](BlocksApi.md#getBlockByHash) | **GET** /extended/v1/block/{hash} | Get block by hash
[**getBlockByHeight**](BlocksApi.md#getBlockByHeight) | **GET** /extended/v1/block/by_height/{height} | Get block by height
[**getBlockList**](BlocksApi.md#getBlockList) | **GET** /extended/v1/block | Get recent blocks


<a name="getBlockByBurnBlockHash"></a>
# **getBlockByBurnBlockHash**
> Object getBlockByBurnBlockHash(burnBlockHash)

Get block by burnchain block hash

Retrieves block details of a specific block for a given burnchain block hash

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.BlocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    BlocksApi apiInstance = new BlocksApi(defaultClient);
    String burnBlockHash = "burnBlockHash_example"; // String | Hash of the burnchain block
    try {
      Object result = apiInstance.getBlockByBurnBlockHash(burnBlockHash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlocksApi#getBlockByBurnBlockHash");
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
 **burnBlockHash** | **String**| Hash of the burnchain block |

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
**200** | Block |  -  |
**404** | Cannot find block with given height |  -  |

<a name="getBlockByBurnBlockHeight"></a>
# **getBlockByBurnBlockHeight**
> Object getBlockByBurnBlockHeight(burnBlockHeight)

Get block by burnchain height

Retrieves block details of a specific block for a given burn chain height

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.BlocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    BlocksApi apiInstance = new BlocksApi(defaultClient);
    BigDecimal burnBlockHeight = new BigDecimal(78); // BigDecimal | Height of the burn chain block
    try {
      Object result = apiInstance.getBlockByBurnBlockHeight(burnBlockHeight);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlocksApi#getBlockByBurnBlockHeight");
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
 **burnBlockHeight** | **BigDecimal**| Height of the burn chain block |

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
**200** | Block |  -  |
**404** | Cannot find block with given height |  -  |

<a name="getBlockByHash"></a>
# **getBlockByHash**
> Block getBlockByHash(hash)

Get block by hash

Retrieves block details of a specific block for a given chain height

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.BlocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    BlocksApi apiInstance = new BlocksApi(defaultClient);
    String hash = "hash_example"; // String | Hash of the block
    try {
      Block result = apiInstance.getBlockByHash(hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlocksApi#getBlockByHash");
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
 **hash** | **String**| Hash of the block |

### Return type

[**Block**](Block.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Block |  -  |
**404** | Cannot find block with given ID |  -  |

<a name="getBlockByHeight"></a>
# **getBlockByHeight**
> Object getBlockByHeight(height)

Get block by height

Retrieves block details of a specific block at a given block height

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.BlocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    BlocksApi apiInstance = new BlocksApi(defaultClient);
    BigDecimal height = new BigDecimal(78); // BigDecimal | Height of the block
    try {
      Object result = apiInstance.getBlockByHeight(height);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlocksApi#getBlockByHeight");
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
 **height** | **BigDecimal**| Height of the block |

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
**200** | Block |  -  |
**404** | Cannot find block with given height |  -  |

<a name="getBlockList"></a>
# **getBlockList**
> BlockListResponse getBlockList(limit, offset)

Get recent blocks

Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.BlocksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    BlocksApi apiInstance = new BlocksApi(defaultClient);
    Integer limit = 20; // Integer | max number of blocks to fetch
    Integer offset = 56; // Integer | index of first block to fetch
    try {
      BlockListResponse result = apiInstance.getBlockList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlocksApi#getBlockList");
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
 **limit** | **Integer**| max number of blocks to fetch | [optional] [default to 20]
 **offset** | **Integer**| index of first block to fetch | [optional]

### Return type

[**BlockListResponse**](BlockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of blocks |  -  |

