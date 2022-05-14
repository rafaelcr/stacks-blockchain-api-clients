//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class SearchApi {
  SearchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search
  ///
  /// Search blocks, transactions, contracts, or accounts by hash/ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The hex hash string for a block or transaction, account address, or contract address
  ///
  /// * [bool] includeMetadata:
  ///   This includes the detailed data for purticular hash in the response
  Future<Response> searchByIdWithHttpInfo(String id, { bool includeMetadata, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/search/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeMetadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include_metadata', includeMetadata));
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

  /// Search
  ///
  /// Search blocks, transactions, contracts, or accounts by hash/ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The hex hash string for a block or transaction, account address, or contract address
  ///
  /// * [bool] includeMetadata:
  ///   This includes the detailed data for purticular hash in the response
  Future<AnyOfobjectobject> searchById(String id, { bool includeMetadata, }) async {
    final response = await searchByIdWithHttpInfo(id,  includeMetadata: includeMetadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnyOfobjectobject',) as AnyOfobjectobject;
    
    }
    return Future<AnyOfobjectobject>.value();
  }
}
