# StacksBlockchainApi\FaucetsApi

All URIs are relative to https://stacks-node-api.mainnet.stacks.co.

Method | HTTP request | Description
------------- | ------------- | -------------
[**runFaucetBtc()**](FaucetsApi.md#runFaucetBtc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address
[**runFaucetStx()**](FaucetsApi.md#runFaucetStx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens


## `runFaucetBtc()`

```php
runFaucetBtc($address, $inline_object1): object
```

Add testnet BTC tokens to address

Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FaucetsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 2N4M94S1ZPt8HfxydXzL2P7qyzgVq7MHWts; // string | A valid testnet BTC address
$inline_object1 = new \StacksBlockchainApi\Model\InlineObject1(); // \StacksBlockchainApi\Model\InlineObject1

try {
    $result = $apiInstance->runFaucetBtc($address, $inline_object1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FaucetsApi->runFaucetBtc: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| A valid testnet BTC address |
 **inline_object1** | [**\StacksBlockchainApi\Model\InlineObject1**](../Model/InlineObject1.md)|  | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `runFaucetStx()`

```php
runFaucetStx($address, $stacking, $inline_object): \StacksBlockchainApi\Model\RunFaucetResponse
```

Get STX testnet tokens

Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new StacksBlockchainApi\Api\FaucetsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = ST3M7N9Q9HDRM7RVP1Q26P0EE69358PZZAZD7KMXQ; // string | A valid testnet STX address
$stacking = false; // bool | Request the amount of STX tokens needed for individual address stacking
$inline_object = new \StacksBlockchainApi\Model\InlineObject(); // \StacksBlockchainApi\Model\InlineObject

try {
    $result = $apiInstance->runFaucetStx($address, $stacking, $inline_object);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FaucetsApi->runFaucetStx: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**| A valid testnet STX address |
 **stacking** | **bool**| Request the amount of STX tokens needed for individual address stacking | [optional] [default to false]
 **inline_object** | [**\StacksBlockchainApi\Model\InlineObject**](../Model/InlineObject.md)|  | [optional]

### Return type

[**\StacksBlockchainApi\Model\RunFaucetResponse**](../Model/RunFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
