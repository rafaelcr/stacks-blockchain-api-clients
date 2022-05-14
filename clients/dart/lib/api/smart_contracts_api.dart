//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class SmartContractsApi {
  SmartContractsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Call read-only function
  ///
  /// Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] functionName (required):
  ///   Function name
  ///
  /// * [ReadOnlyFunctionArgs] readOnlyFunctionArgs (required):
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<Response> callReadOnlyFunctionWithHttpInfo(String contractAddress, String contractName, String functionName, ReadOnlyFunctionArgs readOnlyFunctionArgs, { String tip, }) async {
    // Verify required params are set.
    if (contractAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractAddress');
    }
    if (contractName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractName');
    }
    if (functionName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: functionName');
    }
    if (readOnlyFunctionArgs == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: readOnlyFunctionArgs');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/contracts/call-read/{contract_address}/{contract_name}/{function_name}'
      .replaceAll('{contract_address}', contractAddress)
      .replaceAll('{contract_name}', contractName)
      .replaceAll('{function_name}', functionName);

    // ignore: prefer_final_locals
    Object postBody = readOnlyFunctionArgs;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tip', tip));
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

  /// Call read-only function
  ///
  /// Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] functionName (required):
  ///   Function name
  ///
  /// * [ReadOnlyFunctionArgs] readOnlyFunctionArgs (required):
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<ReadOnlyFunctionSuccessResponse> callReadOnlyFunction(String contractAddress, String contractName, String functionName, ReadOnlyFunctionArgs readOnlyFunctionArgs, { String tip, }) async {
    final response = await callReadOnlyFunctionWithHttpInfo(contractAddress, contractName, functionName, readOnlyFunctionArgs,  tip: tip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadOnlyFunctionSuccessResponse',) as ReadOnlyFunctionSuccessResponse;
    
    }
    return Future<ReadOnlyFunctionSuccessResponse>.value();
  }

  /// Get contract info
  ///
  /// Retrieves details of a contract with a given `contract_id`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   Contract identifier formatted as `<contract_address>.<contract_name>`
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getContractByIdWithHttpInfo(String contractId, { bool unanchored, }) async {
    // Verify required params are set.
    if (contractId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/contract/{contract_id}'
      .replaceAll('{contract_id}', contractId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (unanchored != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unanchored', unanchored));
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

  /// Get contract info
  ///
  /// Retrieves details of a contract with a given `contract_id`
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   Contract identifier formatted as `<contract_address>.<contract_name>`
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Object> getContractById(String contractId, { bool unanchored, }) async {
    final response = await getContractByIdWithHttpInfo(contractId,  unanchored: unanchored, );
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

  /// Get specific data-map inside a contract
  ///
  /// Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] mapName (required):
  ///   Map name
  ///
  /// * [String] key (required):
  ///   Hex string serialization of the lookup key (which should be a Clarity value)
  ///
  /// * [int] proof:
  ///   Returns object without the proof field when set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<Response> getContractDataMapEntryWithHttpInfo(String contractAddress, String contractName, String mapName, String key, { int proof, String tip, }) async {
    // Verify required params are set.
    if (contractAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractAddress');
    }
    if (contractName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractName');
    }
    if (mapName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mapName');
    }
    if (key == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: key');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/map_entry/{contract_address}/{contract_name}/{map_name}'
      .replaceAll('{contract_address}', contractAddress)
      .replaceAll('{contract_name}', contractName)
      .replaceAll('{map_name}', mapName);

    // ignore: prefer_final_locals
    Object postBody = key;

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

  /// Get specific data-map inside a contract
  ///
  /// Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] mapName (required):
  ///   Map name
  ///
  /// * [String] key (required):
  ///   Hex string serialization of the lookup key (which should be a Clarity value)
  ///
  /// * [int] proof:
  ///   Returns object without the proof field when set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<MapEntryResponse> getContractDataMapEntry(String contractAddress, String contractName, String mapName, String key, { int proof, String tip, }) async {
    final response = await getContractDataMapEntryWithHttpInfo(contractAddress, contractName, mapName, key,  proof: proof, tip: tip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MapEntryResponse',) as MapEntryResponse;
    
    }
    return Future<MapEntryResponse>.value();
  }

  /// Get contract events
  ///
  /// Retrieves a list of events that have been triggered by a given `contract_id`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   Contract identifier formatted as `<contract_address>.<contract_name>`
  ///
  /// * [int] limit:
  ///   max number of contract events to fetch
  ///
  /// * [int] offset:
  ///   index of first contract event to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getContractEventsByIdWithHttpInfo(String contractId, { int limit, int offset, bool unanchored, }) async {
    // Verify required params are set.
    if (contractId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/contract/{contract_id}/events'
      .replaceAll('{contract_id}', contractId);

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

  /// Get contract events
  ///
  /// Retrieves a list of events that have been triggered by a given `contract_id`
  ///
  /// Parameters:
  ///
  /// * [String] contractId (required):
  ///   Contract identifier formatted as `<contract_address>.<contract_name>`
  ///
  /// * [int] limit:
  ///   max number of contract events to fetch
  ///
  /// * [int] offset:
  ///   index of first contract event to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<AnyOfobjectobjectobjectobjectobject> getContractEventsById(String contractId, { int limit, int offset, bool unanchored, }) async {
    final response = await getContractEventsByIdWithHttpInfo(contractId,  limit: limit, offset: offset, unanchored: unanchored, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnyOfobjectobjectobjectobjectobject',) as AnyOfobjectobjectobjectobjectobject;
    
    }
    return Future<AnyOfobjectobjectobjectobjectobject>.value();
  }

  /// Get contract interface
  ///
  /// Retrieves a contract interface with a given `contract_address` and `contract name`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<Response> getContractInterfaceWithHttpInfo(String contractAddress, String contractName, { String tip, }) async {
    // Verify required params are set.
    if (contractAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractAddress');
    }
    if (contractName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractName');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/contracts/interface/{contract_address}/{contract_name}'
      .replaceAll('{contract_address}', contractAddress)
      .replaceAll('{contract_name}', contractName);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get contract interface
  ///
  /// Retrieves a contract interface with a given `contract_address` and `contract name`
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<ContractInterfaceResponse> getContractInterface(String contractAddress, String contractName, { String tip, }) async {
    final response = await getContractInterfaceWithHttpInfo(contractAddress, contractName,  tip: tip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContractInterfaceResponse',) as ContractInterfaceResponse;
    
    }
    return Future<ContractInterfaceResponse>.value();
  }

  /// Get contract source
  ///
  /// Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [int] proof:
  ///   Returns object without the proof field if set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<Response> getContractSourceWithHttpInfo(String contractAddress, String contractName, { int proof, String tip, }) async {
    // Verify required params are set.
    if (contractAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractAddress');
    }
    if (contractName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contractName');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/contracts/source/{contract_address}/{contract_name}'
      .replaceAll('{contract_address}', contractAddress)
      .replaceAll('{contract_name}', contractName);

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

  /// Get contract source
  ///
  /// Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data
  ///
  /// Parameters:
  ///
  /// * [String] contractAddress (required):
  ///   Stacks address
  ///
  /// * [String] contractName (required):
  ///   Contract name
  ///
  /// * [int] proof:
  ///   Returns object without the proof field if set to 0
  ///
  /// * [String] tip:
  ///   The Stacks chain tip to query from
  Future<ContractSourceResponse> getContractSource(String contractAddress, String contractName, { int proof, String tip, }) async {
    final response = await getContractSourceWithHttpInfo(contractAddress, contractName,  proof: proof, tip: tip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContractSourceResponse',) as ContractSourceResponse;
    
    }
    return Future<ContractSourceResponse>.value();
  }

  /// Get contracts by trait
  ///
  /// Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traitAbi (required):
  ///   JSON abi of the trait.
  ///
  /// * [int] limit:
  ///   max number of contracts fetch
  ///
  /// * [int] offset:
  ///   index of first contract event to fetch
  Future<Response> getContractsByTraitWithHttpInfo(String traitAbi, { int limit, int offset, }) async {
    // Verify required params are set.
    if (traitAbi == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: traitAbi');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/contract/by_trait';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'trait_abi', traitAbi));
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

  /// Get contracts by trait
  ///
  /// Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens
  ///
  /// Parameters:
  ///
  /// * [String] traitAbi (required):
  ///   JSON abi of the trait.
  ///
  /// * [int] limit:
  ///   max number of contracts fetch
  ///
  /// * [int] offset:
  ///   index of first contract event to fetch
  Future<ContractListResponse> getContractsByTrait(String traitAbi, { int limit, int offset, }) async {
    final response = await getContractsByTraitWithHttpInfo(traitAbi,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContractListResponse',) as ContractListResponse;
    
    }
    return Future<ContractListResponse>.value();
  }
}
