# stacks_blockchain_api_client.api.FaucetsApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runFaucetBtc**](FaucetsApi.md#runfaucetbtc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address
[**runFaucetStx**](FaucetsApi.md#runfaucetstx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens


# **runFaucetBtc**
> Object runFaucetBtc(address, inlineObject1)

Add testnet BTC tokens to address

Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FaucetsApi();
final address = 2N4M94S1ZPt8HfxydXzL2P7qyzgVq7MHWts; // String | A valid testnet BTC address
final inlineObject1 = InlineObject1(); // InlineObject1 | 

try {
    final result = api_instance.runFaucetBtc(address, inlineObject1);
    print(result);
} catch (e) {
    print('Exception when calling FaucetsApi->runFaucetBtc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| A valid testnet BTC address | 
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runFaucetStx**
> RunFaucetResponse runFaucetStx(address, stacking, inlineObject)

Get STX testnet tokens

Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = FaucetsApi();
final address = ST3M7N9Q9HDRM7RVP1Q26P0EE69358PZZAZD7KMXQ; // String | A valid testnet STX address
final stacking = true; // bool | Request the amount of STX tokens needed for individual address stacking
final inlineObject = InlineObject(); // InlineObject | 

try {
    final result = api_instance.runFaucetStx(address, stacking, inlineObject);
    print(result);
} catch (e) {
    print('Exception when calling FaucetsApi->runFaucetStx: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| A valid testnet STX address | 
 **stacking** | **bool**| Request the amount of STX tokens needed for individual address stacking | [optional] [default to false]
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**RunFaucetResponse**](RunFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

