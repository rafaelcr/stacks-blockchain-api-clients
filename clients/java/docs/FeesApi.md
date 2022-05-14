# FeesApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchFeeRate**](FeesApi.md#fetchFeeRate) | **POST** /extended/v1/fee_rate | fetch fee rate
[**getFeeTransfer**](FeesApi.md#getFeeTransfer) | **GET** /v2/fees/transfer | Get estimated fee


<a name="fetchFeeRate"></a>
# **fetchFeeRate**
> FeeRate fetchFeeRate(feeRateRequest)

fetch fee rate

Retrieves estimated fee rate.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FeesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FeesApi apiInstance = new FeesApi(defaultClient);
    FeeRateRequest feeRateRequest = new FeeRateRequest(); // FeeRateRequest | 
    try {
      FeeRate result = apiInstance.fetchFeeRate(feeRateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FeesApi#fetchFeeRate");
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
 **feeRateRequest** | [**FeeRateRequest**](FeeRateRequest.md)|  |

### Return type

[**FeeRate**](FeeRate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Transaction fee rate |  -  |

<a name="getFeeTransfer"></a>
# **getFeeTransfer**
> Object getFeeTransfer()

Get estimated fee

Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FeesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FeesApi apiInstance = new FeesApi(defaultClient);
    try {
      Object result = apiInstance.getFeeTransfer();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FeesApi#getFeeTransfer");
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

