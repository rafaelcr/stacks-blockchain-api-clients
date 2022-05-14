//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class BlocksApi {
  BlocksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get block by burnchain block hash
  ///
  /// Retrieves block details of a specific block for a given burnchain block hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] burnBlockHash (required):
  ///   Hash of the burnchain block
  Future<Response> getBlockByBurnBlockHashWithHttpInfo(String burnBlockHash,) async {
    // Verify required params are set.
    if (burnBlockHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: burnBlockHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/block/by_burn_block_hash/{burn_block_hash}'
      .replaceAll('{burn_block_hash}', burnBlockHash);

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

  /// Get block by burnchain block hash
  ///
  /// Retrieves block details of a specific block for a given burnchain block hash
  ///
  /// Parameters:
  ///
  /// * [String] burnBlockHash (required):
  ///   Hash of the burnchain block
  Future<Object> getBlockByBurnBlockHash(String burnBlockHash,) async {
    final response = await getBlockByBurnBlockHashWithHttpInfo(burnBlockHash,);
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

  /// Get block by burnchain height
  ///
  /// Retrieves block details of a specific block for a given burn chain height
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] burnBlockHeight (required):
  ///   Height of the burn chain block
  Future<Response> getBlockByBurnBlockHeightWithHttpInfo(num burnBlockHeight,) async {
    // Verify required params are set.
    if (burnBlockHeight == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: burnBlockHeight');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/block/by_burn_block_height/{burn_block_height}'
      .replaceAll('{burn_block_height}', burnBlockHeight.toString());

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

  /// Get block by burnchain height
  ///
  /// Retrieves block details of a specific block for a given burn chain height
  ///
  /// Parameters:
  ///
  /// * [num] burnBlockHeight (required):
  ///   Height of the burn chain block
  Future<Object> getBlockByBurnBlockHeight(num burnBlockHeight,) async {
    final response = await getBlockByBurnBlockHeightWithHttpInfo(burnBlockHeight,);
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

  /// Get block by hash
  ///
  /// Retrieves block details of a specific block for a given chain height
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   Hash of the block
  Future<Response> getBlockByHashWithHttpInfo(String hash,) async {
    // Verify required params are set.
    if (hash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hash');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/block/{hash}'
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

  /// Get block by hash
  ///
  /// Retrieves block details of a specific block for a given chain height
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   Hash of the block
  Future<Block> getBlockByHash(String hash,) async {
    final response = await getBlockByHashWithHttpInfo(hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Block',) as Block;
    
    }
    return Future<Block>.value();
  }

  /// Get block by height
  ///
  /// Retrieves block details of a specific block at a given block height
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] height (required):
  ///   Height of the block
  Future<Response> getBlockByHeightWithHttpInfo(num height,) async {
    // Verify required params are set.
    if (height == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: height');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/block/by_height/{height}'
      .replaceAll('{height}', height.toString());

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

  /// Get block by height
  ///
  /// Retrieves block details of a specific block at a given block height
  ///
  /// Parameters:
  ///
  /// * [num] height (required):
  ///   Height of the block
  Future<Object> getBlockByHeight(num height,) async {
    final response = await getBlockByHeightWithHttpInfo(height,);
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

  /// Get recent blocks
  ///
  /// Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of blocks to fetch
  ///
  /// * [int] offset:
  ///   index of first block to fetch
  Future<Response> getBlockListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/block';

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

  /// Get recent blocks
  ///
  /// Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of blocks to fetch
  ///
  /// * [int] offset:
  ///   index of first block to fetch
  Future<BlockListResponse> getBlockList({ int limit, int offset, }) async {
    final response = await getBlockListWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockListResponse',) as BlockListResponse;
    
    }
    return Future<BlockListResponse>.value();
  }
}
