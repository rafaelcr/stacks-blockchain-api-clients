//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class MicroblocksApi {
  MicroblocksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get microblock
  ///
  /// Retrieves a specific microblock by `hash`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   Hash of the microblock
  Future<Response> getMicroblockByHashWithHttpInfo(String hash,) async {
    // Verify required params are set.
    if (hash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hash');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/microblock/{hash}'
      .replaceAll('{hash}', hash);

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

  /// Get microblock
  ///
  /// Retrieves a specific microblock by `hash`
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   Hash of the microblock
  Future<Microblock> getMicroblockByHash(String hash,) async {
    final response = await getMicroblockByHashWithHttpInfo(hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Microblock',) as Microblock;
    
    }
    return Future<Microblock>.value();
  }

  /// Get recent microblocks
  ///
  /// Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Max number of microblocks to fetch
  ///
  /// * [int] offset:
  ///   Index of the first microblock to fetch
  Future<Response> getMicroblockListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/microblock';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
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

  /// Get recent microblocks
  ///
  /// Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Max number of microblocks to fetch
  ///
  /// * [int] offset:
  ///   Index of the first microblock to fetch
  Future<MicroblockListResponse> getMicroblockList({ int limit, int offset, }) async {
    final response = await getMicroblockListWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MicroblockListResponse',) as MicroblockListResponse;
    
    }
    return Future<MicroblockListResponse>.value();
  }

  /// Get the list of current transactions that belong to unanchored microblocks
  ///
  /// Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUnanchoredTxsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/extended/v1/microblock/unanchored/txs';

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

  /// Get the list of current transactions that belong to unanchored microblocks
  ///
  /// Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
  Future<UnanchoredTransactionListResponse> getUnanchoredTxs() async {
    final response = await getUnanchoredTxsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnanchoredTransactionListResponse',) as UnanchoredTransactionListResponse;
    
    }
    return Future<UnanchoredTransactionListResponse>.value();
  }
}
