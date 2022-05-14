//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class StackingRewardsApi {
  StackingRewardsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get recent burnchain reward recipients
  ///
  /// Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of rewards to fetch
  ///
  /// * [int] offset:
  ///   index of first rewards to fetch
  Future<Response> getBurnchainRewardListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/burnchain/rewards';

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

  /// Get recent burnchain reward recipients
  ///
  /// Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of rewards to fetch
  ///
  /// * [int] offset:
  ///   index of first rewards to fetch
  Future<BurnchainRewardListResponse> getBurnchainRewardList({ int limit, int offset, }) async {
    final response = await getBurnchainRewardListWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BurnchainRewardListResponse',) as BurnchainRewardListResponse;
    
    }
    return Future<BurnchainRewardListResponse>.value();
  }

  /// Get recent burnchain reward for the given recipient
  ///
  /// Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  ///
  /// * [int] limit:
  ///   max number of rewards to fetch
  ///
  /// * [int] offset:
  ///   index of first rewards to fetch
  Future<Response> getBurnchainRewardListByAddressWithHttpInfo(String address, { int limit, int offset, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/burnchain/rewards/{address}'
      .replaceAll('{address}', address);

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

  /// Get recent burnchain reward for the given recipient
  ///
  /// Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  ///
  /// * [int] limit:
  ///   max number of rewards to fetch
  ///
  /// * [int] offset:
  ///   index of first rewards to fetch
  Future<Object> getBurnchainRewardListByAddress(String address, { int limit, int offset, }) async {
    final response = await getBurnchainRewardListByAddressWithHttpInfo(address,  limit: limit, offset: offset, );
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

  /// Get recent reward slot holders
  ///
  /// Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of items to fetch
  ///
  /// * [int] offset:
  ///   index of the first items to fetch
  Future<Response> getBurnchainRewardSlotHoldersWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/burnchain/reward_slot_holders';

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

  /// Get recent reward slot holders
  ///
  /// Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of items to fetch
  ///
  /// * [int] offset:
  ///   index of the first items to fetch
  Future<BurnchainRewardSlotHolderListResponse> getBurnchainRewardSlotHolders({ int limit, int offset, }) async {
    final response = await getBurnchainRewardSlotHoldersWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BurnchainRewardSlotHolderListResponse',) as BurnchainRewardSlotHolderListResponse;
    
    }
    return Future<BurnchainRewardSlotHolderListResponse>.value();
  }

  /// Get recent reward slot holder entries for the given address
  ///
  /// Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  ///
  /// * [int] limit:
  ///   max number of items to fetch
  ///
  /// * [int] offset:
  ///   index of the first items to fetch
  Future<Response> getBurnchainRewardSlotHoldersByAddressWithHttpInfo(String address, { int limit, int offset, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/burnchain/reward_slot_holders/{address}'
      .replaceAll('{address}', address);

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

  /// Get recent reward slot holder entries for the given address
  ///
  /// Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward slot holder recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  ///
  /// * [int] limit:
  ///   max number of items to fetch
  ///
  /// * [int] offset:
  ///   index of the first items to fetch
  Future<Object> getBurnchainRewardSlotHoldersByAddress(String address, { int limit, int offset, }) async {
    final response = await getBurnchainRewardSlotHoldersByAddressWithHttpInfo(address,  limit: limit, offset: offset, );
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

  /// Get total burnchain rewards for the given recipient
  ///
  /// Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  Future<Response> getBurnchainRewardsTotalByAddressWithHttpInfo(String address,) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/burnchain/rewards/{address}/total'
      .replaceAll('{address}', address);

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

  /// Get total burnchain rewards for the given recipient
  ///
  /// Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Reward recipient address. Should either be in the native burnchain's format (e.g. B58 for Bitcoin), or if a STX principal address is provided it will be encoded as into the equivalent burnchain format
  Future<BurnchainRewardsTotal> getBurnchainRewardsTotalByAddress(String address,) async {
    final response = await getBurnchainRewardsTotalByAddressWithHttpInfo(address,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BurnchainRewardsTotal',) as BurnchainRewardsTotal;
    
    }
    return Future<BurnchainRewardsTotal>.value();
  }
}
