# FungibleTokensAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractFtMetadata**](FungibleTokensAPI.md#getcontractftmetadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id
[**getFtMetadataList**](FungibleTokensAPI.md#getftmetadatalist) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list


# **getContractFtMetadata**
```swift
    open class func getContractFtMetadata(contractId: String, completion: @escaping (_ data: FungibleTokenMetadata?, _ error: Error?) -> Void)
```

Fungible tokens metadata for contract id

Retrieves the metadata for fungible tokens for a given contract id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractId = "contractId_example" // String | token's contract id

// Fungible tokens metadata for contract id
FungibleTokensAPI.getContractFtMetadata(contractId: contractId) { (response, error) in
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

[**FungibleTokenMetadata**](FungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFtMetadataList**
```swift
    open class func getFtMetadataList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: FungibleTokensMetadataList?, _ error: Error?) -> Void)
```

Fungible tokens metadata list

Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of tokens to fetch (optional)
let offset = 987 // Int | index of first tokens to fetch (optional)

// Fungible tokens metadata list
FungibleTokensAPI.getFtMetadataList(limit: limit, offset: offset) { (response, error) in
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

[**FungibleTokensMetadataList**](FungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

