# NonFungibleTokensAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractNftMetadata**](NonFungibleTokensAPI.md#getcontractnftmetadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id
[**getNftHistory**](NonFungibleTokensAPI.md#getnfthistory) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history
[**getNftHoldings**](NonFungibleTokensAPI.md#getnftholdings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings
[**getNftMetadataList**](NonFungibleTokensAPI.md#getnftmetadatalist) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list
[**getNftMints**](NonFungibleTokensAPI.md#getnftmints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints


# **getContractNftMetadata**
```swift
    open class func getContractNftMetadata(contractId: String, completion: @escaping (_ data: NonFungibleTokenMetadata?, _ error: Error?) -> Void)
```

Non fungible tokens metadata for contract id

Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractId = "contractId_example" // String | token's contract id

// Non fungible tokens metadata for contract id
NonFungibleTokensAPI.getContractNftMetadata(contractId: contractId) { (response, error) in
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
 **contractId** | **String** | token&#39;s contract id | 

### Return type

[**NonFungibleTokenMetadata**](NonFungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftHistory**
```swift
    open class func getNftHistory(assetIdentifier: String, value: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, completion: @escaping (_ data: NonFungibleTokenHistoryEventList?, _ error: Error?) -> Void)
```

Non-Fungible Token history

Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let assetIdentifier = "assetIdentifier_example" // String | token asset class identifier
let value = "value_example" // String | hex representation of the token's unique value
let limit = 987 // Int | max number of events to fetch (optional) (default to 50)
let offset = 987 // Int | index of first event to fetch (optional) (default to 0)
let unanchored = true // Bool | whether or not to include events from unconfirmed transactions (optional) (default to false)
let txMetadata = true // Bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. (optional) (default to false)

// Non-Fungible Token history
NonFungibleTokensAPI.getNftHistory(assetIdentifier: assetIdentifier, value: value, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata) { (response, error) in
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
 **assetIdentifier** | **String** | token asset class identifier | 
 **value** | **String** | hex representation of the token&#39;s unique value | 
 **limit** | **Int** | max number of events to fetch | [optional] [default to 50]
 **offset** | **Int** | index of first event to fetch | [optional] [default to 0]
 **unanchored** | **Bool** | whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Bool** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHistoryEventList**](NonFungibleTokenHistoryEventList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftHoldings**
```swift
    open class func getNftHoldings(principal: String, assetIdentifiers: [String]? = nil, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, completion: @escaping (_ data: NonFungibleTokenHoldingsList?, _ error: Error?) -> Void)
```

Non-Fungible Token holdings

Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let principal = "principal_example" // String | token owner's STX address or Smart Contract ID
let assetIdentifiers = ["inner_example"] // [String] | identifiers of the token asset classes to filter for (optional)
let limit = 987 // Int | max number of tokens to fetch (optional) (default to 50)
let offset = 987 // Int | index of first tokens to fetch (optional) (default to 0)
let unanchored = true // Bool | whether or not to include tokens from unconfirmed transactions (optional) (default to false)
let txMetadata = true // Bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. (optional) (default to false)

// Non-Fungible Token holdings
NonFungibleTokensAPI.getNftHoldings(principal: principal, assetIdentifiers: assetIdentifiers, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata) { (response, error) in
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
 **principal** | **String** | token owner&#39;s STX address or Smart Contract ID | 
 **assetIdentifiers** | [**[String]**](String.md) | identifiers of the token asset classes to filter for | [optional] 
 **limit** | **Int** | max number of tokens to fetch | [optional] [default to 50]
 **offset** | **Int** | index of first tokens to fetch | [optional] [default to 0]
 **unanchored** | **Bool** | whether or not to include tokens from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Bool** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHoldingsList**](NonFungibleTokenHoldingsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftMetadataList**
```swift
    open class func getNftMetadataList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: NonFungibleTokensMetadataList?, _ error: Error?) -> Void)
```

Non fungible tokens metadata list

Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of tokens to fetch (optional)
let offset = 987 // Int | index of first tokens to fetch (optional)

// Non fungible tokens metadata list
NonFungibleTokensAPI.getNftMetadataList(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | max number of tokens to fetch | [optional] 
 **offset** | **Int** | index of first tokens to fetch | [optional] 

### Return type

[**NonFungibleTokensMetadataList**](NonFungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftMints**
```swift
    open class func getNftMints(assetIdentifier: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, completion: @escaping (_ data: NonFungibleTokenMintList?, _ error: Error?) -> Void)
```

Non-Fungible Token mints

Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let assetIdentifier = "assetIdentifier_example" // String | token asset class identifier
let limit = 987 // Int | max number of events to fetch (optional) (default to 50)
let offset = 987 // Int | index of first event to fetch (optional) (default to 0)
let unanchored = true // Bool | whether or not to include events from unconfirmed transactions (optional) (default to false)
let txMetadata = true // Bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. (optional) (default to false)

// Non-Fungible Token mints
NonFungibleTokensAPI.getNftMints(assetIdentifier: assetIdentifier, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata) { (response, error) in
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
 **assetIdentifier** | **String** | token asset class identifier | 
 **limit** | **Int** | max number of events to fetch | [optional] [default to 50]
 **offset** | **Int** | index of first event to fetch | [optional] [default to 0]
 **unanchored** | **Bool** | whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **Bool** | whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenMintList**](NonFungibleTokenMintList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

