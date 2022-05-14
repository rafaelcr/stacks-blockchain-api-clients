# StackingRewardsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBurnchainRewardList**](StackingRewardsApi.md#getBurnchainRewardList) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients
[**getBurnchainRewardListByAddress**](StackingRewardsApi.md#getBurnchainRewardListByAddress) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient
[**getBurnchainRewardSlotHolders**](StackingRewardsApi.md#getBurnchainRewardSlotHolders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders
[**getBurnchainRewardSlotHoldersByAddress**](StackingRewardsApi.md#getBurnchainRewardSlotHoldersByAddress) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address
[**getBurnchainRewardsTotalByAddress**](StackingRewardsApi.md#getBurnchainRewardsTotalByAddress) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient


<a name="getBurnchainRewardList"></a>
# **getBurnchainRewardList**
> BurnchainRewardListResponse getBurnchainRewardList(limit, offset)

Get recent burnchain reward recipients

Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.StackingRewardsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    StackingRewardsApi apiInstance = new StackingRewardsApi(defaultClient);
    Integer limit = 96; // Integer | max number of rewards to fetch
    Integer offset = 56; // Integer | index of first rewards to fetch
    try {
      BurnchainRewardListResponse result = apiInstance.getBurnchainRewardList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StackingRewardsApi#getBurnchainRewardList");
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
 **limit** | **Integer**| max number of rewards to fetch | [optional] [default to 96]
 **offset** | **Integer**| index of first rewards to fetch | [optional]

### Return type

[**BurnchainRewardListResponse**](BurnchainRewardListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of burnchain reward recipients and amounts |  -  |

<a name="getBurnchainRewardListByAddress"></a>
# **getBurnchainRewardListByAddress**
> Object getBurnchainRewardListByAddress(address, limit, offset)

Get recent burnchain reward for the given recipient

Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.StackingRewardsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    StackingRewardsApi apiInstance = new StackingRewardsApi(defaultClient);
    String address = "address_example"; // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
    Integer limit = 56; // Integer | max number of rewards to fetch
    Integer offset = 56; // Integer | index of first rewards to fetch
    try {
      Object result = apiInstance.getBurnchainRewardListByAddress(address, limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StackingRewardsApi#getBurnchainRewardListByAddress");
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
 **address** | **String**| Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |
 **limit** | **Integer**| max number of rewards to fetch | [optional]
 **offset** | **Integer**| index of first rewards to fetch | [optional]

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
**200** | List of burnchain reward recipients and amounts |  -  |

<a name="getBurnchainRewardSlotHolders"></a>
# **getBurnchainRewardSlotHolders**
> BurnchainRewardSlotHolderListResponse getBurnchainRewardSlotHolders(limit, offset)

Get recent reward slot holders

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.StackingRewardsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    StackingRewardsApi apiInstance = new StackingRewardsApi(defaultClient);
    Integer limit = 96; // Integer | max number of items to fetch
    Integer offset = 56; // Integer | index of the first items to fetch
    try {
      BurnchainRewardSlotHolderListResponse result = apiInstance.getBurnchainRewardSlotHolders(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StackingRewardsApi#getBurnchainRewardSlotHolders");
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
 **limit** | **Integer**| max number of items to fetch | [optional] [default to 96]
 **offset** | **Integer**| index of the first items to fetch | [optional]

### Return type

[**BurnchainRewardSlotHolderListResponse**](BurnchainRewardSlotHolderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of burnchain reward recipients and amounts |  -  |

<a name="getBurnchainRewardSlotHoldersByAddress"></a>
# **getBurnchainRewardSlotHoldersByAddress**
> Object getBurnchainRewardSlotHoldersByAddress(address, limit, offset)

Get recent reward slot holder entries for the given address

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.StackingRewardsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    StackingRewardsApi apiInstance = new StackingRewardsApi(defaultClient);
    String address = "address_example"; // String | Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
    Integer limit = 56; // Integer | max number of items to fetch
    Integer offset = 56; // Integer | index of the first items to fetch
    try {
      Object result = apiInstance.getBurnchainRewardSlotHoldersByAddress(address, limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StackingRewardsApi#getBurnchainRewardSlotHoldersByAddress");
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
 **address** | **String**| Reward slot holder recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |
 **limit** | **Integer**| max number of items to fetch | [optional]
 **offset** | **Integer**| index of the first items to fetch | [optional]

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
**200** | List of burnchain reward recipients and amounts |  -  |

<a name="getBurnchainRewardsTotalByAddress"></a>
# **getBurnchainRewardsTotalByAddress**
> BurnchainRewardsTotal getBurnchainRewardsTotalByAddress(address)

Get total burnchain rewards for the given recipient

Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient &#x60;address&#x60;

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.StackingRewardsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    StackingRewardsApi apiInstance = new StackingRewardsApi(defaultClient);
    String address = "address_example"; // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
    try {
      BurnchainRewardsTotal result = apiInstance.getBurnchainRewardsTotalByAddress(address);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StackingRewardsApi#getBurnchainRewardsTotalByAddress");
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
 **address** | **String**| Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format |

### Return type

[**BurnchainRewardsTotal**](BurnchainRewardsTotal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of burnchain reward recipients and amounts |  -  |

