# stacks_blockchain_api_client.api.InfoApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoreApiInfo**](InfoApi.md#getcoreapiinfo) | **GET** /v2/info | Get Core API info
[**getNetworkBlockTimeByNetwork**](InfoApi.md#getnetworkblocktimebynetwork) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network's target block time
[**getNetworkBlockTimes**](InfoApi.md#getnetworkblocktimes) | **GET** /extended/v1/info/network_block_times | Get the network target block time
[**getPoxInfo**](InfoApi.md#getpoxinfo) | **GET** /v2/pox | Get Proof-of-Transfer details
[**getStatus**](InfoApi.md#getstatus) | **GET** /extended/v1/status | API status
[**getStxSupply**](InfoApi.md#getstxsupply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply
[**getStxSupplyCirculatingPlain**](InfoApi.md#getstxsupplycirculatingplain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format
[**getStxSupplyTotalSupplyPlain**](InfoApi.md#getstxsupplytotalsupplyplain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format
[**getTotalStxSupplyLegacyFormat**](InfoApi.md#gettotalstxsupplylegacyformat) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)


# **getCoreApiInfo**
> CoreNodeInfoResponse getCoreApiInfo()

Get Core API info

Retrieves information about the Core API including the server version

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getCoreApiInfo();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getCoreApiInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CoreNodeInfoResponse**](CoreNodeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkBlockTimeByNetwork**
> Object getNetworkBlockTimeByNetwork(network)

Get a given network's target block time

Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();
final network = network_example; // String | Which network to retrieve the target block time of

try {
    final result = api_instance.getNetworkBlockTimeByNetwork(network);
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getNetworkBlockTimeByNetwork: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| Which network to retrieve the target block time of | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkBlockTimes**
> NetworkBlockTimesResponse getNetworkBlockTimes()

Get the network target block time

Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getNetworkBlockTimes();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getNetworkBlockTimes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NetworkBlockTimesResponse**](NetworkBlockTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoxInfo**
> CoreNodePoxResponse getPoxInfo()

Get Proof-of-Transfer details

Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getPoxInfo();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getPoxInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CoreNodePoxResponse**](CoreNodePoxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
> ServerStatusResponse getStatus()

API status

Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getStatus();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerStatusResponse**](ServerStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupply**
> GetStxSupplyResponse getStxSupply(height)

Get total and unlocked STX supply

Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();
final height = 8.14; // num | The block height at which to query supply details from, if not provided then the latest block height is used

try {
    final result = api_instance.getStxSupply(height);
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getStxSupply: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **num**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional] 

### Return type

[**GetStxSupplyResponse**](GetStxSupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupplyCirculatingPlain**
> String getStxSupplyCirculatingPlain()

Get circulating STX supply in plain text format

Retrieves the STX tokens currently in circulation that have been unlocked as plain text.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getStxSupplyCirculatingPlain();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getStxSupplyCirculatingPlain: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupplyTotalSupplyPlain**
> String getStxSupplyTotalSupplyPlain()

Get total STX supply in plain text format

Retrieves the total supply for STX tokens as plain text.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();

try {
    final result = api_instance.getStxSupplyTotalSupplyPlain();
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getStxSupplyTotalSupplyPlain: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalStxSupplyLegacyFormat**
> GetStxSupplyLegacyFormatResponse getTotalStxSupplyLegacyFormat(height)

Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)

Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = InfoApi();
final height = 8.14; // num | The block height at which to query supply details from, if not provided then the latest block height is used

try {
    final result = api_instance.getTotalStxSupplyLegacyFormat(height);
    print(result);
} catch (e) {
    print('Exception when calling InfoApi->getTotalStxSupplyLegacyFormat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **num**| The block height at which to query supply details from, if not provided then the latest block height is used | [optional] 

### Return type

[**GetStxSupplyLegacyFormatResponse**](GetStxSupplyLegacyFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

