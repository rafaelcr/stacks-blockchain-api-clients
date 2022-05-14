# stacks_blockchain_api_client.api.NamesApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchZoneFile**](NamesApi.md#fetchzonefile) | **GET** /v1/names/{name}/zonefile | Get Zone File
[**getAllNames**](NamesApi.md#getallnames) | **GET** /v1/names | Get All Names
[**getAllNamespaces**](NamesApi.md#getallnamespaces) | **GET** /v1/namespaces | Get All Namespaces
[**getHistoricalZoneFile**](NamesApi.md#gethistoricalzonefile) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File
[**getNameHistory**](NamesApi.md#getnamehistory) | **GET** /v1/names/{name}/history | Get Name History
[**getNameInfo**](NamesApi.md#getnameinfo) | **GET** /v1/names/{name} | Get Name Details
[**getNamePrice**](NamesApi.md#getnameprice) | **GET** /v2/prices/names/{name} | Get Name Price
[**getNamesOwnedByAddress**](NamesApi.md#getnamesownedbyaddress) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address
[**getNamespaceNames**](NamesApi.md#getnamespacenames) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names
[**getNamespacePrice**](NamesApi.md#getnamespaceprice) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price


# **fetchZoneFile**
> AnyOfobjectobject fetchZoneFile(name)

Get Zone File

Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final name = bar.test; // String | fully-qualified name

try {
    final result = api_instance.fetchZoneFile(name);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->fetchZoneFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| fully-qualified name | 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNames**
> List<String> getAllNames(page)

Get All Names

Retrieves a list of all names known to the node.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final page = 23; // int | names are returned in pages of size 100, so specify the page number.

try {
    final result = api_instance.getAllNames(page);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getAllNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| names are returned in pages of size 100, so specify the page number. | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNamespaces**
> BnsGetAllNamespacesResponse getAllNamespaces()

Get All Namespaces

Retrieves a list of all namespaces known to the node.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();

try {
    final result = api_instance.getAllNamespaces();
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getAllNamespaces: $e\n');
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
> AnyOfobjectobject getHistoricalZoneFile(name, zoneFileHash)

Get Historical Zone File

Retrieves the historical zonefile specified by the username and zone hash.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final name = muneeb.id; // String | fully-qualified name
final zoneFileHash = b100a68235244b012854a95f9114695679002af9; // String | zone file hash

try {
    final result = api_instance.getHistoricalZoneFile(name, zoneFileHash);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getHistoricalZoneFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| fully-qualified name | 
 **zoneFileHash** | **String**| zone file hash | 

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNameHistory**
> Object getNameHistory(name, page)

Get Name History

Retrieves a history of all blockchain records of a registered name.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final name = muneeb.id; // String | name to query
final page = 0; // int | the page (in 20-entry pages) of the history to fetch

try {
    final result = api_instance.getNameHistory(name, page);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNameHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name to query | 
 **page** | **int**| the page (in 20-entry pages) of the history to fetch | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNameInfo**
> BnsGetNameInfoResponse getNameInfo(name)

Get Name Details

Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final name = muneeb.id; // String | fully-qualified name

try {
    final result = api_instance.getNameInfo(name);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNameInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| fully-qualified name | 

### Return type

[**BnsGetNameInfoResponse**](BnsGetNameInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamePrice**
> BnsGetNamePriceResponse getNamePrice(name)

Get Name Price

Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final name = muneeb.id; // String | the name to query price information for

try {
    final result = api_instance.getNamePrice(name);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNamePrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| the name to query price information for | 

### Return type

[**BnsGetNamePriceResponse**](BnsGetNamePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamesOwnedByAddress**
> BnsNamesOwnByAddressResponse getNamesOwnedByAddress(blockchain, address)

Get Names Owned by Address

Retrieves a list of names owned by the address provided.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final blockchain = bitcoin; // String | the layer-1 blockchain for the address
final address = 1QJQxDas5JhdiXhEbNS14iNjr8auFT96GP; // String | the address to lookup

try {
    final result = api_instance.getNamesOwnedByAddress(blockchain, address);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNamesOwnedByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String**| the layer-1 blockchain for the address | 
 **address** | **String**| the address to lookup | 

### Return type

[**BnsNamesOwnByAddressResponse**](BnsNamesOwnByAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamespaceNames**
> List<String> getNamespaceNames(tld, page)

Get Namespace Names

Retrieves a list of names within a given namespace.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final tld = id; // String | the namespace to fetch names from
final page = 23; // int | names are returned in pages of size 100, so specify the page number.

try {
    final result = api_instance.getNamespaceNames(tld, page);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNamespaceNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tld** | **String**| the namespace to fetch names from | 
 **page** | **int**| names are returned in pages of size 100, so specify the page number. | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNamespacePrice**
> BnsGetNamespacePriceResponse getNamespacePrice(tld)

Get Namespace Price

Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NamesApi();
final tld = id; // String | the namespace to fetch price for

try {
    final result = api_instance.getNamespacePrice(tld);
    print(result);
} catch (e) {
    print('Exception when calling NamesApi->getNamespacePrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tld** | **String**| the namespace to fetch price for | 

### Return type

[**BnsGetNamespacePriceResponse**](BnsGetNamespacePriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

