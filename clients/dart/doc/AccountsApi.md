# stacks_blockchain_api_client.api.AccountsApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountAssets**](AccountsApi.md#getaccountassets) | **GET** /extended/v1/address/{principal}/assets | Get account assets
[**getAccountBalance**](AccountsApi.md#getaccountbalance) | **GET** /extended/v1/address/{principal}/balances | Get account balances
[**getAccountInbound**](AccountsApi.md#getaccountinbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers
[**getAccountInfo**](AccountsApi.md#getaccountinfo) | **GET** /v2/accounts/{principal} | Get account info
[**getAccountNft**](AccountsApi.md#getaccountnft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events
[**getAccountNonces**](AccountsApi.md#getaccountnonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account
[**getAccountStxBalance**](AccountsApi.md#getaccountstxbalance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance
[**getAccountTransactions**](AccountsApi.md#getaccounttransactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions
[**getAccountTransactionsWithTransfers**](AccountsApi.md#getaccounttransactionswithtransfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction.
[**getSingleTransactionWithTransfers**](AccountsApi.md#getsingletransactionwithtransfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction


# **getAccountAssets**
> AddressAssetsListResponse getAccountAssets(principal, limit, offset, unanchored, untilBlock)

Get account assets

Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final limit = 56; // int | max number of account assets to fetch
final offset = 56; // int | index of first account assets to fetch
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state at that point in time, rather than the current block.

try {
    final result = api_instance.getAccountAssets(principal, limit, offset, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountAssets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **limit** | **int**| max number of account assets to fetch | [optional] 
 **offset** | **int**| index of first account assets to fetch | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state at that point in time, rather than the current block. | [optional] 

### Return type

[**AddressAssetsListResponse**](AddressAssetsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountBalance**
> AddressBalanceResponse getAccountBalance(principal, unanchored, untilBlock)

Get account balances

Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountBalance(principal, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressBalanceResponse**](AddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInbound**
> AddressStxInboundListResponse getAccountInbound(principal, limit, offset, height, unanchored, untilBlock)

Get inbound STX transfers

Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final limit = 56; // int | number of items to return
final offset = 56; // int | number of items to skip
final height = 8.14; // num | Filter for transfers only at this given block height
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountInbound(principal, limit, offset, height, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountInbound: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **limit** | **int**| number of items to return | [optional] 
 **offset** | **int**| number of items to skip | [optional] 
 **height** | **num**| Filter for transfers only at this given block height | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressStxInboundListResponse**](AddressStxInboundListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInfo**
> AccountDataResponse getAccountInfo(principal, proof, tip)

Get account info

Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final proof = 56; // int | Returns object without the proof field if set to 0
final tip = tip_example; // String | The Stacks chain tip to query from

try {
    final result = api_instance.getAccountInfo(principal, proof, tip);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **proof** | **int**| Returns object without the proof field if set to 0 | [optional] 
 **tip** | **String**| The Stacks chain tip to query from | [optional] 

### Return type

[**AccountDataResponse**](AccountDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountNft**
> AddressNftListResponse getAccountNft(principal, limit, offset, unanchored, untilBlock)

Get nft events

**NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final limit = 56; // int | number of items to return
final offset = 56; // int | number of items to skip
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountNft(principal, limit, offset, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountNft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **limit** | **int**| number of items to return | [optional] 
 **offset** | **int**| number of items to skip | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressNftListResponse**](AddressNftListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountNonces**
> AddressNonces getAccountNonces(principal, blockHeight, blockHash)

Get the latest nonce used by an account

Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
final blockHeight = 8.14; // num | Optionally get the nonce at a given block height
final blockHash = blockHash_example; // String | Optionally get the nonce at a given block hash

try {
    final result = api_instance.getAccountNonces(principal, blockHeight, blockHash);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountNonces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`) | 
 **blockHeight** | **num**| Optionally get the nonce at a given block height | [optional] 
 **blockHash** | **String**| Optionally get the nonce at a given block hash | [optional] 

### Return type

[**AddressNonces**](AddressNonces.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountStxBalance**
> Object getAccountStxBalance(principal, unanchored, untilBlock)

Get account STX balance

Retrieves STX token balance for a given Address or Contract Identifier.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountStxBalance(principal, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountStxBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTransactions**
> AddressTransactionsListResponse getAccountTransactions(principal, limit, offset, height, unanchored, untilBlock)

Get account transactions

Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final limit = 56; // int | max number of account transactions to fetch
final offset = 56; // int | index of first account transaction to fetch
final height = 8.14; // num | Filter for transactions only at this given block height
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountTransactions(principal, limit, offset, height, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **limit** | **int**| max number of account transactions to fetch | [optional] 
 **offset** | **int**| index of first account transaction to fetch | [optional] 
 **height** | **num**| Filter for transactions only at this given block height | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressTransactionsListResponse**](AddressTransactionsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTransactionsWithTransfers**
> AddressTransactionsWithTransfersListResponse getAccountTransactionsWithTransfers(principal, limit, offset, height, unanchored, untilBlock)

Get account transactions including STX transfers for each transaction.

Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
final limit = 56; // int | max number of account transactions to fetch
final offset = 56; // int | index of first account transaction to fetch
final height = 8.14; // num | Filter for transactions only at this given block height
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
final untilBlock = untilBlock_example; // String | returned data representing the state up until that point in time, rather than the current block.

try {
    final result = api_instance.getAccountTransactionsWithTransfers(principal, limit, offset, height, unanchored, untilBlock);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getAccountTransactionsWithTransfers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`) | 
 **limit** | **int**| max number of account transactions to fetch | [optional] 
 **offset** | **int**| index of first account transaction to fetch | [optional] 
 **height** | **num**| Filter for transactions only at this given block height | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String**| returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressTransactionsWithTransfersListResponse**](AddressTransactionsWithTransfersListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSingleTransactionWithTransfers**
> AddressTransactionWithTransfers getSingleTransactionWithTransfers(principal, txId)

Get account transaction information for specific transaction

Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = AccountsApi();
final principal = principal_example; // String | Stacks address or a contract identifier
final txId = txId_example; // String | Transaction id

try {
    final result = api_instance.getSingleTransactionWithTransfers(principal, txId);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->getSingleTransactionWithTransfers: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

