//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class NamesApi {
  NamesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Zone File
  ///
  /// Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  Future<Response> fetchZoneFileWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/names/{name}/zonefile'
      .replaceAll('{name}', name);

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

  /// Get Zone File
  ///
  /// Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  Future<AnyOfobjectobject> fetchZoneFile(String name,) async {
    final response = await fetchZoneFileWithHttpInfo(name,);
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

  /// Get All Names
  ///
  /// Retrieves a list of all names known to the node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page (required):
  ///   names are returned in pages of size 100, so specify the page number.
  Future<Response> getAllNamesWithHttpInfo(int page,) async {
    // Verify required params are set.
    if (page == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: page');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/names';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));

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

  /// Get All Names
  ///
  /// Retrieves a list of all names known to the node.
  ///
  /// Parameters:
  ///
  /// * [int] page (required):
  ///   names are returned in pages of size 100, so specify the page number.
  Future<List<String>> getAllNames(int page,) async {
    final response = await getAllNamesWithHttpInfo(page,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Get All Namespaces
  ///
  /// Retrieves a list of all namespaces known to the node.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllNamespacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/namespaces';

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

  /// Get All Namespaces
  ///
  /// Retrieves a list of all namespaces known to the node.
  Future<BnsGetAllNamespacesResponse> getAllNamespaces() async {
    final response = await getAllNamespacesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BnsGetAllNamespacesResponse',) as BnsGetAllNamespacesResponse;
    
    }
    return Future<BnsGetAllNamespacesResponse>.value();
  }

  /// Get Historical Zone File
  ///
  /// Retrieves the historical zonefile specified by the username and zone hash.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  ///
  /// * [String] zoneFileHash (required):
  ///   zone file hash
  Future<Response> getHistoricalZoneFileWithHttpInfo(String name, String zoneFileHash,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (zoneFileHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: zoneFileHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/names/{name}/zonefile/{zoneFileHash}'
      .replaceAll('{name}', name)
      .replaceAll('{zoneFileHash}', zoneFileHash);

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

  /// Get Historical Zone File
  ///
  /// Retrieves the historical zonefile specified by the username and zone hash.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  ///
  /// * [String] zoneFileHash (required):
  ///   zone file hash
  Future<AnyOfobjectobject> getHistoricalZoneFile(String name, String zoneFileHash,) async {
    final response = await getHistoricalZoneFileWithHttpInfo(name, zoneFileHash,);
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

  /// Get Name History
  ///
  /// Retrieves a history of all blockchain records of a registered name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name to query
  ///
  /// * [int] page (required):
  ///   the page (in 20-entry pages) of the history to fetch
  Future<Response> getNameHistoryWithHttpInfo(String name, int page,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (page == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: page');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/names/{name}/history'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));

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

  /// Get Name History
  ///
  /// Retrieves a history of all blockchain records of a registered name.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name to query
  ///
  /// * [int] page (required):
  ///   the page (in 20-entry pages) of the history to fetch
  Future<Object> getNameHistory(String name, int page,) async {
    final response = await getNameHistoryWithHttpInfo(name, page,);
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

  /// Get Name Details
  ///
  /// Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  Future<Response> getNameInfoWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/names/{name}'
      .replaceAll('{name}', name);

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

  /// Get Name Details
  ///
  /// Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   fully-qualified name
  Future<BnsGetNameInfoResponse> getNameInfo(String name,) async {
    final response = await getNameInfoWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BnsGetNameInfoResponse',) as BnsGetNameInfoResponse;
    
    }
    return Future<BnsGetNameInfoResponse>.value();
  }

  /// Get Name Price
  ///
  /// Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   the name to query price information for
  Future<Response> getNamePriceWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/prices/names/{name}'
      .replaceAll('{name}', name);

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

  /// Get Name Price
  ///
  /// Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   the name to query price information for
  Future<BnsGetNamePriceResponse> getNamePrice(String name,) async {
    final response = await getNamePriceWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BnsGetNamePriceResponse',) as BnsGetNamePriceResponse;
    
    }
    return Future<BnsGetNamePriceResponse>.value();
  }

  /// Get Names Owned by Address
  ///
  /// Retrieves a list of names owned by the address provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blockchain (required):
  ///   the layer-1 blockchain for the address
  ///
  /// * [String] address (required):
  ///   the address to lookup
  Future<Response> getNamesOwnedByAddressWithHttpInfo(String blockchain, String address,) async {
    // Verify required params are set.
    if (blockchain == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: blockchain');
    }
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/addresses/{blockchain}/{address}'
      .replaceAll('{blockchain}', blockchain)
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

  /// Get Names Owned by Address
  ///
  /// Retrieves a list of names owned by the address provided.
  ///
  /// Parameters:
  ///
  /// * [String] blockchain (required):
  ///   the layer-1 blockchain for the address
  ///
  /// * [String] address (required):
  ///   the address to lookup
  Future<BnsNamesOwnByAddressResponse> getNamesOwnedByAddress(String blockchain, String address,) async {
    final response = await getNamesOwnedByAddressWithHttpInfo(blockchain, address,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BnsNamesOwnByAddressResponse',) as BnsNamesOwnByAddressResponse;
    
    }
    return Future<BnsNamesOwnByAddressResponse>.value();
  }

  /// Get Namespace Names
  ///
  /// Retrieves a list of names within a given namespace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tld (required):
  ///   the namespace to fetch names from
  ///
  /// * [int] page (required):
  ///   names are returned in pages of size 100, so specify the page number.
  Future<Response> getNamespaceNamesWithHttpInfo(String tld, int page,) async {
    // Verify required params are set.
    if (tld == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tld');
    }
    if (page == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: page');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/namespaces/{tld}/names'
      .replaceAll('{tld}', tld);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));

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

  /// Get Namespace Names
  ///
  /// Retrieves a list of names within a given namespace.
  ///
  /// Parameters:
  ///
  /// * [String] tld (required):
  ///   the namespace to fetch names from
  ///
  /// * [int] page (required):
  ///   names are returned in pages of size 100, so specify the page number.
  Future<List<String>> getNamespaceNames(String tld, int page,) async {
    final response = await getNamespaceNamesWithHttpInfo(tld, page,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Get Namespace Price
  ///
  /// Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tld (required):
  ///   the namespace to fetch price for
  Future<Response> getNamespacePriceWithHttpInfo(String tld,) async {
    // Verify required params are set.
    if (tld == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tld');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/prices/namespaces/{tld}'
      .replaceAll('{tld}', tld);

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

  /// Get Namespace Price
  ///
  /// Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.
  ///
  /// Parameters:
  ///
  /// * [String] tld (required):
  ///   the namespace to fetch price for
  Future<BnsGetNamespacePriceResponse> getNamespacePrice(String tld,) async {
    final response = await getNamespacePriceWithHttpInfo(tld,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BnsGetNamespacePriceResponse',) as BnsGetNamespacePriceResponse;
    
    }
    return Future<BnsGetNamespacePriceResponse>.value();
  }
}
