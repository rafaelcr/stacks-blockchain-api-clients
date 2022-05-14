# InfoApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoreApiInfo**](InfoApi.md#getCoreApiInfo) | **GET** /v2/info | Get Core API info
[**getNetworkBlockTimeByNetwork**](InfoApi.md#getNetworkBlockTimeByNetwork) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network&#39;s target block time
[**getNetworkBlockTimes**](InfoApi.md#getNetworkBlockTimes) | **GET** /extended/v1/info/network_block_times | Get the network target block time
[**getPoxInfo**](InfoApi.md#getPoxInfo) | **GET** /v2/pox | Get Proof-of-Transfer details
[**getStatus**](InfoApi.md#getStatus) | **GET** /extended/v1/status | API status
[**getStxSupply**](InfoApi.md#getStxSupply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply
[**getStxSupplyCirculatingPlain**](InfoApi.md#getStxSupplyCirculatingPlain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format
[**getStxSupplyTotalSupplyPlain**](InfoApi.md#getStxSupplyTotalSupplyPlain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format
[**getTotalStxSupplyLegacyFormat**](InfoApi.md#getTotalStxSupplyLegacyFormat) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)


<a name="getCoreApiInfo"></a>
# **getCoreApiInfo**
> CoreNodeInfoResponse getCoreApiInfo()

Get Core API info

Retrieves information about the Core API including the server version

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      CoreNodeInfoResponse result = apiInstance.getCoreApiInfo();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getCoreApiInfo");
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

[**CoreNodeInfoResponse**](CoreNodeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getNetworkBlockTimeByNetwork"></a>
# **getNetworkBlockTimeByNetwork**
> Object getNetworkBlockTimeByNetwork(network)

Get a given network&#39;s target block time

Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    String network = "testnet"; // String | Which network to retrieve the target block time of
    try {
      Object result = apiInstance.getNetworkBlockTimeByNetwork(network);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getNetworkBlockTimeByNetwork");
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
 **network** | **String**| Which network to retrieve the target block time of | [enum: testnet, mainnet]

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

<a name="getNetworkBlockTimes"></a>
# **getNetworkBlockTimes**
> NetworkBlockTimesResponse getNetworkBlockTimes()

Get the network target block time

Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      NetworkBlockTimesResponse result = apiInstance.getNetworkBlockTimes();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getNetworkBlockTimes");
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

[**NetworkBlockTimesResponse**](NetworkBlockTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getPoxInfo"></a>
# **getPoxInfo**
> CoreNodePoxResponse getPoxInfo()

Get Proof-of-Transfer details

Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      CoreNodePoxResponse result = apiInstance.getPoxInfo();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getPoxInfo");
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

[**CoreNodePoxResponse**](CoreNodePoxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getStatus"></a>
# **getStatus**
> ServerStatusResponse getStatus()

API status

Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      ServerStatusResponse result = apiInstance.getStatus();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getStatus");
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

[**ServerStatusResponse**](ServerStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getStxSupply"></a>
# **getStxSupply**
> GetStxSupplyResponse getStxSupply(height)

Get total and unlocked STX supply

Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    BigDecimal height = new BigDecimal(78); // BigDecimal | The block height at which to query supply details from, if not provided then the latest block height is used
    try {
      GetStxSupplyResponse result = apiInstance.getStxSupply(height);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getStxSupply");
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
 **height** | **BigDecimal**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional]

### Return type

[**GetStxSupplyResponse**](GetStxSupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getStxSupplyCirculatingPlain"></a>
# **getStxSupplyCirculatingPlain**
> String getStxSupplyCirculatingPlain()

Get circulating STX supply in plain text format

Retrieves the STX tokens currently in circulation that have been unlocked as plain text.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      String result = apiInstance.getStxSupplyCirculatingPlain();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getStxSupplyCirculatingPlain");
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | success |  -  |

<a name="getStxSupplyTotalSupplyPlain"></a>
# **getStxSupplyTotalSupplyPlain**
> String getStxSupplyTotalSupplyPlain()

Get total STX supply in plain text format

Retrieves the total supply for STX tokens as plain text.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    try {
      String result = apiInstance.getStxSupplyTotalSupplyPlain();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getStxSupplyTotalSupplyPlain");
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | success |  -  |

<a name="getTotalStxSupplyLegacyFormat"></a>
# **getTotalStxSupplyLegacyFormat**
> GetStxSupplyLegacyFormatResponse getTotalStxSupplyLegacyFormat(height)

Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)

Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.InfoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    InfoApi apiInstance = new InfoApi(defaultClient);
    BigDecimal height = new BigDecimal(78); // BigDecimal | The block height at which to query supply details from, if not provided then the latest block height is used
    try {
      GetStxSupplyLegacyFormatResponse result = apiInstance.getTotalStxSupplyLegacyFormat(height);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling InfoApi#getTotalStxSupplyLegacyFormat");
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
 **height** | **BigDecimal**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional]

### Return type

[**GetStxSupplyLegacyFormatResponse**](GetStxSupplyLegacyFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

