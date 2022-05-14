# FungibleTokensApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractFtMetadata**](FungibleTokensApi.md#getContractFtMetadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id
[**getFtMetadataList**](FungibleTokensApi.md#getFtMetadataList) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list


<a name="getContractFtMetadata"></a>
# **getContractFtMetadata**
> FungibleTokenMetadata getContractFtMetadata(contractId)

Fungible tokens metadata for contract id

Retrieves the metadata for fungible tokens for a given contract id

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FungibleTokensApi apiInstance = new FungibleTokensApi(defaultClient);
    String contractId = "contractId_example"; // String | token's contract id
    try {
      FungibleTokenMetadata result = apiInstance.getContractFtMetadata(contractId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FungibleTokensApi#getContractFtMetadata");
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
 **contractId** | **String**| token&#39;s contract id |

### Return type

[**FungibleTokenMetadata**](FungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fungible tokens metadata for contract id |  -  |

<a name="getFtMetadataList"></a>
# **getFtMetadataList**
> FungibleTokensMetadataList getFtMetadataList(limit, offset)

Fungible tokens metadata list

Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FungibleTokensApi apiInstance = new FungibleTokensApi(defaultClient);
    Integer limit = 56; // Integer | max number of tokens to fetch
    Integer offset = 56; // Integer | index of first tokens to fetch
    try {
      FungibleTokensMetadataList result = apiInstance.getFtMetadataList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FungibleTokensApi#getFtMetadataList");
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
 **limit** | **Integer**| max number of tokens to fetch | [optional]
 **offset** | **Integer**| index of first tokens to fetch | [optional]

### Return type

[**FungibleTokensMetadataList**](FungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of fungible tokens metadata |  -  |

