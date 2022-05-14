# NamesAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchZoneFile**](NamesAPI.md#fetchzonefile) | **GET** /v1/names/{name}/zonefile | Get Zone File
[**getAllNames**](NamesAPI.md#getallnames) | **GET** /v1/names | Get All Names
[**getAllNamespaces**](NamesAPI.md#getallnamespaces) | **GET** /v1/namespaces | Get All Namespaces
[**getHistoricalZoneFile**](NamesAPI.md#gethistoricalzonefile) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File
[**getNameHistory**](NamesAPI.md#getnamehistory) | **GET** /v1/names/{name}/history | Get Name History
[**getNameInfo**](NamesAPI.md#getnameinfo) | **GET** /v1/names/{name} | Get Name Details
[**getNamePrice**](NamesAPI.md#getnameprice) | **GET** /v2/prices/names/{name} | Get Name Price
[**getNamesOwnedByAddress**](NamesAPI.md#getnamesownedbyaddress) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address
[**getNamespaceNames**](NamesAPI.md#getnamespacenames) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names
[**getNamespacePrice**](NamesAPI.md#getnamespaceprice) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price


# **fetchZoneFile**
```swift
    open class func fetchZoneFile(name: String, completion: @escaping (_ data: AnyOfobjectobject?, _ error: Error?) -> Void)
```

Get Zone File

Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let name = "name_example" // String | fully-qualified name

// Get Zone File
NamesAPI.fetchZoneFile(name: name) { (response, error) in
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
 **name** | **String** | fully-qualified name | 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNames**
```swift
    open class func getAllNames(page: Int, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get All Names

Retrieves a list of all names known to the node.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let page = 987 // Int | names are returned in pages of size 100, so specify the page number.

// Get All Names
NamesAPI.getAllNames(page: page) { (response, error) in
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
 **page** | **Int** | names are returned in pages of size 100, so specify the page number. | 

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNamespaces**
```swift
    open class func getAllNamespaces(completion: @escaping (_ data: BnsGetAllNamespacesResponse?, _ error: Error?) -> Void)
```

Get All Namespaces

Retrieves a list of all namespaces known to the node.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client


// Get All Namespaces
NamesAPI.getAllNamespaces() { (response, error) in
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

[**BnsGetAllNamespacesResponse**](BnsGetAllNamespacesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricalZoneFile**
```swift
    open class func getHistoricalZoneFile(name: String, zoneFileHash: String, completion: @escaping (_ data: AnyOfobjectobject?, _ error: Error?) -> Void)
```

Get Historical Zone File

Retrieves the historical zonefile specified by the username and zone hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let name = "name_example" // String | fully-qualified name
let zoneFileHash = "zoneFileHash_example" // String | zone file hash

// Get Historical Zone File
NamesAPI.getHistoricalZoneFile(name: name, zoneFileHash: zoneFileHash) { (response, error) in
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
 **name** | **String** | fully-qualified name | 
 **zoneFileHash** | **String** | zone file hash | 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNameHistory**
```swift
    open class func getNameHistory(name: String, page: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Name History

Retrieves a history of all blockchain records of a registered name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let name = "name_example" // String | name to query
let page = 987 // Int | the page (in 20-entry pages) of the history to fetch

// Get Name History
NamesAPI.getNameHistory(name: name, page: page) { (response, error) in
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
 **name** | **String** | name to query | 
 **page** | **Int** | the page (in 20-entry pages) of the history to fetch | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNameInfo**
```swift
    open class func getNameInfo(name: String, completion: @escaping (_ data: BnsGetNameInfoResponse?, _ error: Error?) -> Void)
```

Get Name Details

Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let name = "name_example" // String | fully-qualified name

// Get Name Details
NamesAPI.getNameInfo(name: name) { (response, error) in
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
 **name** | **String** | fully-qualified name | 

### Return type

[**BnsGetNameInfoResponse**](BnsGetNameInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamePrice**
```swift
    open class func getNamePrice(name: String, completion: @escaping (_ data: BnsGetNamePriceResponse?, _ error: Error?) -> Void)
```

Get Name Price

Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let name = "name_example" // String | the name to query price information for

// Get Name Price
NamesAPI.getNamePrice(name: name) { (response, error) in
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
 **name** | **String** | the name to query price information for | 

### Return type

[**BnsGetNamePriceResponse**](BnsGetNamePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamesOwnedByAddress**
```swift
    open class func getNamesOwnedByAddress(blockchain: String, address: String, completion: @escaping (_ data: BnsNamesOwnByAddressResponse?, _ error: Error?) -> Void)
```

Get Names Owned by Address

Retrieves a list of names owned by the address provided.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let blockchain = "blockchain_example" // String | the layer-1 blockchain for the address
let address = "address_example" // String | the address to lookup

// Get Names Owned by Address
NamesAPI.getNamesOwnedByAddress(blockchain: blockchain, address: address) { (response, error) in
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
 **blockchain** | **String** | the layer-1 blockchain for the address | 
 **address** | **String** | the address to lookup | 

### Return type

[**BnsNamesOwnByAddressResponse**](BnsNamesOwnByAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamespaceNames**
```swift
    open class func getNamespaceNames(tld: String, page: Int, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get Namespace Names

Retrieves a list of names within a given namespace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let tld = "tld_example" // String | the namespace to fetch names from
let page = 987 // Int | names are returned in pages of size 100, so specify the page number.

// Get Namespace Names
NamesAPI.getNamespaceNames(tld: tld, page: page) { (response, error) in
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
 **tld** | **String** | the namespace to fetch names from | 
 **page** | **Int** | names are returned in pages of size 100, so specify the page number. | 

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamespacePrice**
```swift
    open class func getNamespacePrice(tld: String, completion: @escaping (_ data: BnsGetNamespacePriceResponse?, _ error: Error?) -> Void)
```

Get Namespace Price

Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let tld = "tld_example" // String | the namespace to fetch price for

// Get Namespace Price
NamesAPI.getNamespacePrice(tld: tld) { (response, error) in
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
 **tld** | **String** | the namespace to fetch price for | 

### Return type

[**BnsGetNamespacePriceResponse**](BnsGetNamespacePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

