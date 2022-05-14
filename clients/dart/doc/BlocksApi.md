# stacks_blockchain_api_client.api.BlocksApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlockByBurnBlockHash**](BlocksApi.md#getblockbyburnblockhash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash
[**getBlockByBurnBlockHeight**](BlocksApi.md#getblockbyburnblockheight) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height
[**getBlockByHash**](BlocksApi.md#getblockbyhash) | **GET** /extended/v1/block/{hash} | Get block by hash
[**getBlockByHeight**](BlocksApi.md#getblockbyheight) | **GET** /extended/v1/block/by_height/{height} | Get block by height
[**getBlockList**](BlocksApi.md#getblocklist) | **GET** /extended/v1/block | Get recent blocks


# **getBlockByBurnBlockHash**
> Object getBlockByBurnBlockHash(burnBlockHash)

Get block by burnchain block hash

Retrieves block details of a specific block for a given burnchain block hash

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = BlocksApi();
final burnBlockHash = burnBlockHash_example; // String | Hash of the burnchain block

try {
    final result = api_instance.getBlockByBurnBlockHash(burnBlockHash);
    print(result);
} catch (e) {
    print('Exception when calling BlocksApi->getBlockByBurnBlockHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burnBlockHash** | **String**| Hash of the burnchain block | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByBurnBlockHeight**
> Object getBlockByBurnBlockHeight(burnBlockHeight)

Get block by burnchain height

Retrieves block details of a specific block for a given burn chain height

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = BlocksApi();
final burnBlockHeight = 8.14; // num | Height of the burn chain block

try {
    final result = api_instance.getBlockByBurnBlockHeight(burnBlockHeight);
    print(result);
} catch (e) {
    print('Exception when calling BlocksApi->getBlockByBurnBlockHeight: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burnBlockHeight** | **num**| Height of the burn chain block | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByHash**
> Block getBlockByHash(hash)

Get block by hash

Retrieves block details of a specific block for a given chain height

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = BlocksApi();
final hash = hash_example; // String | Hash of the block

try {
    final result = api_instance.getBlockByHash(hash);
    print(result);
} catch (e) {
    print('Exception when calling BlocksApi->getBlockByHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Hash of the block | 

### Return type

[**Block**](Block.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockByHeight**
> Object getBlockByHeight(height)

Get block by height

Retrieves block details of a specific block at a given block height

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = BlocksApi();
final height = 8.14; // num | Height of the block

try {
    final result = api_instance.getBlockByHeight(height);
    print(result);
} catch (e) {
    print('Exception when calling BlocksApi->getBlockByHeight: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **num**| Height of the block | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockList**
> BlockListResponse getBlockList(limit, offset)

Get recent blocks

Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = BlocksApi();
final limit = 56; // int | max number of blocks to fetch
final offset = 56; // int | index of first block to fetch

try {
    final result = api_instance.getBlockList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling BlocksApi->getBlockList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of blocks to fetch | [optional] [default to 20]
 **offset** | **int**| index of first block to fetch | [optional] 

### Return type

[**BlockListResponse**](BlockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

