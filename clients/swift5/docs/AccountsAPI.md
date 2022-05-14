# AccountsAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountAssets**](AccountsAPI.md#getaccountassets) | **GET** /extended/v1/address/{principal}/assets | Get account assets
[**getAccountBalance**](AccountsAPI.md#getaccountbalance) | **GET** /extended/v1/address/{principal}/balances | Get account balances
[**getAccountInbound**](AccountsAPI.md#getaccountinbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers
[**getAccountInfo**](AccountsAPI.md#getaccountinfo) | **GET** /v2/accounts/{principal} | Get account info
[**getAccountNft**](AccountsAPI.md#getaccountnft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events
[**getAccountNonces**](AccountsAPI.md#getaccountnonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account
[**getAccountStxBalance**](AccountsAPI.md#getaccountstxbalance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance
[**getAccountTransactions**](AccountsAPI.md#getaccounttransactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions
[**getAccountTransactionsWithTransfers**](AccountsAPI.md#getaccounttransactionswithtransfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction.
[**getSingleTransactionWithTransfers**](AccountsAPI.md#getsingletransactionwithtransfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction


# **getAccountAssets**
```swift
    open class func getAccountAssets(principal: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressAssetsListResponse?, _ error: Error?) -> Void)
```

Get account assets

Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let limit = 987 // Int | max number of account assets to fetch (optional)
let offset = 987 // Int | index of first account assets to fetch (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state at that point in time, rather than the current block. (optional)

// Get account assets
AccountsAPI.getAccountAssets(principal: principal, limit: limit, offset: offset, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **limit** | **Int** | max number of account assets to fetch | [optional] 
 **offset** | **Int** | index of first account assets to fetch | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state at that point in time, rather than the current block. | [optional] 

### Return type

[**AddressAssetsListResponse**](AddressAssetsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountBalance**
```swift
    open class func getAccountBalance(principal: String, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressBalanceResponse?, _ error: Error?) -> Void)
```

Get account balances

Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get account balances
AccountsAPI.getAccountBalance(principal: principal, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressBalanceResponse**](AddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInbound**
```swift
    open class func getAccountInbound(principal: String, limit: Int? = nil, offset: Int? = nil, height: Double? = nil, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressStxInboundListResponse?, _ error: Error?) -> Void)
```

Get inbound STX transfers

Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let limit = 987 // Int | number of items to return (optional)
let offset = 987 // Int | number of items to skip (optional)
let height = 987 // Double | Filter for transfers only at this given block height (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get inbound STX transfers
AccountsAPI.getAccountInbound(principal: principal, limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **limit** | **Int** | number of items to return | [optional] 
 **offset** | **Int** | number of items to skip | [optional] 
 **height** | **Double** | Filter for transfers only at this given block height | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressStxInboundListResponse**](AddressStxInboundListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInfo**
```swift
    open class func getAccountInfo(principal: String, proof: Int? = nil, tip: String? = nil, completion: @escaping (_ data: AccountDataResponse?, _ error: Error?) -> Void)
```

Get account info

Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let proof = 987 // Int | Returns object without the proof field if set to 0 (optional)
let tip = "tip_example" // String | The Stacks chain tip to query from (optional)

// Get account info
AccountsAPI.getAccountInfo(principal: principal, proof: proof, tip: tip) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **proof** | **Int** | Returns object without the proof field if set to 0 | [optional] 
 **tip** | **String** | The Stacks chain tip to query from | [optional] 

### Return type

[**AccountDataResponse**](AccountDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountNft**
```swift
    open class func getAccountNft(principal: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressNftListResponse?, _ error: Error?) -> Void)
```

Get nft events

**NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let limit = 987 // Int | number of items to return (optional)
let offset = 987 // Int | number of items to skip (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get nft events
AccountsAPI.getAccountNft(principal: principal, limit: limit, offset: offset, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **limit** | **Int** | number of items to return | [optional] 
 **offset** | **Int** | number of items to skip | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressNftListResponse**](AddressNftListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountNonces**
```swift
    open class func getAccountNonces(principal: String, blockHeight: Double? = nil, blockHash: String? = nil, completion: @escaping (_ data: AddressNonces?, _ error: Error?) -> Void)
```

Get the latest nonce used by an account

Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
let blockHeight = 987 // Double | Optionally get the nonce at a given block height (optional)
let blockHash = "blockHash_example" // String | Optionally get the nonce at a given block hash (optional)

// Get the latest nonce used by an account
AccountsAPI.getAccountNonces(principal: principal, blockHeight: blockHeight, blockHash: blockHash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0&#x60;) | 
 **blockHeight** | **Double** | Optionally get the nonce at a given block height | [optional] 
 **blockHash** | **String** | Optionally get the nonce at a given block hash | [optional] 

### Return type

[**AddressNonces**](AddressNonces.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountStxBalance**
```swift
    open class func getAccountStxBalance(principal: String, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get account STX balance

Retrieves STX token balance for a given Address or Contract Identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get account STX balance
AccountsAPI.getAccountStxBalance(principal: principal, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTransactions**
```swift
    open class func getAccountTransactions(principal: String, limit: Int? = nil, offset: Int? = nil, height: Double? = nil, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressTransactionsListResponse?, _ error: Error?) -> Void)
```

Get account transactions

Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let limit = 987 // Int | max number of account transactions to fetch (optional)
let offset = 987 // Int | index of first account transaction to fetch (optional)
let height = 987 // Double | Filter for transactions only at this given block height (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get account transactions
AccountsAPI.getAccountTransactions(principal: principal, limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **limit** | **Int** | max number of account transactions to fetch | [optional] 
 **offset** | **Int** | index of first account transaction to fetch | [optional] 
 **height** | **Double** | Filter for transactions only at this given block height | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressTransactionsListResponse**](AddressTransactionsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTransactionsWithTransfers**
```swift
    open class func getAccountTransactionsWithTransfers(principal: String, limit: Int? = nil, offset: Int? = nil, height: Double? = nil, unanchored: Bool? = nil, untilBlock: String? = nil, completion: @escaping (_ data: AddressTransactionsWithTransfersListResponse?, _ error: Error?) -> Void)
```

Get account transactions including STX transfers for each transaction.

Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
let limit = 987 // Int | max number of account transactions to fetch (optional)
let offset = 987 // Int | index of first account transaction to fetch (optional)
let height = 987 // Double | Filter for transactions only at this given block height (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)
let untilBlock = "untilBlock_example" // String | returned data representing the state up until that point in time, rather than the current block. (optional)

// Get account transactions including STX transfers for each transaction.
AccountsAPI.getAccountTransactionsWithTransfers(principal: principal, limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;) | 
 **limit** | **Int** | max number of account transactions to fetch | [optional] 
 **offset** | **Int** | index of first account transaction to fetch | [optional] 
 **height** | **Double** | Filter for transactions only at this given block height | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]
 **untilBlock** | **String** | returned data representing the state up until that point in time, rather than the current block. | [optional] 

### Return type

[**AddressTransactionsWithTransfersListResponse**](AddressTransactionsWithTransfersListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSingleTransactionWithTransfers**
```swift
    open class func getSingleTransactionWithTransfers(principal: String, txId: String, completion: @escaping (_ data: AddressTransactionWithTransfers?, _ error: Error?) -> Void)
```

Get account transaction information for specific transaction

Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | Stacks address or a contract identifier
let txId = "txId_example" // String | Transaction id

// Get account transaction information for specific transaction
AccountsAPI.getSingleTransactionWithTransfers(principal: principal, txId: txId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String** | Stacks address or a contract identifier | 
 **txId** | **String** | Transaction id | 

### Return type

[**AddressTransactionWithTransfers**](AddressTransactionWithTransfers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

