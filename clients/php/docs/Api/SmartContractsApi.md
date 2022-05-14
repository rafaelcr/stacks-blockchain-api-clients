# StacksBlockchainApi\SmartContractsApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**callReadOnlyFunction()**](SmartContractsApi.md#callReadOnlyFunction) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function
[**getContractById()**](SmartContractsApi.md#getContractById) | **GET** /extended/v1/contract/{contract_id} | Get contract info
[**getContractDataMapEntry()**](SmartContractsApi.md#getContractDataMapEntry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract
[**getContractEventsById()**](SmartContractsApi.md#getContractEventsById) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events
[**getContractInterface()**](SmartContractsApi.md#getContractInterface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface
[**getContractSource()**](SmartContractsApi.md#getContractSource) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source
[**getContractsByTrait()**](SmartContractsApi.md#getContractsByTrait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait


## `callReadOnlyFunction()`

```php
callReadOnlyFunction($contract_address, $contract_name, $function_name, $read_only_function_args, $tip): \StacksBlockchainApi\Model\ReadOnlyFunctionSuccessResponse
```

Call read-only function

Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format:

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_address = 'contract_address_example'; // string | Stacks address
$contract_name = 'contract_name_example'; // string | Contract name
$function_name = 'function_name_example'; // string | Function name
$read_only_function_args = new \StacksBlockchainApi\Model\ReadOnlyFunctionArgs(); // \StacksBlockchainApi\Model\ReadOnlyFunctionArgs
$tip = 'tip_example'; // string | The Stacks chain tip to query from

try {
    $result = $apiInstance->callReadOnlyFunction($contract_address, $contract_name, $function_name, $read_only_function_args, $tip);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->callReadOnlyFunction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_address** | **string**| Stacks address |
 **contract_name** | **string**| Contract name |
 **function_name** | **string**| Function name |
 **read_only_function_args** | [**\StacksBlockchainApi\Model\ReadOnlyFunctionArgs**](../Model/ReadOnlyFunctionArgs.md)|  |
 **tip** | **string**| The Stacks chain tip to query from | [optional]

### Return type

[**\StacksBlockchainApi\Model\ReadOnlyFunctionSuccessResponse**](../Model/ReadOnlyFunctionSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractById()`

```php
getContractById($contract_id, $unanchored): object
```

Get contract info

Retrieves details of a contract with a given `contract_id`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_id = 'contract_id_example'; // string | Contract identifier formatted as `<contract_address>.<contract_name>`
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getContractById($contract_id, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **string**| Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractDataMapEntry()`

```php
getContractDataMapEntry($contract_address, $contract_name, $map_name, $key, $proof, $tip): \StacksBlockchainApi\Model\MapEntryResponse
```

Get specific data-map inside a contract

Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_address = 'contract_address_example'; // string | Stacks address
$contract_name = 'contract_name_example'; // string | Contract name
$map_name = 'map_name_example'; // string | Map name
$key = 'key_example'; // string | Hex string serialization of the lookup key (which should be a Clarity value)
$proof = 56; // int | Returns object without the proof field when set to 0
$tip = 'tip_example'; // string | The Stacks chain tip to query from

try {
    $result = $apiInstance->getContractDataMapEntry($contract_address, $contract_name, $map_name, $key, $proof, $tip);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractDataMapEntry: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_address** | **string**| Stacks address |
 **contract_name** | **string**| Contract name |
 **map_name** | **string**| Map name |
 **key** | **string**| Hex string serialization of the lookup key (which should be a Clarity value) |
 **proof** | **int**| Returns object without the proof field when set to 0 | [optional]
 **tip** | **string**| The Stacks chain tip to query from | [optional]

### Return type

[**\StacksBlockchainApi\Model\MapEntryResponse**](../Model/MapEntryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractEventsById()`

```php
getContractEventsById($contract_id, $limit, $offset, $unanchored): AnyOfObjectObjectObjectObjectObject
```

Get contract events

Retrieves a list of events that have been triggered by a given `contract_id`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_id = 'contract_id_example'; // string | Contract identifier formatted as `<contract_address>.<contract_name>`
$limit = 56; // int | max number of contract events to fetch
$offset = 56; // int | index of first contract event to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks

try {
    $result = $apiInstance->getContractEventsById($contract_id, $limit, $offset, $unanchored);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractEventsById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **string**| Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; |
 **limit** | **int**| max number of contract events to fetch | [optional]
 **offset** | **int**| index of first contract event to fetch | [optional]
 **unanchored** | **bool**| Include transaction data from unanchored (i.e. unconfirmed) microblocks | [optional] [default to false]

### Return type

[**AnyOfObjectObjectObjectObjectObject**](../Model/AnyOfObjectObjectObjectObjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractInterface()`

```php
getContractInterface($contract_address, $contract_name, $tip): \StacksBlockchainApi\Model\ContractInterfaceResponse
```

Get contract interface

Retrieves a contract interface with a given `contract_address` and `contract name`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_address = 'contract_address_example'; // string | Stacks address
$contract_name = 'contract_name_example'; // string | Contract name
$tip = 'tip_example'; // string | The Stacks chain tip to query from

try {
    $result = $apiInstance->getContractInterface($contract_address, $contract_name, $tip);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractInterface: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_address** | **string**| Stacks address |
 **contract_name** | **string**| Contract name |
 **tip** | **string**| The Stacks chain tip to query from | [optional]

### Return type

[**\StacksBlockchainApi\Model\ContractInterfaceResponse**](../Model/ContractInterfaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractSource()`

```php
getContractSource($contract_address, $contract_name, $proof, $tip): \StacksBlockchainApi\Model\ContractSourceResponse
```

Get contract source

Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$contract_address = 'contract_address_example'; // string | Stacks address
$contract_name = 'contract_name_example'; // string | Contract name
$proof = 56; // int | Returns object without the proof field if set to 0
$tip = 'tip_example'; // string | The Stacks chain tip to query from

try {
    $result = $apiInstance->getContractSource($contract_address, $contract_name, $proof, $tip);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractSource: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_address** | **string**| Stacks address |
 **contract_name** | **string**| Contract name |
 **proof** | **int**| Returns object without the proof field if set to 0 | [optional]
 **tip** | **string**| The Stacks chain tip to query from | [optional]

### Return type

[**\StacksBlockchainApi\Model\ContractSourceResponse**](../Model/ContractSourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getContractsByTrait()`

```php
getContractsByTrait($trait_abi, $limit, $offset): \StacksBlockchainApi\Model\ContractListResponse
```

Get contracts by trait

Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\SmartContractsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$trait_abi = 'trait_abi_example'; // string | JSON abi of the trait.
$limit = 56; // int | max number of contracts fetch
$offset = 56; // int | index of first contract event to fetch

try {
    $result = $apiInstance->getContractsByTrait($trait_abi, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SmartContractsApi->getContractsByTrait: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trait_abi** | **string**| JSON abi of the trait. |
 **limit** | **int**| max number of contracts fetch | [optional]
 **offset** | **int**| index of first contract event to fetch | [optional]

### Return type

[**\StacksBlockchainApi\Model\ContractListResponse**](../Model/ContractListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
