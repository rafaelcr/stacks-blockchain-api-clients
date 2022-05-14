# stacks_blockchain_api_client.api.NonFungibleTokensApi

## Load the API package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContractNftMetadata**](NonFungibleTokensApi.md#getcontractnftmetadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id
[**getNftHistory**](NonFungibleTokensApi.md#getnfthistory) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history
[**getNftHoldings**](NonFungibleTokensApi.md#getnftholdings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings
[**getNftMetadataList**](NonFungibleTokensApi.md#getnftmetadatalist) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list
[**getNftMints**](NonFungibleTokensApi.md#getnftmints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints


# **getContractNftMetadata**
> NonFungibleTokenMetadata getContractNftMetadata(contractId)

Non fungible tokens metadata for contract id

Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NonFungibleTokensApi();
final contractId = contractId_example; // String | token's contract id

try {
    final result = api_instance.getContractNftMetadata(contractId);
    print(result);
} catch (e) {
    print('Exception when calling NonFungibleTokensApi->getContractNftMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **String**| token's contract id | 

### Return type

[**NonFungibleTokenMetadata**](NonFungibleTokenMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftHistory**
> NonFungibleTokenHistoryEventList getNftHistory(assetIdentifier, value, limit, offset, unanchored, txMetadata)

Non-Fungible Token history

Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NonFungibleTokensApi();
final assetIdentifier = SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild; // String | token asset class identifier
final value = 0x0100000000000000000000000000000803; // String | hex representation of the token's unique value
final limit = 56; // int | max number of events to fetch
final offset = 56; // int | index of first event to fetch
final unanchored = true; // bool | whether or not to include events from unconfirmed transactions
final txMetadata = true; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    final result = api_instance.getNftHistory(assetIdentifier, value, limit, offset, unanchored, txMetadata);
    print(result);
} catch (e) {
    print('Exception when calling NonFungibleTokensApi->getNftHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdentifier** | **String**| token asset class identifier | 
 **value** | **String**| hex representation of the token's unique value | 
 **limit** | **int**| max number of events to fetch | [optional] [default to 50]
 **offset** | **int**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **bool**| whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHistoryEventList**](NonFungibleTokenHistoryEventList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftHoldings**
> NonFungibleTokenHoldingsList getNftHoldings(principal, assetIdentifiers, limit, offset, unanchored, txMetadata)

Non-Fungible Token holdings

Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NonFungibleTokensApi();
final principal = SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S.marketplace-v3; // String | token owner's STX address or Smart Contract ID
final assetIdentifiers = [SPQZF23W7SEYBFG5JQ496NMY0G7379SRYEDREMSV.Candy::candy]; // List<String> | identifiers of the token asset classes to filter for
final limit = 56; // int | max number of tokens to fetch
final offset = 56; // int | index of first tokens to fetch
final unanchored = true; // bool | whether or not to include tokens from unconfirmed transactions
final txMetadata = true; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    final result = api_instance.getNftHoldings(principal, assetIdentifiers, limit, offset, unanchored, txMetadata);
    print(result);
} catch (e) {
    print('Exception when calling NonFungibleTokensApi->getNftHoldings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| token owner's STX address or Smart Contract ID | 
 **assetIdentifiers** | [**List<String>**](String.md)| identifiers of the token asset classes to filter for | [optional] [default to const []]
 **limit** | **int**| max number of tokens to fetch | [optional] [default to 50]
 **offset** | **int**| index of first tokens to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include tokens from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **bool**| whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenHoldingsList**](NonFungibleTokenHoldingsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftMetadataList**
> NonFungibleTokensMetadataList getNftMetadataList(limit, offset)

Non fungible tokens metadata list

Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NonFungibleTokensApi();
final limit = 56; // int | max number of tokens to fetch
final offset = 56; // int | index of first tokens to fetch

try {
    final result = api_instance.getNftMetadataList(limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling NonFungibleTokensApi->getNftMetadataList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| max number of tokens to fetch | [optional] 
 **offset** | **int**| index of first tokens to fetch | [optional] 

### Return type

[**NonFungibleTokensMetadataList**](NonFungibleTokensMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftMints**
> NonFungibleTokenMintList getNftMints(assetIdentifier, limit, offset, unanchored, txMetadata)

Non-Fungible Token mints

Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 

### Example
```dart
import 'package:stacks_blockchain_api_client/api.dart';

final api_instance = NonFungibleTokensApi();
final assetIdentifier = SP2X0TZ59D5SZ8ACQ6YMCHHNR2ZN51Z32E2CJ173.the-explorer-guild::The-Explorer-Guild; // String | token asset class identifier
final limit = 56; // int | max number of events to fetch
final offset = 56; // int | index of first event to fetch
final unanchored = true; // bool | whether or not to include events from unconfirmed transactions
final txMetadata = true; // bool | whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.

try {
    final result = api_instance.getNftMints(assetIdentifier, limit, offset, unanchored, txMetadata);
    print(result);
} catch (e) {
    print('Exception when calling NonFungibleTokensApi->getNftMints: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdentifier** | **String**| token asset class identifier | 
 **limit** | **int**| max number of events to fetch | [optional] [default to 50]
 **offset** | **int**| index of first event to fetch | [optional] [default to 0]
 **unanchored** | **bool**| whether or not to include events from unconfirmed transactions | [optional] [default to false]
 **txMetadata** | **bool**| whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times. | [optional] [default to false]

### Return type

[**NonFungibleTokenMintList**](NonFungibleTokenMintList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

