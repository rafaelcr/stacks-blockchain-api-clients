//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class InfoApi {
  InfoApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Core API info
  ///
  /// Retrieves information about the Core API including the server version
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCoreApiInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v2/info';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get Core API info
  ///
  /// Retrieves information about the Core API including the server version
  Future<CoreNodeInfoResponse> getCoreApiInfo() async {
    final response = await getCoreApiInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoreNodeInfoResponse',) as CoreNodeInfoResponse;
    
    }
    return Future<CoreNodeInfoResponse>.value();
  }

  /// Get a given network's target block time
  ///
  /// Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   Which network to retrieve the target block time of
  Future<Response> getNetworkBlockTimeByNetworkWithHttpInfo(String network,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/info/network_block_time/{network}'
      .replaceAll('{network}', network);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get a given network's target block time
  ///
  /// Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   Which network to retrieve the target block time of
  Future<Object> getNetworkBlockTimeByNetwork(String network,) async {
    final response = await getNetworkBlockTimeByNetworkWithHttpInfo(network,);
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

  /// Get the network target block time
  ///
  /// Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNetworkBlockTimesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/extended/v1/info/network_block_times';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the network target block time
  ///
  /// Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
  Future<NetworkBlockTimesResponse> getNetworkBlockTimes() async {
    final response = await getNetworkBlockTimesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NetworkBlockTimesResponse',) as NetworkBlockTimesResponse;
    
    }
    return Future<NetworkBlockTimesResponse>.value();
  }

  /// Get Proof-of-Transfer details
  ///
  /// Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPoxInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v2/pox';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get Proof-of-Transfer details
  ///
  /// Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.
  Future<CoreNodePoxResponse> getPoxInfo() async {
    final response = await getPoxInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoreNodePoxResponse',) as CoreNodePoxResponse;
    
    }
    return Future<CoreNodePoxResponse>.value();
  }

  /// API status
  ///
  /// Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/extended/v1/status';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// API status
  ///
  /// Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.
  Future<ServerStatusResponse> getStatus() async {
    final response = await getStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServerStatusResponse',) as ServerStatusResponse;
    
    }
    return Future<ServerStatusResponse>.value();
  }

  /// Get total and unlocked STX supply
  ///
  /// Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] height:
  ///   The block height at which to query supply details from, if not provided then the latest block height is used
  Future<Response> getStxSupplyWithHttpInfo({ num height, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/stx_supply';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get total and unlocked STX supply
  ///
  /// Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).
  ///
  /// Parameters:
  ///
  /// * [num] height:
  ///   The block height at which to query supply details from, if not provided then the latest block height is used
  Future<GetStxSupplyResponse> getStxSupply({ num height, }) async {
    final response = await getStxSupplyWithHttpInfo( height: height, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetStxSupplyResponse',) as GetStxSupplyResponse;
    
    }
    return Future<GetStxSupplyResponse>.value();
  }

  /// Get circulating STX supply in plain text format
  ///
  /// Retrieves the STX tokens currently in circulation that have been unlocked as plain text.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStxSupplyCirculatingPlainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/extended/v1/stx_supply/circulating/plain';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get circulating STX supply in plain text format
  ///
  /// Retrieves the STX tokens currently in circulation that have been unlocked as plain text.
  Future<String> getStxSupplyCirculatingPlain() async {
    final response = await getStxSupplyCirculatingPlainWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Get total STX supply in plain text format
  ///
  /// Retrieves the total supply for STX tokens as plain text.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStxSupplyTotalSupplyPlainWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/extended/v1/stx_supply/total/plain';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get total STX supply in plain text format
  ///
  /// Retrieves the total supply for STX tokens as plain text.
  Future<String> getStxSupplyTotalSupplyPlain() async {
    final response = await getStxSupplyTotalSupplyPlainWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
  ///
  /// Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] height:
  ///   The block height at which to query supply details from, if not provided then the latest block height is used
  Future<Response> getTotalStxSupplyLegacyFormatWithHttpInfo({ num height, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/stx_supply/legacy_format';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
  ///
  /// Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.
  ///
  /// Parameters:
  ///
  /// * [num] height:
  ///   The block height at which to query supply details from, if not provided then the latest block height is used
  Future<GetStxSupplyLegacyFormatResponse> getTotalStxSupplyLegacyFormat({ num height, }) async {
    final response = await getTotalStxSupplyLegacyFormatWithHttpInfo( height: height, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetStxSupplyLegacyFormatResponse',) as GetStxSupplyLegacyFormatResponse;
    
    }
    return Future<GetStxSupplyLegacyFormatResponse>.value();
  }
}
