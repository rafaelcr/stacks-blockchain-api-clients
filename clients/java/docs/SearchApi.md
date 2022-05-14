# SearchApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchById**](SearchApi.md#searchById) | **GET** /extended/v1/search/{id} | Search


<a name="searchById"></a>
# **searchById**
> AnyOfobjectobject searchById(id, includeMetadata)

Search

Search blocks, transactions, contracts, or accounts by hash/ID

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SearchApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SearchApi apiInstance = new SearchApi(defaultClient);
    String id = "id_example"; // String | The hex hash string for a block or transaction, account address, or contract address
    Boolean includeMetadata = true; // Boolean | This includes the detailed data for purticular hash in the response
    try {
      AnyOfobjectobject result = apiInstance.searchById(id, includeMetadata);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SearchApi#searchById");
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
 **id** | **String**| The hex hash string for a block or transaction, account address, or contract address |
 **includeMetadata** | **Boolean**| This includes the detailed data for purticular hash in the response | [optional]

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not found |  -  |

