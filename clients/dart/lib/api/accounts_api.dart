//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class AccountsApi {
  AccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get account assets
  ///
  /// Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account assets to fetch
  ///
  /// * [int] offset:
  ///   index of first account assets to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state at that point in time, rather than the current block.
  Future<Response> getAccountAssetsWithHttpInfo(String principal, { int limit, int offset, bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/assets'
      .replaceAll('{principal}', principal);

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
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get account assets
  ///
  /// Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account assets to fetch
  ///
  /// * [int] offset:
  ///   index of first account assets to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state at that point in time, rather than the current block.
  Future<AddressAssetsListResponse> getAccountAssets(String principal, { int limit, int offset, bool unanchored, String untilBlock, }) async {
    final response = await getAccountAssetsWithHttpInfo(principal,  limit: limit, offset: offset, unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressAssetsListResponse',) as AddressAssetsListResponse;
    
    }
    return Future<AddressAssetsListResponse>.value();
  }

  /// Get account balances
  ///
  /// Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountBalanceWithHttpInfo(String principal, { bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/balances'
      .replaceAll('{principal}', principal);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get account balances
  ///
  /// Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<AddressBalanceResponse> getAccountBalance(String principal, { bool unanchored, String untilBlock, }) async {
    final response = await getAccountBalanceWithHttpInfo(principal,  unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressBalanceResponse',) as AddressBalanceResponse;
    
    }
    return Future<AddressBalanceResponse>.value();
  }

  /// Get inbound STX transfers
  ///
  /// Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   number of items to return
  ///
  /// * [int] offset:
  ///   number of items to skip
  ///
  /// * [num] height:
  ///   Filter for transfers only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountInboundWithHttpInfo(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/stx_inbound'
      .replaceAll('{principal}', principal);

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
    if (height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get inbound STX transfers
  ///
  /// Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   number of items to return
  ///
  /// * [int] offset:
  ///   number of items to skip
  ///
  /// * [num] height:
  ///   Filter for transfers only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<AddressStxInboundListResponse> getAccountInbound(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    final response = await getAccountInboundWithHttpInfo(principal,  limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressStxInboundListResponse',) as AddressStxInboundListResponse;
    
    }
    return Future<AddressStxInboundListResponse>.value();
  }

  /// Get account info
  ///
  /// Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] proof:
  ///   Returns object without the proof field if set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<Response> getAccountInfoWithHttpInfo(String principal, { int proof, String tip, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/accounts/{principal}'
      .replaceAll('{principal}', principal);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (proof != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'proof', proof));
    }
    if (tip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tip', tip));
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

  /// Get account info
  ///
  /// Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] proof:
  ///   Returns object without the proof field if set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<AccountDataResponse> getAccountInfo(String principal, { int proof, String tip, }) async {
    final response = await getAccountInfoWithHttpInfo(principal,  proof: proof, tip: tip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountDataResponse',) as AccountDataResponse;
    
    }
    return Future<AccountDataResponse>.value();
  }

  /// Get nft events
  ///
  /// **NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   number of items to return
  ///
  /// * [int] offset:
  ///   number of items to skip
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountNftWithHttpInfo(String principal, { int limit, int offset, bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/nft_events'
      .replaceAll('{principal}', principal);

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
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get nft events
  ///
  /// **NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   number of items to return
  ///
  /// * [int] offset:
  ///   number of items to skip
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<AddressNftListResponse> getAccountNft(String principal, { int limit, int offset, bool unanchored, String untilBlock, }) async {
    final response = await getAccountNftWithHttpInfo(principal,  limit: limit, offset: offset, unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressNftListResponse',) as AddressNftListResponse;
    
    }
    return Future<AddressNftListResponse>.value();
  }

  /// Get the latest nonce used by an account
  ///
  /// Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
  ///
  /// * [num] blockHeight:
  ///   Optionally get the nonce at a given block height
  ///
  /// * [String] blockHash:
  ///   Optionally get the nonce at a given block hash
  Future<Response> getAccountNoncesWithHttpInfo(String principal, { num blockHeight, String blockHash, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/nonces'
      .replaceAll('{principal}', principal);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (blockHeight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'block_height', blockHeight));
    }
    if (blockHash != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'block_hash', blockHash));
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

  /// Get the latest nonce used by an account
  ///
  /// Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0`)
  ///
  /// * [num] blockHeight:
  ///   Optionally get the nonce at a given block height
  ///
  /// * [String] blockHash:
  ///   Optionally get the nonce at a given block hash
  Future<AddressNonces> getAccountNonces(String principal, { num blockHeight, String blockHash, }) async {
    final response = await getAccountNoncesWithHttpInfo(principal,  blockHeight: blockHeight, blockHash: blockHash, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressNonces',) as AddressNonces;
    
    }
    return Future<AddressNonces>.value();
  }

  /// Get account STX balance
  ///
  /// Retrieves STX token balance for a given Address or Contract Identifier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountStxBalanceWithHttpInfo(String principal, { bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/stx'
      .replaceAll('{principal}', principal);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get account STX balance
  ///
  /// Retrieves STX token balance for a given Address or Contract Identifier.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Object> getAccountStxBalance(String principal, { bool unanchored, String untilBlock, }) async {
    final response = await getAccountStxBalanceWithHttpInfo(principal,  unanchored: unanchored, untilBlock: untilBlock, );
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

  /// Get account transactions
  ///
  /// Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first account transaction to fetch
  ///
  /// * [num] height:
  ///   Filter for transactions only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountTransactionsWithHttpInfo(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/transactions'
      .replaceAll('{principal}', principal);

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
    if (height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get account transactions
  ///
  /// Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first account transaction to fetch
  ///
  /// * [num] height:
  ///   Filter for transactions only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<AddressTransactionsListResponse> getAccountTransactions(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    final response = await getAccountTransactionsWithHttpInfo(principal,  limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressTransactionsListResponse',) as AddressTransactionsListResponse;
    
    }
    return Future<AddressTransactionsListResponse>.value();
  }

  /// Get account transactions including STX transfers for each transaction.
  ///
  /// Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first account transaction to fetch
  ///
  /// * [num] height:
  ///   Filter for transactions only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<Response> getAccountTransactionsWithTransfersWithHttpInfo(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/transactions_with_transfers'
      .replaceAll('{principal}', principal);

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
    if (height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
    }
    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
    }
    if (untilBlock != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'until_block', untilBlock));
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

  /// Get account transactions including STX transfers for each transaction.
  ///
  /// Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
  ///
  /// * [int] limit:
  ///   max number of account transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first account transaction to fetch
  ///
  /// * [num] height:
  ///   Filter for transactions only at this given block height
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  ///
  /// * [String] untilBlock:
  ///   returned data representing the state up until that point in time, rather than the current block.
  Future<AddressTransactionsWithTransfersListResponse> getAccountTransactionsWithTransfers(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock, }) async {
    final response = await getAccountTransactionsWithTransfersWithHttpInfo(principal,  limit: limit, offset: offset, height: height, unanchored: unanchored, untilBlock: untilBlock, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressTransactionsWithTransfersListResponse',) as AddressTransactionsWithTransfersListResponse;
    
    }
    return Future<AddressTransactionsWithTransfersListResponse>.value();
  }

  /// Get account transaction information for specific transaction
  ///
  /// Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a contract identifier
  ///
  /// * [String] txId (required):
  ///   Transaction id
  Future<Response> getSingleTransactionWithTransfersWithHttpInfo(String principal, String txId,) async {
    // Verify required params are set.
    if (principal == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: principal');
    }
    if (txId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: txId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{principal}/{tx_id}/with_transfers'
      .replaceAll('{principal}', principal)
      .replaceAll('{tx_id}', txId);

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

  /// Get account transaction information for specific transaction
  ///
  /// Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.
  ///
  /// Parameters:
  ///
  /// * [String] principal (required):
  ///   Stacks address or a contract identifier
  ///
  /// * [String] txId (required):
  ///   Transaction id
  Future<AddressTransactionWithTransfers> getSingleTransactionWithTransfers(String principal, String txId,) async {
    final response = await getSingleTransactionWithTransfersWithHttpInfo(principal, txId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddressTransactionWithTransfers',) as AddressTransactionWithTransfers;
    
    }
    return Future<AddressTransactionWithTransfers>.value();
  }
}
