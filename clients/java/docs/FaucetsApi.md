# FaucetsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runFaucetBtc**](FaucetsApi.md#runFaucetBtc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address
[**runFaucetStx**](FaucetsApi.md#runFaucetStx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens


<a name="runFaucetBtc"></a>
# **runFaucetBtc**
> Object runFaucetBtc(address, inlineObject1)

Add testnet BTC tokens to address

Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FaucetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FaucetsApi apiInstance = new FaucetsApi(defaultClient);
    String address = "2N4M94S1ZPt8HfxydXzL2P7qyzgVq7MHWts"; // String | A valid testnet BTC address
    InlineObject1 inlineObject1 = new InlineObject1(); // InlineObject1 | 
    try {
      Object result = apiInstance.runFaucetBtc(address, inlineObject1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FaucetsApi#runFaucetBtc");
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
 **address** | **String**| A valid testnet BTC address |
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**500** | Faucet call failed |  -  |

<a name="runFaucetStx"></a>
# **runFaucetStx**
> RunFaucetResponse runFaucetStx(address, stacking, inlineObject)

Get STX testnet tokens

Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with &#x60;ST&#x60;. If the &#x60;stacking&#x60; parameter is set to &#x60;true&#x60;, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain&#x3D;testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.FaucetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    FaucetsApi apiInstance = new FaucetsApi(defaultClient);
    String address = "ST3M7N9Q9HDRM7RVP1Q26P0EE69358PZZAZD7KMXQ"; // String | A valid testnet STX address
    Boolean stacking = false; // Boolean | Request the amount of STX tokens needed for individual address stacking
    InlineObject inlineObject = new InlineObject(); // InlineObject | 
    try {
      RunFaucetResponse result = apiInstance.runFaucetStx(address, stacking, inlineObject);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FaucetsApi#runFaucetStx");
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
 **address** | **String**| A valid testnet STX address |
 **stacking** | **Boolean**| Request the amount of STX tokens needed for individual address stacking | [optional] [default to false]
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional]

### Return type

[**RunFaucetResponse**](RunFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**500** | Faucet call failed |  -  |

