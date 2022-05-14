# NamesApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchZoneFile**](NamesApi.md#fetchZoneFile) | **GET** /v1/names/{name}/zonefile | Get Zone File
[**getAllNames**](NamesApi.md#getAllNames) | **GET** /v1/names | Get All Names
[**getAllNamespaces**](NamesApi.md#getAllNamespaces) | **GET** /v1/namespaces | Get All Namespaces
[**getHistoricalZoneFile**](NamesApi.md#getHistoricalZoneFile) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File
[**getNameHistory**](NamesApi.md#getNameHistory) | **GET** /v1/names/{name}/history | Get Name History
[**getNameInfo**](NamesApi.md#getNameInfo) | **GET** /v1/names/{name} | Get Name Details
[**getNamePrice**](NamesApi.md#getNamePrice) | **GET** /v2/prices/names/{name} | Get Name Price
[**getNamesOwnedByAddress**](NamesApi.md#getNamesOwnedByAddress) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address
[**getNamespaceNames**](NamesApi.md#getNamespaceNames) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names
[**getNamespacePrice**](NamesApi.md#getNamespacePrice) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price


<a name="fetchZoneFile"></a>
# **fetchZoneFile**
> AnyOfobjectobject fetchZoneFile(name)

Get Zone File

Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String name = "bar.test"; // String | fully-qualified name
    try {
      AnyOfobjectobject result = apiInstance.fetchZoneFile(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#fetchZoneFile");
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
 **name** | **String**| fully-qualified name |

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
**400** | Error |  -  |
**404** | Error |  -  |

<a name="getAllNames"></a>
# **getAllNames**
> List&lt;String&gt; getAllNames(page)

Get All Names

Retrieves a list of all names known to the node.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    Integer page = 23; // Integer | names are returned in pages of size 100, so specify the page number.
    try {
      List<String> result = apiInstance.getAllNames(page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getAllNames");
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
 **page** | **Integer**| names are returned in pages of size 100, so specify the page number. |

### Return type

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="getAllNamespaces"></a>
# **getAllNamespaces**
> BnsGetAllNamespacesResponse getAllNamespaces()

Get All Namespaces

Retrieves a list of all namespaces known to the node.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    try {
      BnsGetAllNamespacesResponse result = apiInstance.getAllNamespaces();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getAllNamespaces");
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

[**BnsGetAllNamespacesResponse**](BnsGetAllNamespacesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getHistoricalZoneFile"></a>
# **getHistoricalZoneFile**
> AnyOfobjectobject getHistoricalZoneFile(name, zoneFileHash)

Get Historical Zone File

Retrieves the historical zonefile specified by the username and zone hash.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String name = "muneeb.id"; // String | fully-qualified name
    String zoneFileHash = "b100a68235244b012854a95f9114695679002af9"; // String | zone file hash
    try {
      AnyOfobjectobject result = apiInstance.getHistoricalZoneFile(name, zoneFileHash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getHistoricalZoneFile");
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
 **name** | **String**| fully-qualified name |
 **zoneFileHash** | **String**| zone file hash |

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
**400** | Error |  -  |
**404** | Error |  -  |

<a name="getNameHistory"></a>
# **getNameHistory**
> Object getNameHistory(name, page)

Get Name History

Retrieves a history of all blockchain records of a registered name.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String name = "muneeb.id"; // String | name to query
    Integer page = 0; // Integer | the page (in 20-entry pages) of the history to fetch
    try {
      Object result = apiInstance.getNameHistory(name, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNameHistory");
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
 **name** | **String**| name to query |
 **page** | **Integer**| the page (in 20-entry pages) of the history to fetch |

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
**400** | Error |  -  |
**404** | Error |  -  |

<a name="getNameInfo"></a>
# **getNameInfo**
> BnsGetNameInfoResponse getNameInfo(name)

Get Name Details

Retrieves details of a given name including the &#x60;address&#x60;, &#x60;status&#x60; and last transaction id - &#x60;last_txid&#x60;.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String name = "muneeb.id"; // String | fully-qualified name
    try {
      BnsGetNameInfoResponse result = apiInstance.getNameInfo(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNameInfo");
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
 **name** | **String**| fully-qualified name |

### Return type

[**BnsGetNameInfoResponse**](BnsGetNameInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |
**404** | Error |  -  |

<a name="getNamePrice"></a>
# **getNamePrice**
> BnsGetNamePriceResponse getNamePrice(name)

Get Name Price

Retrieves the price of a name. The &#x60;amount&#x60; given will be in the smallest possible units of the currency.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String name = "muneeb.id"; // String | the name to query price information for
    try {
      BnsGetNamePriceResponse result = apiInstance.getNamePrice(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNamePrice");
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
 **name** | **String**| the name to query price information for |

### Return type

[**BnsGetNamePriceResponse**](BnsGetNamePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getNamesOwnedByAddress"></a>
# **getNamesOwnedByAddress**
> BnsNamesOwnByAddressResponse getNamesOwnedByAddress(blockchain, address)

Get Names Owned by Address

Retrieves a list of names owned by the address provided.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String blockchain = "bitcoin"; // String | the layer-1 blockchain for the address
    String address = "1QJQxDas5JhdiXhEbNS14iNjr8auFT96GP"; // String | the address to lookup
    try {
      BnsNamesOwnByAddressResponse result = apiInstance.getNamesOwnedByAddress(blockchain, address);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNamesOwnedByAddress");
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
 **blockchain** | **String**| the layer-1 blockchain for the address |
 **address** | **String**| the address to lookup |

### Return type

[**BnsNamesOwnByAddressResponse**](BnsNamesOwnByAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Error |  -  |

<a name="getNamespaceNames"></a>
# **getNamespaceNames**
> List&lt;String&gt; getNamespaceNames(tld, page)

Get Namespace Names

Retrieves a list of names within a given namespace.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String tld = "id"; // String | the namespace to fetch names from
    Integer page = 23; // Integer | names are returned in pages of size 100, so specify the page number.
    try {
      List<String> result = apiInstance.getNamespaceNames(tld, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNamespaceNames");
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
 **tld** | **String**| the namespace to fetch names from |
 **page** | **Integer**| names are returned in pages of size 100, so specify the page number. |

### Return type

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |
**404** | Error |  -  |

<a name="getNamespacePrice"></a>
# **getNamespacePrice**
> BnsGetNamespacePriceResponse getNamespacePrice(tld)

Get Namespace Price

Retrieves the price of a namespace. The &#x60;amount&#x60; given will be in the smallest possible units of the currency.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NamesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NamesApi apiInstance = new NamesApi(defaultClient);
    String tld = "id"; // String | the namespace to fetch price for
    try {
      BnsGetNamespacePriceResponse result = apiInstance.getNamespacePrice(tld);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NamesApi#getNamespacePrice");
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
 **tld** | **String**| the namespace to fetch price for |

### Return type

[**BnsGetNamespacePriceResponse**](BnsGetNamespacePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

