# AccountsApi

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountAssets**](AccountsApi.md#getAccountAssets) | **GET** /extended/v1/address/{principal}/assets | Get account assets
[**getAccountBalance**](AccountsApi.md#getAccountBalance) | **GET** /extended/v1/address/{principal}/balances | Get account balances
[**getAccountInbound**](AccountsApi.md#getAccountInbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers
[**getAccountInfo**](AccountsApi.md#getAccountInfo) | **GET** /v2/accounts/{principal} | Get account info
[**getAccountNft**](AccountsApi.md#getAccountNft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events
[**getAccountNonces**](AccountsApi.md#getAccountNonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account
[**getAccountStxBalance**](AccountsApi.md#getAccountStxBalance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance
[**getAccountTransactions**](AccountsApi.md#getAccountTransactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions
[**getAccountTransactionsWithTransfers**](AccountsApi.md#getAccountTransactionsWithTransfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction.
[**getSingleTransactionWithTransfers**](AccountsApi.md#getSingleTransactionWithTransfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction


<a name="getAccountAssets"></a>
# **getAccountAssets**
> AddressAssetsListResponse getAccountAssets(principal, limit, offset, unanchored, untilBlock)

Get account assets

Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer limit = 56; // Integer | max number of account assets to fetch
    Integer offset = 56; // Integer | index of first account assets to fetch
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state at that point in time, rather than the current block.
    try {
      AddressAssetsListResponse result = apiInstance.getAccountAssets(principal, limit, offset, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountAssets");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **Integer**| max number of account assets to fetch | [optional]
 **offset** | **Integer**| index of first account assets to fetch | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state at that point in time, rather than the current block. | [optional]

### Return type

[**AddressAssetsListResponse**](AddressAssetsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountBalance"></a>
# **getAccountBalance**
> AddressBalanceResponse getAccountBalance(principal, unanchored, untilBlock)

Get account balances

Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      AddressBalanceResponse result = apiInstance.getAccountBalance(principal, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountBalance");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**AddressBalanceResponse**](AddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountInbound"></a>
# **getAccountInbound**
> AddressStxInboundListResponse getAccountInbound(principal, limit, offset, height, unanchored, untilBlock)

Get inbound STX transfers

Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the &#x60;send-many-memo&#x60; bulk sending contract. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer limit = 56; // Integer | number of items to return
    Integer offset = 56; // Integer | number of items to skip
    BigDecimal height = new BigDecimal(78); // BigDecimal | Filter for transfers only at this given block height
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      AddressStxInboundListResponse result = apiInstance.getAccountInbound(principal, limit, offset, height, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountInbound");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **Integer**| number of items to return | [optional]
 **offset** | **Integer**| number of items to skip | [optional]
 **height** | **BigDecimal**| Filter for transfers only at this given block height | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**AddressStxInboundListResponse**](AddressStxInboundListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountInfo"></a>
# **getAccountInfo**
> AccountDataResponse getAccountInfo(principal, proof, tip)

Get account info

Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer proof = 56; // Integer | Returns object without the proof field if set to 0
    String tip = "tip_example"; // String | The Stacks chain tip to query from
    try {
      AccountDataResponse result = apiInstance.getAccountInfo(principal, proof, tip);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountInfo");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **proof** | **Integer**| Returns object without the proof field if set to 0 | [optional]
 **tip** | **String**| The Stacks chain tip to query from | [optional]

### Return type

[**AccountDataResponse**](AccountDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountNft"></a>
# **getAccountNft**
> AddressNftListResponse getAccountNft(principal, limit, offset, unanchored, untilBlock)

Get nft events

**NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer limit = 56; // Integer | number of items to return
    Integer offset = 56; // Integer | number of items to skip
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      AddressNftListResponse result = apiInstance.getAccountNft(principal, limit, offset, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountNft");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **Integer**| number of items to return | [optional]
 **offset** | **Integer**| number of items to skip | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**AddressNftListResponse**](AddressNftListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountNonces"></a>
# **getAccountNonces**
> AddressNonces getAccountNonces(principal, blockHeight, blockHash)

Get the latest nonce used by an account

Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
    BigDecimal blockHeight = new BigDecimal(78); // BigDecimal | Optionally get the nonce at a given block height
    String blockHash = "blockHash_example"; // String | Optionally get the nonce at a given block hash
    try {
      AddressNonces result = apiInstance.getAccountNonces(principal, blockHeight, blockHash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountNonces");
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
 **principal** | **String**| Stacks address (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0&#x60;) |
 **blockHeight** | **BigDecimal**| Optionally get the nonce at a given block height | [optional]
 **blockHash** | **String**| Optionally get the nonce at a given block hash | [optional]

### Return type

[**AddressNonces**](AddressNonces.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountStxBalance"></a>
# **getAccountStxBalance**
> Object getAccountStxBalance(principal, unanchored, untilBlock)

Get account STX balance

Retrieves STX token balance for a given Address or Contract Identifier.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      Object result = apiInstance.getAccountStxBalance(principal, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountStxBalance");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

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

<a name="getAccountTransactions"></a>
# **getAccountTransactions**
> AddressTransactionsListResponse getAccountTransactions(principal, limit, offset, height, unanchored, untilBlock)

Get account transactions

Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer limit = 56; // Integer | max number of account transactions to fetch
    Integer offset = 56; // Integer | index of first account transaction to fetch
    BigDecimal height = new BigDecimal(78); // BigDecimal | Filter for transactions only at this given block height
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      AddressTransactionsListResponse result = apiInstance.getAccountTransactions(principal, limit, offset, height, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountTransactions");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **Integer**| max number of account transactions to fetch | [optional]
 **offset** | **Integer**| index of first account transaction to fetch | [optional]
 **height** | **BigDecimal**| Filter for transactions only at this given block height | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**AddressTransactionsListResponse**](AddressTransactionsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getAccountTransactionsWithTransfers"></a>
# **getAccountTransactionsWithTransfers**
> AddressTransactionsWithTransfersListResponse getAccountTransactionsWithTransfers(principal, limit, offset, height, unanchored, untilBlock)

Get account transactions including STX transfers for each transaction.

Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
    Integer limit = 56; // Integer | max number of account transactions to fetch
    Integer offset = 56; // Integer | index of first account transaction to fetch
    BigDecimal height = new BigDecimal(78); // BigDecimal | Filter for transactions only at this given block height
    Boolean unanchored = false; // Boolean | Include transaction data from unanchored (i.e. unconfirmed) microblocks
    String untilBlock = "untilBlock_example"; // String | returned data representing the state up until that point in time, rather than the current block.
    try {
      AddressTransactionsWithTransfersListResponse result = apiInstance.getAccountTransactionsWithTransfers(principal, limit, offset, height, unanchored, untilBlock);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getAccountTransactionsWithTransfers");
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
 **principal** | **String**| Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) |
 **limit** | **Integer**| max number of account transactions to fetch | [optional]
 **offset** | **Integer**| index of first account transaction to fetch | [optional]
 **height** | **BigDecimal**| Filter for transactions only at this given block height | [optional]
 **unanchored** | **Boolean**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional]

### Return type

[**AddressTransactionsWithTransfersListResponse**](AddressTransactionsWithTransfersListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

<a name="getSingleTransactionWithTransfers"></a>
# **getSingleTransactionWithTransfers**
> AddressTransactionWithTransfers getSingleTransactionWithTransfers(principal, txId)

Get account transaction information for specific transaction

Retrieves transaction details for a given Transcation Id &#x60;tx_id&#x60;, for a given account or contract Identifier.

### Example
```java
// Import classes:
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.models.*;
import so.hiro.stacks_blockchain_api_client.api.AccountsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://stacks-node-api.mainnet.stacks.co");

    AccountsApi apiInstance = new AccountsApi(defaultClient);
    String principal = "principal_example"; // String | Stacks address or a contract identifier
    String txId = "txId_example"; // String | Transaction id
    try {
      AddressTransactionWithTransfers result = apiInstance.getSingleTransactionWithTransfers(principal, txId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountsApi#getSingleTransactionWithTransfers");
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
 **principal** | **String**| Stacks address or a contract identifier |
 **txId** | **String**| Transaction id |

### Return type

[**AddressTransactionWithTransfers**](AddressTransactionWithTransfers.md)

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

