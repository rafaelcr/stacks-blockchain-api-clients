# RosettaAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rosettaAccountBalance**](RosettaAPI.md#rosettaaccountbalance) | **POST** /rosetta/v1/account/balance | Get an Account Balance
[**rosettaBlock**](RosettaAPI.md#rosettablock) | **POST** /rosetta/v1/block | Get a Block
[**rosettaBlockTransaction**](RosettaAPI.md#rosettablocktransaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction
[**rosettaConstructionCombine**](RosettaAPI.md#rosettaconstructioncombine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures
[**rosettaConstructionDerive**](RosettaAPI.md#rosettaconstructionderive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey
[**rosettaConstructionHash**](RosettaAPI.md#rosettaconstructionhash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction
[**rosettaConstructionMetadata**](RosettaAPI.md#rosettaconstructionmetadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction
[**rosettaConstructionParse**](RosettaAPI.md#rosettaconstructionparse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction
[**rosettaConstructionPayloads**](RosettaAPI.md#rosettaconstructionpayloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads
[**rosettaConstructionPreprocess**](RosettaAPI.md#rosettaconstructionpreprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata
[**rosettaConstructionSubmit**](RosettaAPI.md#rosettaconstructionsubmit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction
[**rosettaMempool**](RosettaAPI.md#rosettamempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions
[**rosettaMempoolTransaction**](RosettaAPI.md#rosettamempooltransaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction
[**rosettaNetworkList**](RosettaAPI.md#rosettanetworklist) | **POST** /rosetta/v1/network/list | Get List of Available Networks
[**rosettaNetworkOptions**](RosettaAPI.md#rosettanetworkoptions) | **POST** /rosetta/v1/network/options | Get Network Options
[**rosettaNetworkStatus**](RosettaAPI.md#rosettanetworkstatus) | **POST** /rosetta/v1/network/status | Get Network Status


# **rosettaAccountBalance**
```swift
    open class func rosettaAccountBalance(rosettaAccountBalanceRequest: RosettaAccountBalanceRequest, completion: @escaping (_ data: RosettaAccountBalanceResponse?, _ error: Error?) -> Void)
```

Get an Account Balance

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaAccountBalanceRequest = RosettaAccountBalanceRequest(networkIdentifier: "TODO", accountIdentifier: RosettaAccount(address: "address_example", subAccount: RosettaSubAccount(address: "address_example", metadata: "TODO"), metadata: "TODO"), blockIdentifier: "TODO") // RosettaAccountBalanceRequest | 

// Get an Account Balance
RosettaAPI.rosettaAccountBalance(rosettaAccountBalanceRequest: rosettaAccountBalanceRequest) { (response, error) in
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
 **rosettaAccountBalanceRequest** | [**RosettaAccountBalanceRequest**](RosettaAccountBalanceRequest.md) |  | 

### Return type

[**RosettaAccountBalanceResponse**](RosettaAccountBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaBlock**
```swift
    open class func rosettaBlock(rosettaBlockRequest: RosettaBlockRequest, completion: @escaping (_ data: RosettaBlockResponse?, _ error: Error?) -> Void)
```

Get a Block

Retrieves the Block information for a given block identifier including a list of all transactions in the block.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaBlockRequest = RosettaBlockRequest(networkIdentifier: "TODO", blockIdentifier: "TODO") // RosettaBlockRequest | 

// Get a Block
RosettaAPI.rosettaBlock(rosettaBlockRequest: rosettaBlockRequest) { (response, error) in
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
 **rosettaBlockRequest** | [**RosettaBlockRequest**](RosettaBlockRequest.md) |  | 

### Return type

[**RosettaBlockResponse**](RosettaBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaBlockTransaction**
```swift
    open class func rosettaBlockTransaction(rosettaBlockTransactionRequest: RosettaBlockTransactionRequest, completion: @escaping (_ data: RosettaBlockTransactionResponse?, _ error: Error?) -> Void)
```

Get a Block Transaction

Retrieves a Transaction included in a block that is not returned in a BlockResponse.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaBlockTransactionRequest = RosettaBlockTransactionRequest(networkIdentifier: "TODO", blockIdentifier: "TODO", transactionIdentifier: TransactionIdentifier(hash: "hash_example")) // RosettaBlockTransactionRequest | 

// Get a Block Transaction
RosettaAPI.rosettaBlockTransaction(rosettaBlockTransactionRequest: rosettaBlockTransactionRequest) { (response, error) in
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
 **rosettaBlockTransactionRequest** | [**RosettaBlockTransactionRequest**](RosettaBlockTransactionRequest.md) |  | 

### Return type

[**RosettaBlockTransactionResponse**](RosettaBlockTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionCombine**
```swift
    open class func rosettaConstructionCombine(rosettaConstructionCombineRequest: RosettaConstructionCombineRequest, completion: @escaping (_ data: RosettaConstructionCombineResponse?, _ error: Error?) -> Void)
```

Create Network Transaction from Signatures

Take unsigned transaction and signature, combine both and return signed transaction

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionCombineRequest = RosettaConstructionCombineRequest(networkIdentifier: "TODO", unsignedTransaction: "unsignedTransaction_example", signatures: [RosettaSignature(signingPayload: "TODO", publicKey: "TODO", signatureType: "signatureType_example", hexBytes: "hexBytes_example")]) // RosettaConstructionCombineRequest | 

// Create Network Transaction from Signatures
RosettaAPI.rosettaConstructionCombine(rosettaConstructionCombineRequest: rosettaConstructionCombineRequest) { (response, error) in
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
 **rosettaConstructionCombineRequest** | [**RosettaConstructionCombineRequest**](RosettaConstructionCombineRequest.md) |  | 

### Return type

[**RosettaConstructionCombineResponse**](RosettaConstructionCombineResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionDerive**
```swift
    open class func rosettaConstructionDerive(rosettaConstructionDeriveRequest: RosettaConstructionDeriveRequest, completion: @escaping (_ data: RosettaConstructionDeriveResponse?, _ error: Error?) -> Void)
```

Derive an AccountIdentifier from a PublicKey

Retrieves the Account Identifier information based on a Public Key for a given network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionDeriveRequest = RosettaConstructionDeriveRequest(networkIdentifier: "TODO", publicKey: RosettaPublicKey(hexBytes: "hexBytes_example", curveType: "curveType_example"), metadata: "TODO") // RosettaConstructionDeriveRequest | 

// Derive an AccountIdentifier from a PublicKey
RosettaAPI.rosettaConstructionDerive(rosettaConstructionDeriveRequest: rosettaConstructionDeriveRequest) { (response, error) in
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
 **rosettaConstructionDeriveRequest** | [**RosettaConstructionDeriveRequest**](RosettaConstructionDeriveRequest.md) |  | 

### Return type

[**RosettaConstructionDeriveResponse**](RosettaConstructionDeriveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionHash**
```swift
    open class func rosettaConstructionHash(rosettaConstructionHashRequest: RosettaConstructionHashRequest, completion: @escaping (_ data: RosettaConstructionHashResponse?, _ error: Error?) -> Void)
```

Get the Hash of a Signed Transaction

Retrieves the network-specific transaction hash for a signed transaction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionHashRequest = RosettaConstructionHashRequest(networkIdentifier: "TODO", signedTransaction: "signedTransaction_example") // RosettaConstructionHashRequest | 

// Get the Hash of a Signed Transaction
RosettaAPI.rosettaConstructionHash(rosettaConstructionHashRequest: rosettaConstructionHashRequest) { (response, error) in
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
 **rosettaConstructionHashRequest** | [**RosettaConstructionHashRequest**](RosettaConstructionHashRequest.md) |  | 

### Return type

[**RosettaConstructionHashResponse**](RosettaConstructionHashResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionMetadata**
```swift
    open class func rosettaConstructionMetadata(rosettaConstructionMetadataRequest: RosettaConstructionMetadataRequest, completion: @escaping (_ data: RosettaConstructionMetadataResponse?, _ error: Error?) -> Void)
```

Get Metadata for Transaction Construction

To Do

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionMetadataRequest = RosettaConstructionMetadataRequest(networkIdentifier: "TODO", options: RosettaOptions(senderAddress: "senderAddress_example", type: "type_example", status: "TODO", tokenTransferRecipientAddress: "tokenTransferRecipientAddress_example", amount: "amount_example", symbol: "symbol_example", decimals: 123, gasLimit: 123, gasPrice: 123, suggestedFeeMultiplier: 123, maxFee: "maxFee_example", fee: "fee_example", size: 123, memo: "memo_example", numberOfCycles: 123, contractAddress: "contractAddress_example", contractName: "contractName_example", burnBlockHeight: 123, delegateTo: "delegateTo_example", poxAddr: "poxAddr_example"), publicKeys: ["TODO"]) // RosettaConstructionMetadataRequest | 

// Get Metadata for Transaction Construction
RosettaAPI.rosettaConstructionMetadata(rosettaConstructionMetadataRequest: rosettaConstructionMetadataRequest) { (response, error) in
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
 **rosettaConstructionMetadataRequest** | [**RosettaConstructionMetadataRequest**](RosettaConstructionMetadataRequest.md) |  | 

### Return type

[**RosettaConstructionMetadataResponse**](RosettaConstructionMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionParse**
```swift
    open class func rosettaConstructionParse(rosettaConstructionParseRequest: RosettaConstructionParseRequest, completion: @escaping (_ data: RosettaConstructionParseResponse?, _ error: Error?) -> Void)
```

Parse a Transaction

TODO

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionParseRequest = RosettaConstructionParseRequest(networkIdentifier: "TODO", signed: false, transaction: "transaction_example") // RosettaConstructionParseRequest | 

// Parse a Transaction
RosettaAPI.rosettaConstructionParse(rosettaConstructionParseRequest: rosettaConstructionParseRequest) { (response, error) in
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
 **rosettaConstructionParseRequest** | [**RosettaConstructionParseRequest**](RosettaConstructionParseRequest.md) |  | 

### Return type

[**RosettaConstructionParseResponse**](RosettaConstructionParseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionPayloads**
```swift
    open class func rosettaConstructionPayloads(rosettaConstructionPayloadsRequest: RosettaConstructionPayloadsRequest, completion: @escaping (_ data: RosettaConstructionPayloadResponse?, _ error: Error?) -> Void)
```

Generate an Unsigned Transaction and Signing Payloads

Generate and unsigned transaction from operations and metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionPayloadsRequest = RosettaConstructionPayloadsRequest(networkIdentifier: "TODO", operations: ["TODO"], publicKeys: ["TODO"], metadata: RosettaConstructionMetadataResponse_metadata(accountSequence: 123, recentBlockHash: "recentBlockHash_example")) // RosettaConstructionPayloadsRequest | 

// Generate an Unsigned Transaction and Signing Payloads
RosettaAPI.rosettaConstructionPayloads(rosettaConstructionPayloadsRequest: rosettaConstructionPayloadsRequest) { (response, error) in
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
 **rosettaConstructionPayloadsRequest** | [**RosettaConstructionPayloadsRequest**](RosettaConstructionPayloadsRequest.md) |  | 

### Return type

[**RosettaConstructionPayloadResponse**](RosettaConstructionPayloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionPreprocess**
```swift
    open class func rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest: RosettaConstructionPreprocessRequest, completion: @escaping (_ data: RosettaConstructionPreprocessResponse?, _ error: Error?) -> Void)
```

Create a Request to Fetch Metadata

TODO

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionPreprocessRequest = RosettaConstructionPreprocessRequest(networkIdentifier: "TODO", operations: ["TODO"], metadata: "TODO", maxFee: [RosettaMaxFeeAmount(value: "value_example", currency: "TODO", metadata: "TODO")], suggestedFeeMultiplier: 123) // RosettaConstructionPreprocessRequest | 

// Create a Request to Fetch Metadata
RosettaAPI.rosettaConstructionPreprocess(rosettaConstructionPreprocessRequest: rosettaConstructionPreprocessRequest) { (response, error) in
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
 **rosettaConstructionPreprocessRequest** | [**RosettaConstructionPreprocessRequest**](RosettaConstructionPreprocessRequest.md) |  | 

### Return type

[**RosettaConstructionPreprocessResponse**](RosettaConstructionPreprocessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaConstructionSubmit**
```swift
    open class func rosettaConstructionSubmit(rosettaConstructionSubmitRequest: RosettaConstructionSubmitRequest, completion: @escaping (_ data: RosettaConstructionSubmitResponse?, _ error: Error?) -> Void)
```

Submit a Signed Transaction

Submit a pre-signed transaction to the node.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaConstructionSubmitRequest = RosettaConstructionSubmitRequest(networkIdentifier: "TODO", signedTransaction: "signedTransaction_example") // RosettaConstructionSubmitRequest | 

// Submit a Signed Transaction
RosettaAPI.rosettaConstructionSubmit(rosettaConstructionSubmitRequest: rosettaConstructionSubmitRequest) { (response, error) in
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
 **rosettaConstructionSubmitRequest** | [**RosettaConstructionSubmitRequest**](RosettaConstructionSubmitRequest.md) |  | 

### Return type

[**RosettaConstructionSubmitResponse**](RosettaConstructionSubmitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaMempool**
```swift
    open class func rosettaMempool(rosettaMempoolRequest: RosettaMempoolRequest, completion: @escaping (_ data: RosettaMempoolResponse?, _ error: Error?) -> Void)
```

Get All Mempool Transactions

Retrieves a list of transcations currently in the mempool for a given network.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaMempoolRequest = RosettaMempoolRequest(networkIdentifier: "TODO", metadata: "TODO") // RosettaMempoolRequest | 

// Get All Mempool Transactions
RosettaAPI.rosettaMempool(rosettaMempoolRequest: rosettaMempoolRequest) { (response, error) in
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
 **rosettaMempoolRequest** | [**RosettaMempoolRequest**](RosettaMempoolRequest.md) |  | 

### Return type

[**RosettaMempoolResponse**](RosettaMempoolResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaMempoolTransaction**
```swift
    open class func rosettaMempoolTransaction(rosettaMempoolTransactionRequest: RosettaMempoolTransactionRequest, completion: @escaping (_ data: RosettaMempoolTransactionResponse?, _ error: Error?) -> Void)
```

Get a Mempool Transaction

Retrieves transaction details from the mempool for a given transaction id from a given network.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaMempoolTransactionRequest = RosettaMempoolTransactionRequest(networkIdentifier: "TODO", transactionIdentifier: "TODO") // RosettaMempoolTransactionRequest | 

// Get a Mempool Transaction
RosettaAPI.rosettaMempoolTransaction(rosettaMempoolTransactionRequest: rosettaMempoolTransactionRequest) { (response, error) in
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
 **rosettaMempoolTransactionRequest** | [**RosettaMempoolTransactionRequest**](RosettaMempoolTransactionRequest.md) |  | 

### Return type

[**RosettaMempoolTransactionResponse**](RosettaMempoolTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkList**
```swift
    open class func rosettaNetworkList(completion: @escaping (_ data: RosettaNetworkListResponse?, _ error: Error?) -> Void)
```

Get List of Available Networks

Retrieves a list of NetworkIdentifiers that the Rosetta server supports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get List of Available Networks
RosettaAPI.rosettaNetworkList() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**RosettaNetworkListResponse**](RosettaNetworkListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkOptions**
```swift
    open class func rosettaNetworkOptions(rosettaOptionsRequest: RosettaOptionsRequest, completion: @escaping (_ data: RosettaNetworkOptionsResponse?, _ error: Error?) -> Void)
```

Get Network Options

Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaOptionsRequest = RosettaOptionsRequest(networkIdentifier: "TODO", metadata: "TODO") // RosettaOptionsRequest | 

// Get Network Options
RosettaAPI.rosettaNetworkOptions(rosettaOptionsRequest: rosettaOptionsRequest) { (response, error) in
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
 **rosettaOptionsRequest** | [**RosettaOptionsRequest**](RosettaOptionsRequest.md) |  | 

### Return type

[**RosettaNetworkOptionsResponse**](RosettaNetworkOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rosettaNetworkStatus**
```swift
    open class func rosettaNetworkStatus(rosettaStatusRequest: RosettaStatusRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get Network Status

Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let rosettaStatusRequest = RosettaStatusRequest(networkIdentifier: "TODO", metadata: "TODO") // RosettaStatusRequest | 

// Get Network Status
RosettaAPI.rosettaNetworkStatus(rosettaStatusRequest: rosettaStatusRequest) { (response, error) in
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
 **rosettaStatusRequest** | [**RosettaStatusRequest**](RosettaStatusRequest.md) |  | 

### Return type

[**[String: AnyCodable]**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

