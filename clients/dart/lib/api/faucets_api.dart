//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class FaucetsApi {
  FaucetsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add testnet BTC tokens to address
  ///
  /// Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   A valid testnet BTC address
  ///
  /// * [InlineObject1] inlineObject1:
  Future<Response> runFaucetBtcWithHttpInfo(String address, { InlineObject1 inlineObject1, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/faucets/btc';

    // ignore: prefer_final_locals
    Object postBody = inlineObject1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'address', address));

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Add testnet BTC tokens to address
  ///
  /// Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   A valid testnet BTC address
  ///
  /// * [InlineObject1] inlineObject1:
  Future<Object> runFaucetBtc(String address, { InlineObject1 inlineObject1, }) async {
    final response = await runFaucetBtcWithHttpInfo(address,  inlineObject1: inlineObject1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return Future<Object>.value();
  }

  /// Get STX testnet tokens
  ///
  /// Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   A valid testnet STX address
  ///
  /// * [bool] stacking:
  ///   Request the amount of STX tokens needed for individual address stacking
  ///
  /// * [InlineObject] inlineObject:
  Future<Response> runFaucetStxWithHttpInfo(String address, { bool stacking, InlineObject inlineObject, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/faucets/stx';

    // ignore: prefer_final_locals
    Object postBody = inlineObject;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'address', address));
    if (stacking != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'stacking', stacking));
    }

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get STX testnet tokens
  ///
  /// Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   A valid testnet STX address
  ///
  /// * [bool] stacking:
  ///   Request the amount of STX tokens needed for individual address stacking
  ///
  /// * [InlineObject] inlineObject:
  Future<RunFaucetResponse> runFaucetStx(String address, { bool stacking, InlineObject inlineObject, }) async {
    final response = await runFaucetStxWithHttpInfo(address,  stacking: stacking, inlineObject: inlineObject, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunFaucetResponse',) as RunFaucetResponse;
    
    }
    return Future<RunFaucetResponse>.value();
  }
}
