# InfoAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoreApiInfo**](InfoAPI.md#getcoreapiinfo) | **GET** /v2/info | Get Core API info
[**getNetworkBlockTimeByNetwork**](InfoAPI.md#getnetworkblocktimebynetwork) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network&#39;s target block time
[**getNetworkBlockTimes**](InfoAPI.md#getnetworkblocktimes) | **GET** /extended/v1/info/network_block_times | Get the network target block time
[**getPoxInfo**](InfoAPI.md#getpoxinfo) | **GET** /v2/pox | Get Proof-of-Transfer details
[**getStatus**](InfoAPI.md#getstatus) | **GET** /extended/v1/status | API status
[**getStxSupply**](InfoAPI.md#getstxsupply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply
[**getStxSupplyCirculatingPlain**](InfoAPI.md#getstxsupplycirculatingplain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format
[**getStxSupplyTotalSupplyPlain**](InfoAPI.md#getstxsupplytotalsupplyplain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format
[**getTotalStxSupplyLegacyFormat**](InfoAPI.md#gettotalstxsupplylegacyformat) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)


# **getCoreApiInfo**
```swift
    open class func getCoreApiInfo(completion: @escaping (_ data: CoreNodeInfoResponse?, _ error: Error?) -> Void)
```

Get Core API info

Retrieves information about the Core API including the server version

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get Core API info
InfoAPI.getCoreApiInfo() { (response, error) in
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

[**CoreNodeInfoResponse**](CoreNodeInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkBlockTimeByNetwork**
```swift
    open class func getNetworkBlockTimeByNetwork(network: Network_getNetworkBlockTimeByNetwork, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get a given network's target block time

Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let network = "network_example" // String | Which network to retrieve the target block time of

// Get a given network's target block time
InfoAPI.getNetworkBlockTimeByNetwork(network: network) { (response, error) in
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
 **network** | **String** | Which network to retrieve the target block time of | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkBlockTimes**
```swift
    open class func getNetworkBlockTimes(completion: @escaping (_ data: NetworkBlockTimesResponse?, _ error: Error?) -> Void)
```

Get the network target block time

Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get the network target block time
InfoAPI.getNetworkBlockTimes() { (response, error) in
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

[**NetworkBlockTimesResponse**](NetworkBlockTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPoxInfo**
```swift
    open class func getPoxInfo(completion: @escaping (_ data: CoreNodePoxResponse?, _ error: Error?) -> Void)
```

Get Proof-of-Transfer details

Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get Proof-of-Transfer details
InfoAPI.getPoxInfo() { (response, error) in
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

[**CoreNodePoxResponse**](CoreNodePoxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus(completion: @escaping (_ data: ServerStatusResponse?, _ error: Error?) -> Void)
```

API status

Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// API status
InfoAPI.getStatus() { (response, error) in
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

[**ServerStatusResponse**](ServerStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupply**
```swift
    open class func getStxSupply(height: Double? = nil, completion: @escaping (_ data: GetStxSupplyResponse?, _ error: Error?) -> Void)
```

Get total and unlocked STX supply

Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let height = 987 // Double | The block height at which to query supply details from, if not provided then the latest block height is used (optional)

// Get total and unlocked STX supply
InfoAPI.getStxSupply(height: height) { (response, error) in
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
 **height** | **Double** | The block height at which to query supply details from, if not provided then the latest block height is used | [optional] 

### Return type

[**GetStxSupplyResponse**](GetStxSupplyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupplyCirculatingPlain**
```swift
    open class func getStxSupplyCirculatingPlain(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get circulating STX supply in plain text format

Retrieves the STX tokens currently in circulation that have been unlocked as plain text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get circulating STX supply in plain text format
InfoAPI.getStxSupplyCirculatingPlain() { (response, error) in
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStxSupplyTotalSupplyPlain**
```swift
    open class func getStxSupplyTotalSupplyPlain(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get total STX supply in plain text format

Retrieves the total supply for STX tokens as plain text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get total STX supply in plain text format
InfoAPI.getStxSupplyTotalSupplyPlain() { (response, error) in
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalStxSupplyLegacyFormat**
```swift
    open class func getTotalStxSupplyLegacyFormat(height: Double? = nil, completion: @escaping (_ data: GetStxSupplyLegacyFormatResponse?, _ error: Error?) -> Void)
```

Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)

Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let height = 987 // Double | The block height at which to query supply details from, if not provided then the latest block height is used (optional)

// Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
InfoAPI.getTotalStxSupplyLegacyFormat(height: height) { (response, error) in
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
 **height** | **Double** | The block height at which to query supply details from, if not provided then the latest block height is used | [optional] 

### Return type

[**GetStxSupplyLegacyFormatResponse**](GetStxSupplyLegacyFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

