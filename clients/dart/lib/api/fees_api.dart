//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class FeesApi {
  FeesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// fetch fee rate
  ///
  /// Retrieves estimated fee rate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FeeRateRequest] feeRateRequest (required):
  Future<Response> fetchFeeRateWithHttpInfo(FeeRateRequest feeRateRequest,) async {
    // Verify required params are set.
    if (feeRateRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: feeRateRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/fee_rate';

    // ignore: prefer_final_locals
    Object postBody = feeRateRequest;

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

  /// fetch fee rate
  ///
  /// Retrieves estimated fee rate.
  ///
  /// Parameters:
  ///
  /// * [FeeRateRequest] feeRateRequest (required):
  Future<FeeRate> fetchFeeRate(FeeRateRequest feeRateRequest,) async {
    final response = await fetchFeeRateWithHttpInfo(feeRateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FeeRate',) as FeeRate;
    
    }
    return Future<FeeRate>.value();
  }

  /// Get estimated fee
  ///
  /// Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFeeTransferWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v2/fees/transfer';

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

  /// Get estimated fee
  ///
  /// Retrieves an estimated fee rate for STX transfer transactions. This a a fee rate / byte, and is returned as a JSON integer
  Future<Object> getFeeTransfer() async {
    final response = await getFeeTransferWithHttpInfo();
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
}
