# MicroblocksAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMicroblockByHash**](MicroblocksAPI.md#getmicroblockbyhash) | **GET** /extended/v1/microblock/{hash} | Get microblock
[**getMicroblockList**](MicroblocksAPI.md#getmicroblocklist) | **GET** /extended/v1/microblock | Get recent microblocks
[**getUnanchoredTxs**](MicroblocksAPI.md#getunanchoredtxs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks


# **getMicroblockByHash**
```swift
    open class func getMicroblockByHash(hash: String, completion: @escaping (_ data: Microblock?, _ error: Error?) -> Void)
```

Get microblock

Retrieves a specific microblock by `hash`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let hash = "hash_example" // String | Hash of the microblock

// Get microblock
MicroblocksAPI.getMicroblockByHash(hash: hash) { (response, error) in
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
 **hash** | **String** | Hash of the microblock | 

### Return type

[**Microblock**](Microblock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMicroblockList**
```swift
    open class func getMicroblockList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: MicroblockListResponse?, _ error: Error?) -> Void)
```

Get recent microblocks

Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | Max number of microblocks to fetch (optional) (default to 20)
let offset = 987 // Int | Index of the first microblock to fetch (optional)

// Get recent microblocks
MicroblocksAPI.getMicroblockList(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | Max number of microblocks to fetch | [optional] [default to 20]
 **offset** | **Int** | Index of the first microblock to fetch | [optional] 

### Return type

[**MicroblockListResponse**](MicroblockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnanchoredTxs**
```swift
    open class func getUnanchoredTxs(completion: @escaping (_ data: UnanchoredTransactionListResponse?, _ error: Error?) -> Void)
```

Get the list of current transactions that belong to unanchored microblocks

Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get the list of current transactions that belong to unanchored microblocks
MicroblocksAPI.getUnanchoredTxs() { (response, error) in
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

[**UnanchoredTransactionListResponse**](UnanchoredTransactionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

