# RosettaApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rosettaAccountBalance**](RosettaApi.md#rosettaAccountBalance) | **POST** /rosetta/v1/account/balance | Get an Account Balance
[**rosettaBlock**](RosettaApi.md#rosettaBlock) | **POST** /rosetta/v1/block | Get a Block
[**rosettaBlockTransaction**](RosettaApi.md#rosettaBlockTransaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction
[**rosettaConstructionCombine**](RosettaApi.md#rosettaConstructionCombine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures
[**rosettaConstructionDerive**](RosettaApi.md#rosettaConstructionDerive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey
[**rosettaConstructionHash**](RosettaApi.md#rosettaConstructionHash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction
[**rosettaConstructionMetadata**](RosettaApi.md#rosettaConstructionMetadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction
[**rosettaConstructionParse**](RosettaApi.md#rosettaConstructionParse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction
[**rosettaConstructionPayloads**](RosettaApi.md#rosettaConstructionPayloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads
[**rosettaConstructionPreprocess**](RosettaApi.md#rosettaConstructionPreprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata
[**rosettaConstructionSubmit**](RosettaApi.md#rosettaConstructionSubmit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction
[**rosettaMempool**](RosettaApi.md#rosettaMempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions
[**rosettaMempoolTransaction**](RosettaApi.md#rosettaMempoolTransaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction
[**rosettaNetworkList**](RosettaApi.md#rosettaNetworkList) | **POST** /rosetta/v1/network/list | Get List of Available Networks
[**rosettaNetworkOptions**](RosettaApi.md#rosettaNetworkOptions) | **POST** /rosetta/v1/network/options | Get Network Options
[**rosettaNetworkStatus**](RosettaApi.md#rosettaNetworkStatus) | **POST** /rosetta/v1/network/status | Get Network Status


<a name="rosettaAccountBalance"></a>
# **rosettaAccountBalance**
> RosettaAccountBalanceResponse rosettaAccountBalance(rosettaAccountBalanceRequest)

Get an Account Balance

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaAccountBalanceRequest rosettaAccountBalanceRequest = new RosettaAccountBalanceRequest(); // RosettaAccountBalanceRequest | 
    try {
      RosettaAccountBalanceResponse result = apiInstance.rosettaAccountBalance(rosettaAccountBalanceRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaAccountBalance");
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
 **rosettaAccountBalanceRequest** | [**RosettaAccountBalanceRequest**](RosettaAccountBalanceRequest.md)|  |

### Return type

[**RosettaAccountBalanceResponse**](RosettaAccountBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaBlock"></a>
# **rosettaBlock**
> RosettaBlockResponse rosettaBlock(rosettaBlockRequest)

Get a Block

Retrieves the Block information for a given block identifier including a list of all transactions in the block.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaBlockRequest rosettaBlockRequest = new RosettaBlockRequest(); // RosettaBlockRequest | 
    try {
      RosettaBlockResponse result = apiInstance.rosettaBlock(rosettaBlockRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaBlock");
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
 **rosettaBlockRequest** | [**RosettaBlockRequest**](RosettaBlockRequest.md)|  |

### Return type

[**RosettaBlockResponse**](RosettaBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaBlockTransaction"></a>
# **rosettaBlockTransaction**
> RosettaBlockTransactionResponse rosettaBlockTransaction(rosettaBlockTransactionRequest)

Get a Block Transaction

Retrieves a Transaction included in a block that is not returned in a BlockResponse.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaBlockTransactionRequest rosettaBlockTransactionRequest = new RosettaBlockTransactionRequest(); // RosettaBlockTransactionRequest | 
    try {
      RosettaBlockTransactionResponse result = apiInstance.rosettaBlockTransaction(rosettaBlockTransactionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaBlockTransaction");
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
 **rosettaBlockTransactionRequest** | [**RosettaBlockTransactionRequest**](RosettaBlockTransactionRequest.md)|  |

### Return type

[**RosettaBlockTransactionResponse**](RosettaBlockTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionCombine"></a>
# **rosettaConstructionCombine**
> RosettaConstructionCombineResponse rosettaConstructionCombine(rosettaConstructionCombineRequest)

Create Network Transaction from Signatures

Take unsigned transaction and signature, combine both and return signed transaction

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionCombineRequest rosettaConstructionCombineRequest = new RosettaConstructionCombineRequest(); // RosettaConstructionCombineRequest | 
    try {
      RosettaConstructionCombineResponse result = apiInstance.rosettaConstructionCombine(rosettaConstructionCombineRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionCombine");
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
 **rosettaConstructionCombineRequest** | [**RosettaConstructionCombineRequest**](RosettaConstructionCombineRequest.md)|  |

### Return type

[**RosettaConstructionCombineResponse**](RosettaConstructionCombineResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionDerive"></a>
# **rosettaConstructionDerive**
> RosettaConstructionDeriveResponse rosettaConstructionDerive(rosettaConstructionDeriveRequest)

Derive an AccountIdentifier from a PublicKey

Retrieves the Account Identifier information based on a Public Key for a given network

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionDeriveRequest rosettaConstructionDeriveRequest = new RosettaConstructionDeriveRequest(); // RosettaConstructionDeriveRequest | 
    try {
      RosettaConstructionDeriveResponse result = apiInstance.rosettaConstructionDerive(rosettaConstructionDeriveRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionDerive");
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
 **rosettaConstructionDeriveRequest** | [**RosettaConstructionDeriveRequest**](RosettaConstructionDeriveRequest.md)|  |

### Return type

[**RosettaConstructionDeriveResponse**](RosettaConstructionDeriveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionHash"></a>
# **rosettaConstructionHash**
> RosettaConstructionHashResponse rosettaConstructionHash(rosettaConstructionHashRequest)

Get the Hash of a Signed Transaction

Retrieves the network-specific transaction hash for a signed transaction.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionHashRequest rosettaConstructionHashRequest = new RosettaConstructionHashRequest(); // RosettaConstructionHashRequest | 
    try {
      RosettaConstructionHashResponse result = apiInstance.rosettaConstructionHash(rosettaConstructionHashRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionHash");
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
 **rosettaConstructionHashRequest** | [**RosettaConstructionHashRequest**](RosettaConstructionHashRequest.md)|  |

### Return type

[**RosettaConstructionHashResponse**](RosettaConstructionHashResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionMetadata"></a>
# **rosettaConstructionMetadata**
> RosettaConstructionMetadataResponse rosettaConstructionMetadata(rosettaConstructionMetadataRequest)

Get Metadata for Transaction Construction

To Do

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionMetadataRequest rosettaConstructionMetadataRequest = new RosettaConstructionMetadataRequest(); // RosettaConstructionMetadataRequest | 
    try {
      RosettaConstructionMetadataResponse result = apiInstance.rosettaConstructionMetadata(rosettaConstructionMetadataRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionMetadata");
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
 **rosettaConstructionMetadataRequest** | [**RosettaConstructionMetadataRequest**](RosettaConstructionMetadataRequest.md)|  |

### Return type

[**RosettaConstructionMetadataResponse**](RosettaConstructionMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionParse"></a>
# **rosettaConstructionParse**
> RosettaConstructionParseResponse rosettaConstructionParse(rosettaConstructionParseRequest)

Parse a Transaction

TODO

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionParseRequest rosettaConstructionParseRequest = new RosettaConstructionParseRequest(); // RosettaConstructionParseRequest | 
    try {
      RosettaConstructionParseResponse result = apiInstance.rosettaConstructionParse(rosettaConstructionParseRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionParse");
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
 **rosettaConstructionParseRequest** | [**RosettaConstructionParseRequest**](RosettaConstructionParseRequest.md)|  |

### Return type

[**RosettaConstructionParseResponse**](RosettaConstructionParseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionPayloads"></a>
# **rosettaConstructionPayloads**
> RosettaConstructionPayloadResponse rosettaConstructionPayloads(rosettaConstructionPayloadsRequest)

Generate an Unsigned Transaction and Signing Payloads

Generate and unsigned transaction from operations and metadata

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionPayloadsRequest rosettaConstructionPayloadsRequest = new RosettaConstructionPayloadsRequest(); // RosettaConstructionPayloadsRequest | 
    try {
      RosettaConstructionPayloadResponse result = apiInstance.rosettaConstructionPayloads(rosettaConstructionPayloadsRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionPayloads");
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
 **rosettaConstructionPayloadsRequest** | [**RosettaConstructionPayloadsRequest**](RosettaConstructionPayloadsRequest.md)|  |

### Return type

[**RosettaConstructionPayloadResponse**](RosettaConstructionPayloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionPreprocess"></a>
# **rosettaConstructionPreprocess**
> RosettaConstructionPreprocessResponse rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest)

Create a Request to Fetch Metadata

TODO

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionPreprocessRequest rosettaConstructionPreprocessRequest = new RosettaConstructionPreprocessRequest(); // RosettaConstructionPreprocessRequest | 
    try {
      RosettaConstructionPreprocessResponse result = apiInstance.rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionPreprocess");
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
 **rosettaConstructionPreprocessRequest** | [**RosettaConstructionPreprocessRequest**](RosettaConstructionPreprocessRequest.md)|  |

### Return type

[**RosettaConstructionPreprocessResponse**](RosettaConstructionPreprocessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaConstructionSubmit"></a>
# **rosettaConstructionSubmit**
> RosettaConstructionSubmitResponse rosettaConstructionSubmit(rosettaConstructionSubmitRequest)

Submit a Signed Transaction

Submit a pre-signed transaction to the node.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaConstructionSubmitRequest rosettaConstructionSubmitRequest = new RosettaConstructionSubmitRequest(); // RosettaConstructionSubmitRequest | 
    try {
      RosettaConstructionSubmitResponse result = apiInstance.rosettaConstructionSubmit(rosettaConstructionSubmitRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaConstructionSubmit");
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
 **rosettaConstructionSubmitRequest** | [**RosettaConstructionSubmitRequest**](RosettaConstructionSubmitRequest.md)|  |

### Return type

[**RosettaConstructionSubmitResponse**](RosettaConstructionSubmitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaMempool"></a>
# **rosettaMempool**
> RosettaMempoolResponse rosettaMempool(rosettaMempoolRequest)

Get All Mempool Transactions

Retrieves a list of transcations currently in the mempool for a given network.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaMempoolRequest rosettaMempoolRequest = new RosettaMempoolRequest(); // RosettaMempoolRequest | 
    try {
      RosettaMempoolResponse result = apiInstance.rosettaMempool(rosettaMempoolRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaMempool");
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
 **rosettaMempoolRequest** | [**RosettaMempoolRequest**](RosettaMempoolRequest.md)|  |

### Return type

[**RosettaMempoolResponse**](RosettaMempoolResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaMempoolTransaction"></a>
# **rosettaMempoolTransaction**
> RosettaMempoolTransactionResponse rosettaMempoolTransaction(rosettaMempoolTransactionRequest)

Get a Mempool Transaction

Retrieves transaction details from the mempool for a given transaction id from a given network.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaMempoolTransactionRequest rosettaMempoolTransactionRequest = new RosettaMempoolTransactionRequest(); // RosettaMempoolTransactionRequest | 
    try {
      RosettaMempoolTransactionResponse result = apiInstance.rosettaMempoolTransaction(rosettaMempoolTransactionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaMempoolTransaction");
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
 **rosettaMempoolTransactionRequest** | [**RosettaMempoolTransactionRequest**](RosettaMempoolTransactionRequest.md)|  |

### Return type

[**RosettaMempoolTransactionResponse**](RosettaMempoolTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaNetworkList"></a>
# **rosettaNetworkList**
> RosettaNetworkListResponse rosettaNetworkList()

Get List of Available Networks

Retrieves a list of NetworkIdentifiers that the Rosetta server supports.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    try {
      RosettaNetworkListResponse result = apiInstance.rosettaNetworkList();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaNetworkList");
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

[**RosettaNetworkListResponse**](RosettaNetworkListResponse.md)

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

<a name="rosettaNetworkOptions"></a>
# **rosettaNetworkOptions**
> RosettaNetworkOptionsResponse rosettaNetworkOptions(rosettaOptionsRequest)

Get Network Options

Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaOptionsRequest rosettaOptionsRequest = new RosettaOptionsRequest(); // RosettaOptionsRequest | 
    try {
      RosettaNetworkOptionsResponse result = apiInstance.rosettaNetworkOptions(rosettaOptionsRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaNetworkOptions");
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
 **rosettaOptionsRequest** | [**RosettaOptionsRequest**](RosettaOptionsRequest.md)|  |

### Return type

[**RosettaNetworkOptionsResponse**](RosettaNetworkOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

<a name="rosettaNetworkStatus"></a>
# **rosettaNetworkStatus**
> Map&lt;String, Object&gt; rosettaNetworkStatus(rosettaStatusRequest)

Get Network Status

Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.RosettaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    RosettaApi apiInstance = new RosettaApi(defaultClient);
    RosettaStatusRequest rosettaStatusRequest = new RosettaStatusRequest(); // RosettaStatusRequest | 
    try {
      Map<String, Object> result = apiInstance.rosettaNetworkStatus(rosettaStatusRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RosettaApi#rosettaNetworkStatus");
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
 **rosettaStatusRequest** | [**RosettaStatusRequest**](RosettaStatusRequest.md)|  |

### Return type

**Map&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Error |  -  |

