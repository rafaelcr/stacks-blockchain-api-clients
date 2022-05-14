# SmartContractsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callReadOnlyFunction**](SmartContractsApi.md#callReadOnlyFunction) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function
[**getContractById**](SmartContractsApi.md#getContractById) | **GET** /extended/v1/contract/{contract_id} | Get contract info
[**getContractDataMapEntry**](SmartContractsApi.md#getContractDataMapEntry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract
[**getContractEventsById**](SmartContractsApi.md#getContractEventsById) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events
[**getContractInterface**](SmartContractsApi.md#getContractInterface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface
[**getContractSource**](SmartContractsApi.md#getContractSource) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source
[**getContractsByTrait**](SmartContractsApi.md#getContractsByTrait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait


<a name="callReadOnlyFunction"></a>
# **callReadOnlyFunction**
> ReadOnlyFunctionSuccessResponse callReadOnlyFunction(contractAddress, contractName, functionName, readOnlyFunctionArgs, tip)

Call read-only function

Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractAddress = "contractAddress_example"; // String | Stacks address
    String contractName = "contractName_example"; // String | Contract name
    String functionName = "functionName_example"; // String | Function name
    ReadOnlyFunctionArgs readOnlyFunctionArgs = new ReadOnlyFunctionArgs(); // ReadOnlyFunctionArgs | 
    String tip = "tip_example"; // String | The Stacks chain tip to query from
    try {
      ReadOnlyFunctionSuccessResponse result = apiInstance.callReadOnlyFunction(contractAddress, contractName, functionName, readOnlyFunctionArgs, tip);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#callReadOnlyFunction");
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
 **contractAddress** | **String**| Stacks address |
 **contractName** | **String**| Contract name |
 **functionName** | **String**| Function name |
 **readOnlyFunctionArgs** | [**ReadOnlyFunctionArgs**](ReadOnlyFunctionArgs.md)|  |
 **tip** | **String**| The Stacks chain tip to query from | [optional]

### Return type

[**ReadOnlyFunctionSuccessResponse**](ReadOnlyFunctionSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getContractById"></a>
# **getContractById**
> Object getContractById(contractId, unanchored)

Get contract info

Retrieves details of a contract with a given &#x60;contract_id&#x60;

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractId = "contractId_example"; // String | Contract identifier formatted as `<contract_address>.<contract_name>`
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      Object result = apiInstance.getContractById(contractId, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractById");
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
 **contractId** | **String**| Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |
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
**200** | Contract found |  -  |
**404** | Cannot find contract of given ID |  -  |

<a name="getContractDataMapEntry"></a>
# **getContractDataMapEntry**
> MapEntryResponse getContractDataMapEntry(contractAddress, contractName, mapName, key, proof, tip)

Get specific data-map inside a contract

Attempt to fetch data from a contract data map. The contract is identified with Stacks Address &#x60;contract_address&#x60; and Contract Name &#x60;contract_address&#x60; in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, &#x60;data&#x60; is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractAddress = "contractAddress_example"; // String | Stacks address
    String contractName = "contractName_example"; // String | Contract name
    String mapName = "mapName_example"; // String | Map name
    String key = "key_example"; // String | Hex string serialization of the lookup key (which should be a Clarity value)
    Integer proof = 56; // Integer | Returns object without the proof field when set to 0
    String tip = "tip_example"; // String | The Stacks chain tip to query from
    try {
      MapEntryResponse result = apiInstance.getContractDataMapEntry(contractAddress, contractName, mapName, key, proof, tip);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractDataMapEntry");
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
 **contractAddress** | **String**| Stacks address |
 **contractName** | **String**| Contract name |
 **mapName** | **String**| Map name |
 **key** | **String**| Hex string serialization of the lookup key (which should be a Clarity value) |
 **proof** | **Integer**| Returns object without the proof field when set to 0 | [optional]
 **tip** | **String**| The Stacks chain tip to query from | [optional]

### Return type

[**MapEntryResponse**](MapEntryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Failed loading data map |  -  |

<a name="getContractEventsById"></a>
# **getContractEventsById**
> AnyOfobjectobjectobjectobjectobject getContractEventsById(contractId, limit, offset, unanchored)

Get contract events

Retrieves a list of events that have been triggered by a given &#x60;contract_id&#x60;

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractId = "contractId_example"; // String | Contract identifier formatted as `<contract_address>.<contract_name>`
    Integer limit = 56; // Integer | max number of contract events to fetch
    Integer offset = 56; // Integer | index of first contract event to fetch
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    try {
      AnyOfobjectobjectobjectobjectobject result = apiInstance.getContractEventsById(contractId, limit, offset, unanchored);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractEventsById");
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
 **contractId** | **String**| Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |
 **limit** | **Integer**| max number of contract events to fetch | [optional]
 **offset** | **Integer**| index of first contract event to fetch | [optional]
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
**200** | List of events |  -  |

<a name="getContractInterface"></a>
# **getContractInterface**
> ContractInterfaceResponse getContractInterface(contractAddress, contractName, tip)

Get contract interface

Retrieves a contract interface with a given &#x60;contract_address&#x60; and &#x60;contract name&#x60;

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractAddress = "contractAddress_example"; // String | Stacks address
    String contractName = "contractName_example"; // String | Contract name
    String tip = "tip_example"; // String | The Stacks chain tip to query from
    try {
      ContractInterfaceResponse result = apiInstance.getContractInterface(contractAddress, contractName, tip);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractInterface");
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
 **contractAddress** | **String**| Stacks address |
 **contractName** | **String**| Contract name |
 **tip** | **String**| The Stacks chain tip to query from | [optional]

### Return type

[**ContractInterfaceResponse**](ContractInterfaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Contract interface |  -  |

<a name="getContractSource"></a>
# **getContractSource**
> ContractSourceResponse getContractSource(contractAddress, contractName, proof, tip)

Get contract source

Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String contractAddress = "contractAddress_example"; // String | Stacks address
    String contractName = "contractName_example"; // String | Contract name
    Integer proof = 56; // Integer | Returns object without the proof field if set to 0
    String tip = "tip_example"; // String | The Stacks chain tip to query from
    try {
      ContractSourceResponse result = apiInstance.getContractSource(contractAddress, contractName, proof, tip);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractSource");
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
 **contractAddress** | **String**| Stacks address |
 **contractName** | **String**| Contract name |
 **proof** | **Integer**| Returns object without the proof field if set to 0 | [optional]
 **tip** | **String**| The Stacks chain tip to query from | [optional]

### Return type

[**ContractSourceResponse**](ContractSourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getContractsByTrait"></a>
# **getContractsByTrait**
> ContractListResponse getContractsByTrait(traitAbi, limit, offset)

Get contracts by trait

Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.SmartContractsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    SmartContractsApi apiInstance = new SmartContractsApi(defaultClient);
    String traitAbi = "traitAbi_example"; // String | JSON abi of the trait.
    Integer limit = 56; // Integer | max number of contracts fetch
    Integer offset = 56; // Integer | index of first contract event to fetch
    try {
      ContractListResponse result = apiInstance.getContractsByTrait(traitAbi, limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SmartContractsApi#getContractsByTrait");
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
 **traitAbi** | **String**| JSON abi of the trait. |
 **limit** | **Integer**| max number of contracts fetch | [optional]
 **offset** | **Integer**| index of first contract event to fetch | [optional]

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of contracts implement given trait |  -  |

