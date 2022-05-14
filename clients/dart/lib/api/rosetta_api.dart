//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class RosettaApi {
  RosettaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get an Account Balance
  ///
  /// An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaAccountBalanceRequest] rosettaAccountBalanceRequest (required):
  Future<Response> rosettaAccountBalanceWithHttpInfo(RosettaAccountBalanceRequest rosettaAccountBalanceRequest,) async {
    // Verify required params are set.
    if (rosettaAccountBalanceRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaAccountBalanceRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/account/balance';

    // ignore: prefer_final_locals
    Object postBody = rosettaAccountBalanceRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get an Account Balance
  ///
  /// An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 
  ///
  /// Parameters:
  ///
  /// * [RosettaAccountBalanceRequest] rosettaAccountBalanceRequest (required):
  Future<RosettaAccountBalanceResponse> rosettaAccountBalance(RosettaAccountBalanceRequest rosettaAccountBalanceRequest,) async {
    final response = await rosettaAccountBalanceWithHttpInfo(rosettaAccountBalanceRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaAccountBalanceResponse',) as RosettaAccountBalanceResponse;
    
    }
    return Future<RosettaAccountBalanceResponse>.value();
  }

  /// Get a Block
  ///
  /// Retrieves the Block information for a given block identifier including a list of all transactions in the block.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaBlockRequest] rosettaBlockRequest (required):
  Future<Response> rosettaBlockWithHttpInfo(RosettaBlockRequest rosettaBlockRequest,) async {
    // Verify required params are set.
    if (rosettaBlockRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaBlockRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/block';

    // ignore: prefer_final_locals
    Object postBody = rosettaBlockRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get a Block
  ///
  /// Retrieves the Block information for a given block identifier including a list of all transactions in the block.
  ///
  /// Parameters:
  ///
  /// * [RosettaBlockRequest] rosettaBlockRequest (required):
  Future<RosettaBlockResponse> rosettaBlock(RosettaBlockRequest rosettaBlockRequest,) async {
    final response = await rosettaBlockWithHttpInfo(rosettaBlockRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaBlockResponse',) as RosettaBlockResponse;
    
    }
    return Future<RosettaBlockResponse>.value();
  }

  /// Get a Block Transaction
  ///
  /// Retrieves a Transaction included in a block that is not returned in a BlockResponse.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaBlockTransactionRequest] rosettaBlockTransactionRequest (required):
  Future<Response> rosettaBlockTransactionWithHttpInfo(RosettaBlockTransactionRequest rosettaBlockTransactionRequest,) async {
    // Verify required params are set.
    if (rosettaBlockTransactionRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaBlockTransactionRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/block/transaction';

    // ignore: prefer_final_locals
    Object postBody = rosettaBlockTransactionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get a Block Transaction
  ///
  /// Retrieves a Transaction included in a block that is not returned in a BlockResponse.
  ///
  /// Parameters:
  ///
  /// * [RosettaBlockTransactionRequest] rosettaBlockTransactionRequest (required):
  Future<RosettaBlockTransactionResponse> rosettaBlockTransaction(RosettaBlockTransactionRequest rosettaBlockTransactionRequest,) async {
    final response = await rosettaBlockTransactionWithHttpInfo(rosettaBlockTransactionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaBlockTransactionResponse',) as RosettaBlockTransactionResponse;
    
    }
    return Future<RosettaBlockTransactionResponse>.value();
  }

  /// Create Network Transaction from Signatures
  ///
  /// Take unsigned transaction and signature, combine both and return signed transaction
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionCombineRequest] rosettaConstructionCombineRequest (required):
  Future<Response> rosettaConstructionCombineWithHttpInfo(RosettaConstructionCombineRequest rosettaConstructionCombineRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionCombineRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionCombineRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/combine';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionCombineRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create Network Transaction from Signatures
  ///
  /// Take unsigned transaction and signature, combine both and return signed transaction
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionCombineRequest] rosettaConstructionCombineRequest (required):
  Future<RosettaConstructionCombineResponse> rosettaConstructionCombine(RosettaConstructionCombineRequest rosettaConstructionCombineRequest,) async {
    final response = await rosettaConstructionCombineWithHttpInfo(rosettaConstructionCombineRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionCombineResponse',) as RosettaConstructionCombineResponse;
    
    }
    return Future<RosettaConstructionCombineResponse>.value();
  }

  /// Derive an AccountIdentifier from a PublicKey
  ///
  /// Retrieves the Account Identifier information based on a Public Key for a given network
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionDeriveRequest] rosettaConstructionDeriveRequest (required):
  Future<Response> rosettaConstructionDeriveWithHttpInfo(RosettaConstructionDeriveRequest rosettaConstructionDeriveRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionDeriveRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionDeriveRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/derive';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionDeriveRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Derive an AccountIdentifier from a PublicKey
  ///
  /// Retrieves the Account Identifier information based on a Public Key for a given network
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionDeriveRequest] rosettaConstructionDeriveRequest (required):
  Future<RosettaConstructionDeriveResponse> rosettaConstructionDerive(RosettaConstructionDeriveRequest rosettaConstructionDeriveRequest,) async {
    final response = await rosettaConstructionDeriveWithHttpInfo(rosettaConstructionDeriveRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionDeriveResponse',) as RosettaConstructionDeriveResponse;
    
    }
    return Future<RosettaConstructionDeriveResponse>.value();
  }

  /// Get the Hash of a Signed Transaction
  ///
  /// Retrieves the network-specific transaction hash for a signed transaction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionHashRequest] rosettaConstructionHashRequest (required):
  Future<Response> rosettaConstructionHashWithHttpInfo(RosettaConstructionHashRequest rosettaConstructionHashRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionHashRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionHashRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/hash';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionHashRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get the Hash of a Signed Transaction
  ///
  /// Retrieves the network-specific transaction hash for a signed transaction.
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionHashRequest] rosettaConstructionHashRequest (required):
  Future<RosettaConstructionHashResponse> rosettaConstructionHash(RosettaConstructionHashRequest rosettaConstructionHashRequest,) async {
    final response = await rosettaConstructionHashWithHttpInfo(rosettaConstructionHashRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionHashResponse',) as RosettaConstructionHashResponse;
    
    }
    return Future<RosettaConstructionHashResponse>.value();
  }

  /// Get Metadata for Transaction Construction
  ///
  /// To Do
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionMetadataRequest] rosettaConstructionMetadataRequest (required):
  Future<Response> rosettaConstructionMetadataWithHttpInfo(RosettaConstructionMetadataRequest rosettaConstructionMetadataRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionMetadataRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionMetadataRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/metadata';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionMetadataRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Metadata for Transaction Construction
  ///
  /// To Do
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionMetadataRequest] rosettaConstructionMetadataRequest (required):
  Future<RosettaConstructionMetadataResponse> rosettaConstructionMetadata(RosettaConstructionMetadataRequest rosettaConstructionMetadataRequest,) async {
    final response = await rosettaConstructionMetadataWithHttpInfo(rosettaConstructionMetadataRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionMetadataResponse',) as RosettaConstructionMetadataResponse;
    
    }
    return Future<RosettaConstructionMetadataResponse>.value();
  }

  /// Parse a Transaction
  ///
  /// TODO
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionParseRequest] rosettaConstructionParseRequest (required):
  Future<Response> rosettaConstructionParseWithHttpInfo(RosettaConstructionParseRequest rosettaConstructionParseRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionParseRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionParseRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/parse';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionParseRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Parse a Transaction
  ///
  /// TODO
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionParseRequest] rosettaConstructionParseRequest (required):
  Future<RosettaConstructionParseResponse> rosettaConstructionParse(RosettaConstructionParseRequest rosettaConstructionParseRequest,) async {
    final response = await rosettaConstructionParseWithHttpInfo(rosettaConstructionParseRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionParseResponse',) as RosettaConstructionParseResponse;
    
    }
    return Future<RosettaConstructionParseResponse>.value();
  }

  /// Generate an Unsigned Transaction and Signing Payloads
  ///
  /// Generate and unsigned transaction from operations and metadata
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionPayloadsRequest] rosettaConstructionPayloadsRequest (required):
  Future<Response> rosettaConstructionPayloadsWithHttpInfo(RosettaConstructionPayloadsRequest rosettaConstructionPayloadsRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionPayloadsRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionPayloadsRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/payloads';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionPayloadsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Generate an Unsigned Transaction and Signing Payloads
  ///
  /// Generate and unsigned transaction from operations and metadata
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionPayloadsRequest] rosettaConstructionPayloadsRequest (required):
  Future<RosettaConstructionPayloadResponse> rosettaConstructionPayloads(RosettaConstructionPayloadsRequest rosettaConstructionPayloadsRequest,) async {
    final response = await rosettaConstructionPayloadsWithHttpInfo(rosettaConstructionPayloadsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionPayloadResponse',) as RosettaConstructionPayloadResponse;
    
    }
    return Future<RosettaConstructionPayloadResponse>.value();
  }

  /// Create a Request to Fetch Metadata
  ///
  /// TODO
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionPreprocessRequest] rosettaConstructionPreprocessRequest (required):
  Future<Response> rosettaConstructionPreprocessWithHttpInfo(RosettaConstructionPreprocessRequest rosettaConstructionPreprocessRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionPreprocessRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionPreprocessRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/preprocess';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionPreprocessRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create a Request to Fetch Metadata
  ///
  /// TODO
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionPreprocessRequest] rosettaConstructionPreprocessRequest (required):
  Future<RosettaConstructionPreprocessResponse> rosettaConstructionPreprocess(RosettaConstructionPreprocessRequest rosettaConstructionPreprocessRequest,) async {
    final response = await rosettaConstructionPreprocessWithHttpInfo(rosettaConstructionPreprocessRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionPreprocessResponse',) as RosettaConstructionPreprocessResponse;
    
    }
    return Future<RosettaConstructionPreprocessResponse>.value();
  }

  /// Submit a Signed Transaction
  ///
  /// Submit a pre-signed transaction to the node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionSubmitRequest] rosettaConstructionSubmitRequest (required):
  Future<Response> rosettaConstructionSubmitWithHttpInfo(RosettaConstructionSubmitRequest rosettaConstructionSubmitRequest,) async {
    // Verify required params are set.
    if (rosettaConstructionSubmitRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaConstructionSubmitRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/construction/submit';

    // ignore: prefer_final_locals
    Object postBody = rosettaConstructionSubmitRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Submit a Signed Transaction
  ///
  /// Submit a pre-signed transaction to the node.
  ///
  /// Parameters:
  ///
  /// * [RosettaConstructionSubmitRequest] rosettaConstructionSubmitRequest (required):
  Future<RosettaConstructionSubmitResponse> rosettaConstructionSubmit(RosettaConstructionSubmitRequest rosettaConstructionSubmitRequest,) async {
    final response = await rosettaConstructionSubmitWithHttpInfo(rosettaConstructionSubmitRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaConstructionSubmitResponse',) as RosettaConstructionSubmitResponse;
    
    }
    return Future<RosettaConstructionSubmitResponse>.value();
  }

  /// Get All Mempool Transactions
  ///
  /// Retrieves a list of transcations currently in the mempool for a given network.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaMempoolRequest] rosettaMempoolRequest (required):
  Future<Response> rosettaMempoolWithHttpInfo(RosettaMempoolRequest rosettaMempoolRequest,) async {
    // Verify required params are set.
    if (rosettaMempoolRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaMempoolRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/mempool';

    // ignore: prefer_final_locals
    Object postBody = rosettaMempoolRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get All Mempool Transactions
  ///
  /// Retrieves a list of transcations currently in the mempool for a given network.
  ///
  /// Parameters:
  ///
  /// * [RosettaMempoolRequest] rosettaMempoolRequest (required):
  Future<RosettaMempoolResponse> rosettaMempool(RosettaMempoolRequest rosettaMempoolRequest,) async {
    final response = await rosettaMempoolWithHttpInfo(rosettaMempoolRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaMempoolResponse',) as RosettaMempoolResponse;
    
    }
    return Future<RosettaMempoolResponse>.value();
  }

  /// Get a Mempool Transaction
  ///
  /// Retrieves transaction details from the mempool for a given transaction id from a given network.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaMempoolTransactionRequest] rosettaMempoolTransactionRequest (required):
  Future<Response> rosettaMempoolTransactionWithHttpInfo(RosettaMempoolTransactionRequest rosettaMempoolTransactionRequest,) async {
    // Verify required params are set.
    if (rosettaMempoolTransactionRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaMempoolTransactionRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/mempool/transaction';

    // ignore: prefer_final_locals
    Object postBody = rosettaMempoolTransactionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get a Mempool Transaction
  ///
  /// Retrieves transaction details from the mempool for a given transaction id from a given network.
  ///
  /// Parameters:
  ///
  /// * [RosettaMempoolTransactionRequest] rosettaMempoolTransactionRequest (required):
  Future<RosettaMempoolTransactionResponse> rosettaMempoolTransaction(RosettaMempoolTransactionRequest rosettaMempoolTransactionRequest,) async {
    final response = await rosettaMempoolTransactionWithHttpInfo(rosettaMempoolTransactionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaMempoolTransactionResponse',) as RosettaMempoolTransactionResponse;
    
    }
    return Future<RosettaMempoolTransactionResponse>.value();
  }

  /// Get List of Available Networks
  ///
  /// Retrieves a list of NetworkIdentifiers that the Rosetta server supports.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> rosettaNetworkListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/network/list';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


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

  /// Get List of Available Networks
  ///
  /// Retrieves a list of NetworkIdentifiers that the Rosetta server supports.
  Future<RosettaNetworkListResponse> rosettaNetworkList() async {
    final response = await rosettaNetworkListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaNetworkListResponse',) as RosettaNetworkListResponse;
    
    }
    return Future<RosettaNetworkListResponse>.value();
  }

  /// Get Network Options
  ///
  /// Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaOptionsRequest] rosettaOptionsRequest (required):
  Future<Response> rosettaNetworkOptionsWithHttpInfo(RosettaOptionsRequest rosettaOptionsRequest,) async {
    // Verify required params are set.
    if (rosettaOptionsRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaOptionsRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/network/options';

    // ignore: prefer_final_locals
    Object postBody = rosettaOptionsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Network Options
  ///
  /// Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 
  ///
  /// Parameters:
  ///
  /// * [RosettaOptionsRequest] rosettaOptionsRequest (required):
  Future<RosettaNetworkOptionsResponse> rosettaNetworkOptions(RosettaOptionsRequest rosettaOptionsRequest,) async {
    final response = await rosettaNetworkOptionsWithHttpInfo(rosettaOptionsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RosettaNetworkOptionsResponse',) as RosettaNetworkOptionsResponse;
    
    }
    return Future<RosettaNetworkOptionsResponse>.value();
  }

  /// Get Network Status
  ///
  /// Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RosettaStatusRequest] rosettaStatusRequest (required):
  Future<Response> rosettaNetworkStatusWithHttpInfo(RosettaStatusRequest rosettaStatusRequest,) async {
    // Verify required params are set.
    if (rosettaStatusRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: rosettaStatusRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/rosetta/v1/network/status';

    // ignore: prefer_final_locals
    Object postBody = rosettaStatusRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Network Status
  ///
  /// Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 
  ///
  /// Parameters:
  ///
  /// * [RosettaStatusRequest] rosettaStatusRequest (required):
  Future<Map<String, Object>> rosettaNetworkStatus(RosettaStatusRequest rosettaStatusRequest,) async {
    final response = await rosettaNetworkStatusWithHttpInfo(rosettaStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return Future<Map<String, Object>>.value();
  }
}
