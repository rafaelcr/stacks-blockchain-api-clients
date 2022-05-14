# BlocksAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlockByBurnBlockHash**](BlocksAPI.md#getblockbyburnblockhash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash
[**getBlockByBurnBlockHeight**](BlocksAPI.md#getblockbyburnblockheight) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height
[**getBlockByHash**](BlocksAPI.md#getblockbyhash) | **GET** /extended/v1/block/{hash} | Get block by hash
[**getBlockByHeight**](BlocksAPI.md#getblockbyheight) | **GET** /extended/v1/block/by_height/{height} | Get block by height
[**getBlockList**](BlocksAPI.md#getblocklist) | **GET** /extended/v1/block | Get recent blocks


# **getBlockByBurnBlockHash**
```swift
    open class func getBlockByBurnBlockHash(burnBlockHash: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get block by burnchain block hash

Retrieves block details of a specific block for a given burnchain block hash

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let burnBlockHash = "burnBlockHash_example" // String | Hash of the burnchain block

// Get block by burnchain block hash
BlocksAPI.getBlockByBurnBlockHash(burnBlockHash: burnBlockHash) { (response, error) in
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
 **burnBlockHash** | **String** | Hash of the burnchain block | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByBurnBlockHeight**
```swift
    open class func getBlockByBurnBlockHeight(burnBlockHeight: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get block by burnchain height

Retrieves block details of a specific block for a given burn chain height

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let burnBlockHeight = 987 // Double | Height of the burn chain block

// Get block by burnchain height
BlocksAPI.getBlockByBurnBlockHeight(burnBlockHeight: burnBlockHeight) { (response, error) in
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
 **burnBlockHeight** | **Double** | Height of the burn chain block | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByHash**
```swift
    open class func getBlockByHash(hash: String, completion: @escaping (_ data: Block?, _ error: Error?) -> Void)
```

Get block by hash

Retrieves block details of a specific block for a given chain height

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let hash = "hash_example" // String | Hash of the block

// Get block by hash
BlocksAPI.getBlockByHash(hash: hash) { (response, error) in
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
 **hash** | **String** | Hash of the block | 

### Return type

[**Block**](Block.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByHeight**
```swift
    open class func getBlockByHeight(height: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get block by height

Retrieves block details of a specific block at a given block height

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let height = 987 // Double | Height of the block

// Get block by height
BlocksAPI.getBlockByHeight(height: height) { (response, error) in
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
 **height** | **Double** | Height of the block | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockList**
```swift
    open class func getBlockList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: BlockListResponse?, _ error: Error?) -> Void)
```

Get recent blocks

Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of blocks to fetch (optional) (default to 20)
let offset = 987 // Int | index of first block to fetch (optional)

// Get recent blocks
BlocksAPI.getBlockList(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | max number of blocks to fetch | [optional] [default to 20]
 **offset** | **Int** | index of first block to fetch | [optional] 

### Return type

[**BlockListResponse**](BlockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

