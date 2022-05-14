# stacks_blockchain_api_client.api.SmartContractsApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callReadOnlyFunction**](SmartContractsApi.md#callreadonlyfunction) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function
[**getContractById**](SmartContractsApi.md#getcontractbyid) | **GET** /extended/v1/contract/{contract_id} | Get contract info
[**getContractDataMapEntry**](SmartContractsApi.md#getcontractdatamapentry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract
[**getContractEventsById**](SmartContractsApi.md#getcontracteventsbyid) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events
[**getContractInterface**](SmartContractsApi.md#getcontractinterface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface
[**getContractSource**](SmartContractsApi.md#getcontractsource) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source
[**getContractsByTrait**](SmartContractsApi.md#getcontractsbytrait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait


# **callReadOnlyFunction**
> ReadOnlyFunctionSuccessResponse callReadOnlyFunction(contractAddress, contractName, functionName, readOnlyFunctionArgs, tip)

Call read-only function

Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractAddress = contractAddress_example; // String | Stacks address
final contractName = contractName_example; // String | Contract name
final functionName = functionName_example; // String | Function name
final readOnlyFunctionArgs = ReadOnlyFunctionArgs(); // ReadOnlyFunctionArgs | 
final tip = tip_example; // String | The Stacks chain tip to query from

try {
    final result = api_instance.callReadOnlyFunction(contractAddress, contractName, functionName, readOnlyFunctionArgs, tip);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->callReadOnlyFunction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractAddress** | **String**| Stacks address | 
 **contractName** | **String**| Contract name | 
 **functionName** | **String**| Function name | 
 **readOnlyFunctionArgs** | [**ReadOnlyFunctionArgs**](ReadOnlyFunctionArgs.md)|  | 
 **tip** | **String**| The Stacks chain tip to query from | [optional] 

### Return type

[**ReadOnlyFunctionSuccessResponse**](ReadOnlyFunctionSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractById**
> Object getContractById(contractId, unanchored)

Get contract info

Retrieves details of a contract with a given `contract_id`

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractId = contractId_example; // String | Contract identifier formatted as `<contract_address>.<contract_name>`
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getContractById(contractId, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **String**| Contract identifier formatted as `<contract_address>.<contract_name>` | 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractDataMapEntry**
> MapEntryResponse getContractDataMapEntry(contractAddress, contractName, mapName, key, proof, tip)

Get specific data-map inside a contract

Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractAddress = contractAddress_example; // String | Stacks address
final contractName = contractName_example; // String | Contract name
final mapName = mapName_example; // String | Map name
final key = String(); // String | Hex string serialization of the lookup key (which should be a Clarity value)
final proof = 56; // int | Returns object without the proof field when set to 0
final tip = tip_example; // String | The Stacks chain tip to query from

try {
    final result = api_instance.getContractDataMapEntry(contractAddress, contractName, mapName, key, proof, tip);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractDataMapEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractAddress** | **String**| Stacks address | 
 **contractName** | **String**| Contract name | 
 **mapName** | **String**| Map name | 
 **key** | **String**| Hex string serialization of the lookup key (which should be a Clarity value) | 
 **proof** | **int**| Returns object without the proof field when set to 0 | [optional] 
 **tip** | **String**| The Stacks chain tip to query from | [optional] 

### Return type

[**MapEntryResponse**](MapEntryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractEventsById**
> AnyOfobjectobjectobjectobjectobject getContractEventsById(contractId, limit, offset, unanchored)

Get contract events

Retrieves a list of events that have been triggered by a given `contract_id`

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractId = contractId_example; // String | Contract identifier formatted as `<contract_address>.<contract_name>`
final limit = 56; // int | max number of contract events to fetch
final offset = 56; // int | index of first contract event to fetch
final unanchored = true; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    final result = api_instance.getContractEventsById(contractId, limit, offset, unanchored);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractEventsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **String**| Contract identifier formatted as `<contract_address>.<contract_name>` | 
 **limit** | **int**| max number of contract events to fetch | [optional] 
 **offset** | **int**| index of first contract event to fetch | [optional] 
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfobjectobjectobjectobjectobject**](AnyOfobjectobjectobjectobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractInterface**
> ContractInterfaceResponse getContractInterface(contractAddress, contractName, tip)

Get contract interface

Retrieves a contract interface with a given `contract_address` and `contract name`

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractAddress = contractAddress_example; // String | Stacks address
final contractName = contractName_example; // String | Contract name
final tip = tip_example; // String | The Stacks chain tip to query from

try {
    final result = api_instance.getContractInterface(contractAddress, contractName, tip);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractInterface: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractAddress** | **String**| Stacks address | 
 **contractName** | **String**| Contract name | 
 **tip** | **String**| The Stacks chain tip to query from | [optional] 

### Return type

[**ContractInterfaceResponse**](ContractInterfaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractSource**
> ContractSourceResponse getContractSource(contractAddress, contractName, proof, tip)

Get contract source

Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final contractAddress = contractAddress_example; // String | Stacks address
final contractName = contractName_example; // String | Contract name
final proof = 56; // int | Returns object without the proof field if set to 0
final tip = tip_example; // String | The Stacks chain tip to query from

try {
    final result = api_instance.getContractSource(contractAddress, contractName, proof, tip);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractAddress** | **String**| Stacks address | 
 **contractName** | **String**| Contract name | 
 **proof** | **int**| Returns object without the proof field if set to 0 | [optional] 
 **tip** | **String**| The Stacks chain tip to query from | [optional] 

### Return type

[**ContractSourceResponse**](ContractSourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractsByTrait**
> ContractListResponse getContractsByTrait(traitAbi, limit, offset)

Get contracts by trait

Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = SmartContractsApi();
final traitAbi = traitAbi_example; // String | JSON abi of the trait.
final limit = 56; // int | max number of contracts fetch
final offset = 56; // int | index of first contract event to fetch

try {
    final result = api_instance.getContractsByTrait(traitAbi, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling SmartContractsApi->getContractsByTrait: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traitAbi** | **String**| JSON abi of the trait. | 
 **limit** | **int**| max number of contracts fetch | [optional] 
 **offset** | **int**| index of first contract event to fetch | [optional] 

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

