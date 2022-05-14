# stacks_blockchain_api_client.api.FungibleTokensApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractFtMetadata**](FungibleTokensApi.md#getcontractftmetadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id
[**getFtMetadataList**](FungibleTokensApi.md#getftmetadatalist) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list


# **getContractFtMetadata**
> FungibleTokenMetadata getContractFtMetadata(contractId)

Fungible tokens metadata for contract id

Retrieves the metadata for fungible tokens for a given contract id

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FungibleTokensApi();
final contractId = contractId_example; // String | token's contract id

try {
    final result = api_instance.getContractFtMetadata(contractId);
    print(result);
} catch (e) {
    print('Exception when calling FungibleTokensApi->getContractFtMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **String**| token's contract id | 

### Return type

[**FungibleTokenMetadata**](FungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFtMetadataList**
> FungibleTokensMetadataList getFtMetadataList(limit, offset)

Fungible tokens metadata list

Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FungibleTokensApi();
final limit = 56; // int | max number of tokens to fetch
final offset = 56; // int | index of first tokens to fetch

try {
    final result = api_instance.getFtMetadataList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling FungibleTokensApi->getFtMetadataList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of tokens to fetch | [optional] 
 **offset** | **int**| index of first tokens to fetch | [optional] 

### Return type

[**FungibleTokensMetadataList**](FungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

