# SmartContractsAPI

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callReadOnlyFunction**](SmartContractsAPI.md#callreadonlyfunction) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function
[**getContractById**](SmartContractsAPI.md#getcontractbyid) | **GET** /extended/v1/contract/{contract_id} | Get contract info
[**getContractDataMapEntry**](SmartContractsAPI.md#getcontractdatamapentry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract
[**getContractEventsById**](SmartContractsAPI.md#getcontracteventsbyid) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events
[**getContractInterface**](SmartContractsAPI.md#getcontractinterface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface
[**getContractSource**](SmartContractsAPI.md#getcontractsource) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source
[**getContractsByTrait**](SmartContractsAPI.md#getcontractsbytrait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait


# **callReadOnlyFunction**
```swift
    open class func callReadOnlyFunction(contractAddress: String, contractName: String, functionName: String, readOnlyFunctionArgs: ReadOnlyFunctionArgs, tip: String? = nil, completion: @escaping (_ data: ReadOnlyFunctionSuccessResponse?, _ error: Error?) -> Void)
```

Call read-only function

Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractAddress = "contractAddress_example" // String | Stacks address
let contractName = "contractName_example" // String | Contract name
let functionName = "functionName_example" // String | Function name
let readOnlyFunctionArgs = ReadOnlyFunctionArgs(sender: "sender_example", arguments: ["arguments_example"]) // ReadOnlyFunctionArgs | 
let tip = "tip_example" // String | The Stacks chain tip to query from (optional)

// Call read-only function
SmartContractsAPI.callReadOnlyFunction(contractAddress: contractAddress, contractName: contractName, functionName: functionName, readOnlyFunctionArgs: readOnlyFunctionArgs, tip: tip) { (response, error) in
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
 **contractAddress** | **String** | Stacks address | 
 **contractName** | **String** | Contract name | 
 **functionName** | **String** | Function name | 
 **readOnlyFunctionArgs** | [**ReadOnlyFunctionArgs**](ReadOnlyFunctionArgs.md) |  | 
 **tip** | **String** | The Stacks chain tip to query from | [optional] 

### Return type

[**ReadOnlyFunctionSuccessResponse**](ReadOnlyFunctionSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractById**
```swift
    open class func getContractById(contractId: String, unanchored: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get contract info

Retrieves details of a contract with a given `contract_id`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractId = "contractId_example" // String | Contract identifier formatted as `<contract_address>.<contract_name>`
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get contract info
SmartContractsAPI.getContractById(contractId: contractId, unanchored: unanchored) { (response, error) in
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
 **contractId** | **String** | Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; | 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractDataMapEntry**
```swift
    open class func getContractDataMapEntry(contractAddress: String, contractName: String, mapName: String, key: String, proof: Int? = nil, tip: String? = nil, completion: @escaping (_ data: MapEntryResponse?, _ error: Error?) -> Void)
```

Get specific data-map inside a contract

Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractAddress = "contractAddress_example" // String | Stacks address
let contractName = "contractName_example" // String | Contract name
let mapName = "mapName_example" // String | Map name
let key = "key_example" // String | Hex string serialization of the lookup key (which should be a Clarity value)
let proof = 987 // Int | Returns object without the proof field when set to 0 (optional)
let tip = "tip_example" // String | The Stacks chain tip to query from (optional)

// Get specific data-map inside a contract
SmartContractsAPI.getContractDataMapEntry(contractAddress: contractAddress, contractName: contractName, mapName: mapName, key: key, proof: proof, tip: tip) { (response, error) in
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
 **contractAddress** | **String** | Stacks address | 
 **contractName** | **String** | Contract name | 
 **mapName** | **String** | Map name | 
 **key** | **String** | Hex string serialization of the lookup key (which should be a Clarity value) | 
 **proof** | **Int** | Returns object without the proof field when set to 0 | [optional] 
 **tip** | **String** | The Stacks chain tip to query from | [optional] 

### Return type

[**MapEntryResponse**](MapEntryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractEventsById**
```swift
    open class func getContractEventsById(contractId: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, completion: @escaping (_ data: AnyOfobjectobjectobjectobjectobject?, _ error: Error?) -> Void)
```

Get contract events

Retrieves a list of events that have been triggered by a given `contract_id`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractId = "contractId_example" // String | Contract identifier formatted as `<contract_address>.<contract_name>`
let limit = 987 // Int | max number of contract events to fetch (optional)
let offset = 987 // Int | index of first contract event to fetch (optional)
let unanchored = true // Bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional) (default to false)

// Get contract events
SmartContractsAPI.getContractEventsById(contractId: contractId, limit: limit, offset: offset, unanchored: unanchored) { (response, error) in
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
 **contractId** | **String** | Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; | 
 **limit** | **Int** | max number of contract events to fetch | [optional] 
 **offset** | **Int** | index of first contract event to fetch | [optional] 
 **unanchored** | **Bool** | Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractInterface**
```swift
    open class func getContractInterface(contractAddress: String, contractName: String, tip: String? = nil, completion: @escaping (_ data: ContractInterfaceResponse?, _ error: Error?) -> Void)
```

Get contract interface

Retrieves a contract interface with a given `contract_address` and `contract name`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractAddress = "contractAddress_example" // String | Stacks address
let contractName = "contractName_example" // String | Contract name
let tip = "tip_example" // String | The Stacks chain tip to query from (optional)

// Get contract interface
SmartContractsAPI.getContractInterface(contractAddress: contractAddress, contractName: contractName, tip: tip) { (response, error) in
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
 **contractAddress** | **String** | Stacks address | 
 **contractName** | **String** | Contract name | 
 **tip** | **String** | The Stacks chain tip to query from | [optional] 

### Return type

[**ContractInterfaceResponse**](ContractInterfaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractSource**
```swift
    open class func getContractSource(contractAddress: String, contractName: String, proof: Int? = nil, tip: String? = nil, completion: @escaping (_ data: ContractSourceResponse?, _ error: Error?) -> Void)
```

Get contract source

Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let contractAddress = "contractAddress_example" // String | Stacks address
let contractName = "contractName_example" // String | Contract name
let proof = 987 // Int | Returns object without the proof field if set to 0 (optional)
let tip = "tip_example" // String | The Stacks chain tip to query from (optional)

// Get contract source
SmartContractsAPI.getContractSource(contractAddress: contractAddress, contractName: contractName, proof: proof, tip: tip) { (response, error) in
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
 **contractAddress** | **String** | Stacks address | 
 **contractName** | **String** | Contract name | 
 **proof** | **Int** | Returns object without the proof field if set to 0 | [optional] 
 **tip** | **String** | The Stacks chain tip to query from | [optional] 

### Return type

[**ContractSourceResponse**](ContractSourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractsByTrait**
```swift
    open class func getContractsByTrait(traitAbi: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: ContractListResponse?, _ error: Error?) -> Void)
```

Get contracts by trait

Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Stacks Blockchain API Client

let traitAbi = "traitAbi_example" // String | JSON abi of the trait.
let limit = 987 // Int | max number of contracts fetch (optional)
let offset = 987 // Int | index of first contract event to fetch (optional)

// Get contracts by trait
SmartContractsAPI.getContractsByTrait(traitAbi: traitAbi, limit: limit, offset: offset) { (response, error) in
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
 **traitAbi** | **String** | JSON abi of the trait. | 
 **limit** | **Int** | max number of contracts fetch | [optional] 
 **offset** | **Int** | index of first contract event to fetch | [optional] 

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

