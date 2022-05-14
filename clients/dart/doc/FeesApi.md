# stacks_blockchain_api_client.api.FeesApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchFeeRate**](FeesApi.md#fetchfeerate) | **POST** /extended/v1/fee_rate | fetch fee rate
[**getFeeTransfer**](FeesApi.md#getfeetransfer) | **GET** /v2/fees/transfer | Get estimated fee


# **fetchFeeRate**
> FeeRate fetchFeeRate(feeRateRequest)

fetch fee rate

Retrieves estimated fee rate.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FeesApi();
final feeRateRequest = FeeRateRequest(); // FeeRateRequest | 

try {
    final result = api_instance.fetchFeeRate(feeRateRequest);
    print(result);
} catch (e) {
    print('Exception when calling FeesApi->fetchFeeRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feeRateRequest** | [**FeeRateRequest**](FeeRateRequest.md)|  | 

### Return type

[**FeeRate**](FeeRate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeeTransfer**
> Object getFeeTransfer()

Get estimated fee

Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FeesApi();

try {
    final result = api_instance.getFeeTransfer();
    print(result);
} catch (e) {
    print('Exception when calling FeesApi->getFeeTransfer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

