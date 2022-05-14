# stacks_blockchain_api_client.api.MicroblocksApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMicroblockByHash**](MicroblocksApi.md#getmicroblockbyhash) | **GET** /extended/v1/microblock/{hash} | Get microblock
[**getMicroblockList**](MicroblocksApi.md#getmicroblocklist) | **GET** /extended/v1/microblock | Get recent microblocks
[**getUnanchoredTxs**](MicroblocksApi.md#getunanchoredtxs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks


# **getMicroblockByHash**
> Microblock getMicroblockByHash(hash)

Get microblock

Retrieves a specific microblock by `hash`

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = MicroblocksApi();
final hash = hash_example; // String | Hash of the microblock

try {
    final result = api_instance.getMicroblockByHash(hash);
    print(result);
} catch (e) {
    print('Exception when calling MicroblocksApi->getMicroblockByHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Hash of the microblock | 

### Return type

[**Microblock**](Microblock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMicroblockList**
> MicroblockListResponse getMicroblockList(limit, offset)

Get recent microblocks

Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = MicroblocksApi();
final limit = 56; // int | Max number of microblocks to fetch
final offset = 56; // int | Index of the first microblock to fetch

try {
    final result = api_instance.getMicroblockList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling MicroblocksApi->getMicroblockList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Max number of microblocks to fetch | [optional] [default to 20]
 **offset** | **int**| Index of the first microblock to fetch | [optional] 

### Return type

[**MicroblockListResponse**](MicroblockListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnanchoredTxs**
> UnanchoredTransactionListResponse getUnanchoredTxs()

Get the list of current transactions that belong to unanchored microblocks

Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = MicroblocksApi();

try {
    final result = api_instance.getUnanchoredTxs();
    print(result);
} catch (e) {
    print('Exception when calling MicroblocksApi->getUnanchoredTxs: $e\n');
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

