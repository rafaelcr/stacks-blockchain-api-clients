# StackingRewardsAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBurnchainRewardList**](StackingRewardsAPI.md#getburnchainrewardlist) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients
[**getBurnchainRewardListByAddress**](StackingRewardsAPI.md#getburnchainrewardlistbyaddress) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient
[**getBurnchainRewardSlotHolders**](StackingRewardsAPI.md#getburnchainrewardslotholders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders
[**getBurnchainRewardSlotHoldersByAddress**](StackingRewardsAPI.md#getburnchainrewardslotholdersbyaddress) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address
[**getBurnchainRewardsTotalByAddress**](StackingRewardsAPI.md#getburnchainrewardstotalbyaddress) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient


# **getBurnchainRewardList**
```swift
    open class func getBurnchainRewardList(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: BurnchainRewardListResponse?, _ error: Error?) -> Void)
```

Get recent burnchain reward recipients

Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of rewards to fetch (optional) (default to 96)
let offset = 987 // Int | index of first rewards to fetch (optional)

// Get recent burnchain reward recipients
StackingRewardsAPI.getBurnchainRewardList(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | max number of rewards to fetch | [optional] [default to 96]
 **offset** | **Int** | index of first rewards to fetch | [optional] 

### Return type

[**BurnchainRewardListResponse**](BurnchainRewardListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardListByAddress**
```swift
    open class func getBurnchainRewardListByAddress(address: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get recent burnchain reward for the given recipient

Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
let limit = 987 // Int | max number of rewards to fetch (optional)
let offset = 987 // Int | index of first rewards to fetch (optional)

// Get recent burnchain reward for the given recipient
StackingRewardsAPI.getBurnchainRewardListByAddress(address: address, limit: limit, offset: offset) { (response, error) in
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
 **address** | **String** | Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 
 **limit** | **Int** | max number of rewards to fetch | [optional] 
 **offset** | **Int** | index of first rewards to fetch | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardSlotHolders**
```swift
    open class func getBurnchainRewardSlotHolders(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: BurnchainRewardSlotHolderListResponse?, _ error: Error?) -> Void)
```

Get recent reward slot holders

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let limit = 987 // Int | max number of items to fetch (optional) (default to 96)
let offset = 987 // Int | index of the first items to fetch (optional)

// Get recent reward slot holders
StackingRewardsAPI.getBurnchainRewardSlotHolders(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** | max number of items to fetch | [optional] [default to 96]
 **offset** | **Int** | index of the first items to fetch | [optional] 

### Return type

[**BurnchainRewardSlotHolderListResponse**](BurnchainRewardSlotHolderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardSlotHoldersByAddress**
```swift
    open class func getBurnchainRewardSlotHoldersByAddress(address: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get recent reward slot holder entries for the given address

Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
let limit = 987 // Int | max number of items to fetch (optional)
let offset = 987 // Int | index of the first items to fetch (optional)

// Get recent reward slot holder entries for the given address
StackingRewardsAPI.getBurnchainRewardSlotHoldersByAddress(address: address, limit: limit, offset: offset) { (response, error) in
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
 **address** | **String** | Reward slot holder recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 
 **limit** | **Int** | max number of items to fetch | [optional] 
 **offset** | **Int** | index of the first items to fetch | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBurnchainRewardsTotalByAddress**
```swift
    open class func getBurnchainRewardsTotalByAddress(address: String, completion: @escaping (_ data: BurnchainRewardsTotal?, _ error: Error?) -> Void)
```

Get total burnchain rewards for the given recipient

Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let address = "address_example" // String | Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format

// Get total burnchain rewards for the given recipient
StackingRewardsAPI.getBurnchainRewardsTotalByAddress(address: address) { (response, error) in
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
 **address** | **String** | Reward recipient address. Should either be in the native burnchain&#39;s format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format | 

### Return type

[**BurnchainRewardsTotal**](BurnchainRewardsTotal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

