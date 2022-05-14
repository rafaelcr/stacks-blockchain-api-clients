//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class NonFungibleTokensApi {
  NonFungibleTokensApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Non fungible tokens metadata for contract id
  ///
  /// Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   token's contract id
  Future<Response> getContractNftMetadataWithHttpInfo(String contractId,) async {
    // Verify required params are set.
    if (contractId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/{contractId}/nft/metadata'
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

  /// Non fungible tokens metadata for contract id
  ///
  /// Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   token's contract id
  Future<NonFungibleTokenMetadata> getContractNftMetadata(String contractId,) async {
    final response = await getContractNftMetadataWithHttpInfo(contractId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonFungibleTokenMetadata',) as NonFungibleTokenMetadata;
    
    }
    return Future<NonFungibleTokenMetadata>.value();
  }

  /// Non-Fungible Token history
  ///
  /// Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetIdentifier (required):
  ///   token asset class identifier
  ///
  /// * [String] value (required):
  ///   hex representation of the token's unique value
  ///
  /// * [int] limit:
  ///   max number of events to fetch
  ///
  /// * [int] offset:
  ///   index of first event to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include events from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<Response> getNftHistoryWithHttpInfo(String assetIdentifier, String value, { int limit, int offset, bool unanchored, bool txMetadata, }) async {
    // Verify required params are set.
    if (assetIdentifier == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: assetIdentifier');
    }
    if (value == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: value');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/nft/history';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'asset_identifier', assetIdentifier));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'value', value));
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (txMetadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tx_metadata', txMetadata));
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

  /// Non-Fungible Token history
  ///
  /// Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Parameters:
  ///
  /// * [String] assetIdentifier (required):
  ///   token asset class identifier
  ///
  /// * [String] value (required):
  ///   hex representation of the token's unique value
  ///
  /// * [int] limit:
  ///   max number of events to fetch
  ///
  /// * [int] offset:
  ///   index of first event to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include events from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<NonFungibleTokenHistoryEventList> getNftHistory(String assetIdentifier, String value, { int limit, int offset, bool unanchored, bool txMetadata, }) async {
    final response = await getNftHistoryWithHttpInfo(assetIdentifier, value,  limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonFungibleTokenHistoryEventList',) as NonFungibleTokenHistoryEventList;
    
    }
    return Future<NonFungibleTokenHistoryEventList>.value();
  }

  /// Non-Fungible Token holdings
  ///
  /// Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   token owner's STX address or Smart Contract ID
  ///
  /// * [List<String>] assetIdentifiers:
  ///   identifiers of the token asset classes to filter for
  ///
  /// * [int] limit:
  ///   max number of tokens to fetch
  ///
  /// * [int] offset:
  ///   index of first tokens to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include tokens from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<Response> getNftHoldingsWithHttpInfo(String principal, { List<String> assetIdentifiers, int limit, int offset, bool unanchored, bool txMetadata, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/nft/holdings';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'principal', principal));
    if (assetIdentifiers != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'asset_identifiers', assetIdentifiers));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (txMetadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tx_metadata', txMetadata));
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

  /// Non-Fungible Token holdings
  ///
  /// Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   token owner's STX address or Smart Contract ID
  ///
  /// * [List<String>] assetIdentifiers:
  ///   identifiers of the token asset classes to filter for
  ///
  /// * [int] limit:
  ///   max number of tokens to fetch
  ///
  /// * [int] offset:
  ///   index of first tokens to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include tokens from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<NonFungibleTokenHoldingsList> getNftHoldings(String principal, { List<String> assetIdentifiers, int limit, int offset, bool unanchored, bool txMetadata, }) async {
    final response = await getNftHoldingsWithHttpInfo(principal,  assetIdentifiers: assetIdentifiers, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonFungibleTokenHoldingsList',) as NonFungibleTokenHoldingsList;
    
    }
    return Future<NonFungibleTokenHoldingsList>.value();
  }

  /// Non fungible tokens metadata list
  ///
  /// Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
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
  Future<Response> getNftMetadataListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/nft/metadata';

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

  /// Non fungible tokens metadata list
  ///
  /// Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of tokens to fetch
  ///
  /// * [int] offset:
  ///   index of first tokens to fetch
  Future<NonFungibleTokensMetadataList> getNftMetadataList({ int limit, int offset, }) async {
    final response = await getNftMetadataListWithHttpInfo( limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonFungibleTokensMetadataList',) as NonFungibleTokensMetadataList;
    
    }
    return Future<NonFungibleTokensMetadataList>.value();
  }

  /// Non-Fungible Token mints
  ///
  /// Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetIdentifier (required):
  ///   token asset class identifier
  ///
  /// * [int] limit:
  ///   max number of events to fetch
  ///
  /// * [int] offset:
  ///   index of first event to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include events from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<Response> getNftMintsWithHttpInfo(String assetIdentifier, { int limit, int offset, bool unanchored, bool txMetadata, }) async {
    // Verify required params are set.
    if (assetIdentifier == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: assetIdentifier');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tokens/nft/mints';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'asset_identifier', assetIdentifier));
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (txMetadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tx_metadata', txMetadata));
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

  /// Non-Fungible Token mints
  ///
  /// Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
  ///
  /// Parameters:
  ///
  /// * [String] assetIdentifier (required):
  ///   token asset class identifier
  ///
  /// * [int] limit:
  ///   max number of events to fetch
  ///
  /// * [int] offset:
  ///   index of first event to fetch
  ///
  /// * [bool] unanchored:
  ///   whether or not to include events from unconfirmed transactions
  ///
  /// * [bool] txMetadata:
  ///   whether or not to include the complete transaction metadata instead of just `tx_id`. Enabling this option can affect performance and response times.
  Future<NonFungibleTokenMintList> getNftMints(String assetIdentifier, { int limit, int offset, bool unanchored, bool txMetadata, }) async {
    final response = await getNftMintsWithHttpInfo(assetIdentifier,  limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonFungibleTokenMintList',) as NonFungibleTokenMintList;
    
    }
    return Future<NonFungibleTokenMintList>.value();
  }
}
