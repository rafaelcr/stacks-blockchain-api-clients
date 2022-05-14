# stacks_blockchain_api_client.api.StackingRewardsApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBurnchainRewardList**](StackingRewardsApi.md#getburnchainrewardlist) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients
[**getBurnchainRewardListByAddress**](StackingRewardsApi.md#getburnchainrewardlistbyaddress) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient
[**getBurnchainRewardSlotHolders**](StackingRewardsApi.md#getburnchainrewardslotholders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders
[**getBurnchainRewardSlotHoldersByAddress**](StackingRewardsApi.md#getburnchainrewardslotholdersbyaddress) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address
[**getBurnchainRewardsTotalByAddress**](StackingRewardsApi.md#getburnchainrewardstotalbyaddress) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient


# **getBurnchainRewardList**
> BurnchainRewardListResponse getBurnchainRewardList(limit, offset)

Get recent burnchain reward recipients

Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = StackingRewardsApi();
final limit = 56; // int | max number of rewards to fetch
final offset = 56; // int | index of first rewards to fetch

try {
    final result = api_instance.getBurnchainRewardList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling StackingRewardsApi->getBurnchainRewardList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of rewards to fetch | [optional] [default to 96]
 **offset** | **int**| index of first rewards to fetch | [optional] 

### Return type

[**BurnchainRewardListResponse**](BurnchainRewardListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardListByAddress**
> Object getBurnchainRewardListByAddress(address, limit, offset)

Get recent burnchain reward for the given recipient

Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = StackingRewardsApi();
final address = address_example; // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
final limit = 56; // int | max number of rewards to fetch
final offset = 56; // int | index of first rewards to fetch

try {
    final result = api_instance.getBurnchainRewardListByAddress(address, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling StackingRewardsApi->getBurnchainRewardListByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 
 **limit** | **int**| max number of rewards to fetch | [optional] 
 **offset** | **int**| index of first rewards to fetch | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardSlotHolders**
> BurnchainRewardSlotHolderListResponse getBurnchainRewardSlotHolders(limit, offset)

Get recent reward slot holders

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = StackingRewardsApi();
final limit = 56; // int | max number of items to fetch
final offset = 56; // int | index of the first items to fetch

try {
    final result = api_instance.getBurnchainRewardSlotHolders(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling StackingRewardsApi->getBurnchainRewardSlotHolders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of items to fetch | [optional] [default to 96]
 **offset** | **int**| index of the first items to fetch | [optional] 

### Return type

[**BurnchainRewardSlotHolderListResponse**](BurnchainRewardSlotHolderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardSlotHoldersByAddress**
> Object getBurnchainRewardSlotHoldersByAddress(address, limit, offset)

Get recent reward slot holder entries for the given address

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = StackingRewardsApi();
final address = address_example; // String | Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
final limit = 56; // int | max number of items to fetch
final offset = 56; // int | index of the first items to fetch

try {
    final result = api_instance.getBurnchainRewardSlotHoldersByAddress(address, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling StackingRewardsApi->getBurnchainRewardSlotHoldersByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 
 **limit** | **int**| max number of items to fetch | [optional] 
 **offset** | **int**| index of the first items to fetch | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardsTotalByAddress**
> BurnchainRewardsTotal getBurnchainRewardsTotalByAddress(address)

Get total burnchain rewards for the given recipient

Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = StackingRewardsApi();
final address = address_example; // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format

try {
    final result = api_instance.getBurnchainRewardsTotalByAddress(address);
    print(result);
} catch (e) {
    print('Exception when calling StackingRewardsApi->getBurnchainRewardsTotalByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 

### Return type

[**BurnchainRewardsTotal**](BurnchainRewardsTotal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

