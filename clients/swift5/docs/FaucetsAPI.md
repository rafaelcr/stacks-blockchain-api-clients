# FaucetsAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runFaucetBtc**](FaucetsAPI.md#runfaucetbtc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address
[**runFaucetStx**](FaucetsAPI.md#runfaucetstx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens


# **runFaucetBtc**
```swift
    open class func runFaucetBtc(address: String, inlineObject1: InlineObject1? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Add testnet BTC tokens to address

Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | A valid testnet BTC address
let inlineObject1 = inline_object_1(address: "address_example") // InlineObject1 |  (optional)

// Add testnet BTC tokens to address
FaucetsAPI.runFaucetBtc(address: address, inlineObject1: inlineObject1) { (response, error) in
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
 **address** | **String** | A valid testnet BTC address | 
 **inlineObject1** | [**InlineObject1**](InlineObject1.md) |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runFaucetStx**
```swift
    open class func runFaucetStx(address: String, stacking: Bool? = nil, inlineObject: InlineObject? = nil, completion: @escaping (_ data: RunFaucetResponse?, _ error: Error?) -> Void)
```

Get STX testnet tokens

Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | A valid testnet STX address
let stacking = true // Bool | Request the amount of STX tokens needed for individual address stacking (optional) (default to false)
let inlineObject = inline_object(address: "address_example", stacking: false) // InlineObject |  (optional)

// Get STX testnet tokens
FaucetsAPI.runFaucetStx(address: address, stacking: stacking, inlineObject: inlineObject) { (response, error) in
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
 **address** | **String** | A valid testnet STX address | 
 **stacking** | **Bool** | Request the amount of STX tokens needed for individual address stacking | [optional] [default to false]
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | [optional] 

### Return type

[**RunFaucetResponse**](RunFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

