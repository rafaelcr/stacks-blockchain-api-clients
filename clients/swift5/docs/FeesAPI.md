# FeesAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchFeeRate**](FeesAPI.md#fetchfeerate) | **POST** /extended/v1/fee_rate | fetch fee rate
[**getFeeTransfer**](FeesAPI.md#getfeetransfer) | **GET** /v2/fees/transfer | Get estimated fee


# **fetchFeeRate**
```swift
    open class func fetchFeeRate(feeRateRequest: FeeRateRequest, completion: @escaping (_ data: FeeRate?, _ error: Error?) -> Void)
```

fetch fee rate

Retrieves estimated fee rate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let feeRateRequest = FeeRateRequest(transaction: "transaction_example") // FeeRateRequest | 

// fetch fee rate
FeesAPI.fetchFeeRate(feeRateRequest: feeRateRequest) { (response, error) in
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
 **feeRateRequest** | [**FeeRateRequest**](FeeRateRequest.md) |  | 

### Return type

[**FeeRate**](FeeRate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeeTransfer**
```swift
    open class func getFeeTransfer(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get estimated fee

Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get estimated fee
FeesAPI.getFeeTransfer() { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

