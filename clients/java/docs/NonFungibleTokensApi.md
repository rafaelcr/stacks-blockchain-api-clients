# NonFungibleTokensApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractNftMetadata**](NonFungibleTokensApi.md#getContractNftMetadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id
[**getNftHistory**](NonFungibleTokensApi.md#getNftHistory) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history
[**getNftHoldings**](NonFungibleTokensApi.md#getNftHoldings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings
[**getNftMetadataList**](NonFungibleTokensApi.md#getNftMetadataList) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list
[**getNftMints**](NonFungibleTokensApi.md#getNftMints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints


<a name="getContractNftMetadata"></a>
# **getContractNftMetadata**
> NonFungibleTokenMetadata getContractNftMetadata(contractId)

Non fungible tokens metadata for contract id

Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NonFungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NonFungibleTokensApi apiInstance = new NonFungibleTokensApi(defaultClient);
    String contractId = "contractId_example"; // String | token's contract id
    try {
      NonFungibleTokenMetadata result = apiInstance.getContractNftMetadata(contractId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NonFungibleTokensApi#getContractNftMetadata");
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

[**NonFungibleTokenMetadata**](NonFungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Non fungible tokens metadata for contract id |  -  |

<a name="getNftHistory"></a>
# **getNftHistory**
> NonFungibleTokenHistoryEventList getNftHistory(assetIdentifier, value, limit, offset, unanchored, txMetadata)

Non-Fungible Token history

Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NonFungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NonFungibleTokensApi apiInstance = new NonFungibleTokensApi(defaultClient);
    String assetIdentifier = "SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild"; // String | token asset class identifier
    String value = "0x0100000000000000000000000000000803"; // String | hex representation of the token's unique value
    Integer limit = 50; // Integer | max number of events to fetch
    Integer offset = 0; // Integer | index of first event to fetch
    Boolean unanchored = false; // Boolean | whether or not to include events from unconfirmed transactions
    Boolean txMetadata = false; // Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
    try {
      NonFungibleTokenHistoryEventList result = apiInstance.getNftHistory(assetIdentifier, value, limit, offset, unanchored, txMetadata);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NonFungibleTokensApi#getNftHistory");
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
 **assetIdentifier** | **String**| token asset class identifier |
 **value** | **String**| hex representation of the token&#39;s unique value |
 **limit** | **Integer**| max number of events to fetch | [optional] [default to 50]
 **offset** | **Integer**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **Boolean**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Boolean**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHistoryEventList**](NonFungibleTokenHistoryEventList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Non-Fungible Token event history |  -  |

<a name="getNftHoldings"></a>
# **getNftHoldings**
> NonFungibleTokenHoldingsList getNftHoldings(principal, assetIdentifiers, limit, offset, unanchored, txMetadata)

Non-Fungible Token holdings

Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NonFungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NonFungibleTokensApi apiInstance = new NonFungibleTokensApi(defaultClient);
    String principal = "SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S.marketplace-v3"; // String | token owner's STX address or Smart Contract ID
    List<String> assetIdentifiers = Arrays.asList(); // List<String> | identifiers of the token asset classes to filter for
    Integer limit = 50; // Integer | max number of tokens to fetch
    Integer offset = 0; // Integer | index of first tokens to fetch
    Boolean unanchored = false; // Boolean | whether or not to include tokens from unconfirmed transactions
    Boolean txMetadata = false; // Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
    try {
      NonFungibleTokenHoldingsList result = apiInstance.getNftHoldings(principal, assetIdentifiers, limit, offset, unanchored, txMetadata);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NonFungibleTokensApi#getNftHoldings");
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
 **principal** | **String**| token owner&#39;s STX address or Smart Contract ID |
 **assetIdentifiers** | [**List&lt;String&gt;**](String.md)| identifiers of the token asset classes to filter for | [optional]
 **limit** | **Integer**| max number of tokens to fetch | [optional] [default to 50]
 **offset** | **Integer**| index of first tokens to fetch | [optional] [default to 0]
 **unanchored** | **Boolean**| whether or not to include tokens from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Boolean**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHoldingsList**](NonFungibleTokenHoldingsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of Non-Fungible Token holdings |  -  |

<a name="getNftMetadataList"></a>
# **getNftMetadataList**
> NonFungibleTokensMetadataList getNftMetadataList(limit, offset)

Non fungible tokens metadata list

Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NonFungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NonFungibleTokensApi apiInstance = new NonFungibleTokensApi(defaultClient);
    Integer limit = 56; // Integer | max number of tokens to fetch
    Integer offset = 56; // Integer | index of first tokens to fetch
    try {
      NonFungibleTokensMetadataList result = apiInstance.getNftMetadataList(limit, offset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NonFungibleTokensApi#getNftMetadataList");
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

[**NonFungibleTokensMetadataList**](NonFungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of non fungible tokens metadata |  -  |

<a name="getNftMints"></a>
# **getNftMints**
> NonFungibleTokenMintList getNftMints(assetIdentifier, limit, offset, unanchored, txMetadata)

Non-Fungible Token mints

Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.NonFungibleTokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    NonFungibleTokensApi apiInstance = new NonFungibleTokensApi(defaultClient);
    String assetIdentifier = "SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild"; // String | token asset class identifier
    Integer limit = 50; // Integer | max number of events to fetch
    Integer offset = 0; // Integer | index of first event to fetch
    Boolean unanchored = false; // Boolean | whether or not to include events from unconfirmed transactions
    Boolean txMetadata = false; // Boolean | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
    try {
      NonFungibleTokenMintList result = apiInstance.getNftMints(assetIdentifier, limit, offset, unanchored, txMetadata);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NonFungibleTokensApi#getNftMints");
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
 **assetIdentifier** | **String**| token asset class identifier |
 **limit** | **Integer**| max number of events to fetch | [optional] [default to 50]
 **offset** | **Integer**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **Boolean**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Boolean**| whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenMintList**](NonFungibleTokenMintList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Non-Fungible Token mints |  -  |

