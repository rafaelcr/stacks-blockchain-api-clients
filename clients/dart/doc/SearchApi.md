# stacks_blockchain_api_client.api.SearchApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchById**](SearchApi.md#searchbyid) | **GET** /extended/v1/search/{id} | Search


# **searchById**
> AnyOfobjectobject searchById(id, includeMetadata)

Search

Search blocks, transactions, contracts, or accounts by hash/ID

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SearchApi();
final id = id_example; // String | The hex hash string for a block or transaction, account address, or contract address
final includeMetadata = true; // bool | This includes the detailed data for purticular hash in the response

try {
    final result = api_instance.searchById(id, includeMetadata);
    print(result);
} catch (e) {
    print('Exception when calling SearchApi->searchById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The hex hash string for a block or transaction, account address, or contract address | 
 **includeMetadata** | **bool**| This includes the detailed data for purticular hash in the response | [optional] 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

