//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class FungibleTokensApi {
  FungibleTokensApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fungible tokens metadata for contract id
  ///
  /// Retrieves the metadata for fungible tokens for a given contract id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   token's contract id
  Future<Response> getContractFtMetadataWithHttpInfo(String contractId,) async {
    // Verify required params are set.
    if (contractId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/{contractId}/ft/metadata'
      .replaceAll('{contractId}', contractId);

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

  /// Fungible tokens metadata for contract id
  ///
  /// Retrieves the metadata for fungible tokens for a given contract id
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   token's contract id
  Future<FungibleTokenMetadata> getContractFtMetadata(String contractId,) async {
    final response = await getContractFtMetadataWithHttpInfo(contractId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FungibleTokenMetadata',) as FungibleTokenMetadata;
    
    }
    return Future<FungibleTokenMetadata>.value();
  }

  /// Fungible tokens metadata list
  ///
  /// Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of tokens to fetch
  ///
  /// * [int] offset:
  ///   index of first tokens to fetch
  Future<Response> getFtMetadataListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/ft/metadata';

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

  /// Fungible tokens metadata list
  ///
  /// Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of tokens to fetch
  ///
  /// * [int] offset:
  ///   index of first tokens to fetch
  Future<FungibleTokensMetadataList> getFtMetadataList({ int limit, int offset, }) async {
    final response = await getFtMetadataListWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FungibleTokensMetadataList',) as FungibleTokensMetadataList;
    
    }
    return Future<FungibleTokensMetadataList>.value();
  }
}
