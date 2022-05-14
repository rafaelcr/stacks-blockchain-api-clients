# SearchAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchById**](SearchAPI.md#searchbyid) | **GET** /extended/v1/search/{id} | Search


# **searchById**
```swift
    open class func searchById(id: String, includeMetadata: Bool? = nil, completion: @escaping (_ data: AnyOfobjectobject?, _ error: Error?) -> Void)
```

Search

Search blocks, transactions, contracts, or accounts by hash/ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let id = "id_example" // String | The hex hash string for a block or transaction, account address, or contract address
let includeMetadata = true // Bool | This includes the detailed data for purticular hash in the response (optional)

// Search
SearchAPI.searchById(id: id, includeMetadata: includeMetadata) { (response, error) in
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
 **id** | **String** | The hex hash string for a block or transaction, account address, or contract address | 
 **includeMetadata** | **Bool** | This includes the detailed data for purticular hash in the response | [optional] 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

