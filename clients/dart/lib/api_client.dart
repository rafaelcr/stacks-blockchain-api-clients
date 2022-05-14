//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ApiClient {
  ApiClient({this.basePath = 'https://stacks-node-api.mainnet.stacks.co'}) {
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for(final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AccountDataResponse':
          return AccountDataResponse.fromJson(value);
        case 'AddressAssetsListResponse':
          return AddressAssetsListResponse.fromJson(value);
        case 'AddressBalanceResponse':
          return AddressBalanceResponse.fromJson(value);
        case 'AddressBalanceResponseStx':
          return AddressBalanceResponseStx.fromJson(value);
        case 'AddressNftListResponse':
          return AddressNftListResponse.fromJson(value);
        case 'AddressNftListResponseValue':
          return AddressNftListResponseValue.fromJson(value);
        case 'AddressNonces':
          return AddressNonces.fromJson(value);
        case 'AddressStxInboundListResponse':
          return AddressStxInboundListResponse.fromJson(value);
        case 'AddressTokenOfferingLocked':
          return AddressTokenOfferingLocked.fromJson(value);
        case 'AddressTransactionWithTransfers':
          return AddressTransactionWithTransfers.fromJson(value);
        case 'AddressTransactionWithTransfersFtTransfers':
          return AddressTransactionWithTransfersFtTransfers.fromJson(value);
        case 'AddressTransactionWithTransfersNftTransfers':
          return AddressTransactionWithTransfersNftTransfers.fromJson(value);
        case 'AddressTransactionWithTransfersStxTransfers':
          return AddressTransactionWithTransfersStxTransfers.fromJson(value);
        case 'AddressTransactionWithTransfersValue':
          return AddressTransactionWithTransfersValue.fromJson(value);
        case 'AddressTransactionsListResponse':
          return AddressTransactionsListResponse.fromJson(value);
        case 'AddressTransactionsWithTransfersListResponse':
          return AddressTransactionsWithTransfersListResponse.fromJson(value);
        case 'AddressUnlockSchedule':
          return AddressUnlockSchedule.fromJson(value);
        case 'Block':
          return Block.fromJson(value);
        case 'BlockListResponse':
          return BlockListResponse.fromJson(value);
        case 'BnsError':
          return BnsError.fromJson(value);
        case 'BnsGetAllNamespacesResponse':
          return BnsGetAllNamespacesResponse.fromJson(value);
        case 'BnsGetNameInfoResponse':
          return BnsGetNameInfoResponse.fromJson(value);
        case 'BnsGetNamePriceResponse':
          return BnsGetNamePriceResponse.fromJson(value);
        case 'BnsGetNamespacePriceResponse':
          return BnsGetNamespacePriceResponse.fromJson(value);
        case 'BnsNamesOwnByAddressResponse':
          return BnsNamesOwnByAddressResponse.fromJson(value);
        case 'BurnchainReward':
          return BurnchainReward.fromJson(value);
        case 'BurnchainRewardListResponse':
          return BurnchainRewardListResponse.fromJson(value);
        case 'BurnchainRewardSlotHolder':
          return BurnchainRewardSlotHolder.fromJson(value);
        case 'BurnchainRewardSlotHolderListResponse':
          return BurnchainRewardSlotHolderListResponse.fromJson(value);
        case 'BurnchainRewardsTotal':
          return BurnchainRewardsTotal.fromJson(value);
        case 'ChainTip':
          return ChainTip.fromJson(value);
        case 'ContractInterfaceResponse':
          return ContractInterfaceResponse.fromJson(value);
        case 'ContractListResponse':
          return ContractListResponse.fromJson(value);
        case 'ContractSourceResponse':
          return ContractSourceResponse.fromJson(value);
        case 'CoreNodeInfoResponse':
          return CoreNodeInfoResponse.fromJson(value);
        case 'CoreNodePoxResponse':
          return CoreNodePoxResponse.fromJson(value);
        case 'FeeRate':
          return FeeRate.fromJson(value);
        case 'FeeRateRequest':
          return FeeRateRequest.fromJson(value);
        case 'FungibleTokenMetadata':
          return FungibleTokenMetadata.fromJson(value);
        case 'FungibleTokensMetadataList':
          return FungibleTokensMetadataList.fromJson(value);
        case 'GetRawTransactionResult':
          return GetRawTransactionResult.fromJson(value);
        case 'GetStxSupplyLegacyFormatResponse':
          return GetStxSupplyLegacyFormatResponse.fromJson(value);
        case 'GetStxSupplyResponse':
          return GetStxSupplyResponse.fromJson(value);
        case 'InboundStxTransfer':
          return InboundStxTransfer.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'MapEntryResponse':
          return MapEntryResponse.fromJson(value);
        case 'MempoolTransactionListResponse':
          return MempoolTransactionListResponse.fromJson(value);
        case 'Microblock':
          return Microblock.fromJson(value);
        case 'MicroblockListResponse':
          return MicroblockListResponse.fromJson(value);
        case 'NetworkBlockTimesResponse':
          return NetworkBlockTimesResponse.fromJson(value);
        case 'NetworkBlockTimesResponseMainnet':
          return NetworkBlockTimesResponseMainnet.fromJson(value);
        case 'NetworkIdentifier':
          return NetworkIdentifier.fromJson(value);
        case 'NftEvent':
          return NftEvent.fromJson(value);
        case 'NonFungibleTokenHistoryEventList':
          return NonFungibleTokenHistoryEventList.fromJson(value);
        case 'NonFungibleTokenHoldingsList':
          return NonFungibleTokenHoldingsList.fromJson(value);
        case 'NonFungibleTokenMetadata':
          return NonFungibleTokenMetadata.fromJson(value);
        case 'NonFungibleTokenMintList':
          return NonFungibleTokenMintList.fromJson(value);
        case 'NonFungibleTokensMetadataList':
          return NonFungibleTokensMetadataList.fromJson(value);
        case 'OtherTransactionIdentifier':
          return OtherTransactionIdentifier.fromJson(value);
        case 'PostCoreNodeTransactionsError':
          return PostCoreNodeTransactionsError.fromJson(value);
        case 'ReadOnlyFunctionArgs':
          return ReadOnlyFunctionArgs.fromJson(value);
        case 'ReadOnlyFunctionSuccessResponse':
          return ReadOnlyFunctionSuccessResponse.fromJson(value);
        case 'RosettaAccount':
          return RosettaAccount.fromJson(value);
        case 'RosettaAccountBalanceRequest':
          return RosettaAccountBalanceRequest.fromJson(value);
        case 'RosettaAccountBalanceResponse':
          return RosettaAccountBalanceResponse.fromJson(value);
        case 'RosettaAccountBalanceResponseCoinIdentifier':
          return RosettaAccountBalanceResponseCoinIdentifier.fromJson(value);
        case 'RosettaAccountBalanceResponseMetadata':
          return RosettaAccountBalanceResponseMetadata.fromJson(value);
        case 'RosettaAccountIdentifier':
          return RosettaAccountIdentifier.fromJson(value);
        case 'RosettaAmount':
          return RosettaAmount.fromJson(value);
        case 'RosettaBlock':
          return RosettaBlock.fromJson(value);
        case 'RosettaBlockMetadata':
          return RosettaBlockMetadata.fromJson(value);
        case 'RosettaBlockRequest':
          return RosettaBlockRequest.fromJson(value);
        case 'RosettaBlockResponse':
          return RosettaBlockResponse.fromJson(value);
        case 'RosettaBlockTransactionRequest':
          return RosettaBlockTransactionRequest.fromJson(value);
        case 'RosettaBlockTransactionResponse':
          return RosettaBlockTransactionResponse.fromJson(value);
        case 'RosettaCoin':
          return RosettaCoin.fromJson(value);
        case 'RosettaCoinChange':
          return RosettaCoinChange.fromJson(value);
        case 'RosettaConstructionCombineRequest':
          return RosettaConstructionCombineRequest.fromJson(value);
        case 'RosettaConstructionCombineResponse':
          return RosettaConstructionCombineResponse.fromJson(value);
        case 'RosettaConstructionDeriveRequest':
          return RosettaConstructionDeriveRequest.fromJson(value);
        case 'RosettaConstructionDeriveResponse':
          return RosettaConstructionDeriveResponse.fromJson(value);
        case 'RosettaConstructionHashRequest':
          return RosettaConstructionHashRequest.fromJson(value);
        case 'RosettaConstructionHashResponse':
          return RosettaConstructionHashResponse.fromJson(value);
        case 'RosettaConstructionMetadataRequest':
          return RosettaConstructionMetadataRequest.fromJson(value);
        case 'RosettaConstructionMetadataResponse':
          return RosettaConstructionMetadataResponse.fromJson(value);
        case 'RosettaConstructionMetadataResponseMetadata':
          return RosettaConstructionMetadataResponseMetadata.fromJson(value);
        case 'RosettaConstructionParseRequest':
          return RosettaConstructionParseRequest.fromJson(value);
        case 'RosettaConstructionParseResponse':
          return RosettaConstructionParseResponse.fromJson(value);
        case 'RosettaConstructionPayloadResponse':
          return RosettaConstructionPayloadResponse.fromJson(value);
        case 'RosettaConstructionPayloadsRequest':
          return RosettaConstructionPayloadsRequest.fromJson(value);
        case 'RosettaConstructionPreprocessRequest':
          return RosettaConstructionPreprocessRequest.fromJson(value);
        case 'RosettaConstructionPreprocessResponse':
          return RosettaConstructionPreprocessResponse.fromJson(value);
        case 'RosettaConstructionSubmitRequest':
          return RosettaConstructionSubmitRequest.fromJson(value);
        case 'RosettaConstructionSubmitResponse':
          return RosettaConstructionSubmitResponse.fromJson(value);
        case 'RosettaCurrency':
          return RosettaCurrency.fromJson(value);
        case 'RosettaError':
          return RosettaError.fromJson(value);
        case 'RosettaErrorDetails':
          return RosettaErrorDetails.fromJson(value);
        case 'RosettaErrorNoDetails':
          return RosettaErrorNoDetails.fromJson(value);
        case 'RosettaMaxFeeAmount':
          return RosettaMaxFeeAmount.fromJson(value);
        case 'RosettaMempoolRequest':
          return RosettaMempoolRequest.fromJson(value);
        case 'RosettaMempoolResponse':
          return RosettaMempoolResponse.fromJson(value);
        case 'RosettaMempoolTransactionRequest':
          return RosettaMempoolTransactionRequest.fromJson(value);
        case 'RosettaMempoolTransactionResponse':
          return RosettaMempoolTransactionResponse.fromJson(value);
        case 'RosettaNetworkListResponse':
          return RosettaNetworkListResponse.fromJson(value);
        case 'RosettaNetworkListResponseSubNetworkIdentifier':
          return RosettaNetworkListResponseSubNetworkIdentifier.fromJson(value);
        case 'RosettaNetworkListResponseSubNetworkIdentifierMetadata':
          return RosettaNetworkListResponseSubNetworkIdentifierMetadata.fromJson(value);
        case 'RosettaNetworkOptionsResponse':
          return RosettaNetworkOptionsResponse.fromJson(value);
        case 'RosettaNetworkOptionsResponseAllow':
          return RosettaNetworkOptionsResponseAllow.fromJson(value);
        case 'RosettaNetworkOptionsResponseVersion':
          return RosettaNetworkOptionsResponseVersion.fromJson(value);
        case 'RosettaOperation':
          return RosettaOperation.fromJson(value);
        case 'RosettaOperationIdentifier':
          return RosettaOperationIdentifier.fromJson(value);
        case 'RosettaOperationStatus':
          return RosettaOperationStatus.fromJson(value);
        case 'RosettaOptions':
          return RosettaOptions.fromJson(value);
        case 'RosettaOptionsRequest':
          return RosettaOptionsRequest.fromJson(value);
        case 'RosettaParentBlockIdentifier':
          return RosettaParentBlockIdentifier.fromJson(value);
        case 'RosettaPublicKey':
          return RosettaPublicKey.fromJson(value);
        case 'RosettaRelatedOperation':
          return RosettaRelatedOperation.fromJson(value);
        case 'RosettaSignature':
          return RosettaSignature.fromJson(value);
        case 'RosettaStatusRequest':
          return RosettaStatusRequest.fromJson(value);
        case 'RosettaSubAccount':
          return RosettaSubAccount.fromJson(value);
        case 'RosettaTransaction':
          return RosettaTransaction.fromJson(value);
        case 'RosettaTransactionMetadata':
          return RosettaTransactionMetadata.fromJson(value);
        case 'RunFaucetResponse':
          return RunFaucetResponse.fromJson(value);
        case 'ServerStatusResponse':
          return ServerStatusResponse.fromJson(value);
        case 'SigningPayload':
          return SigningPayload.fromJson(value);
        case 'SmartContract':
          return SmartContract.fromJson(value);
        case 'TransactionIdentifier':
          return TransactionIdentifier.fromJson(value);
        case 'TransactionResults':
          return TransactionResults.fromJson(value);
        case 'UnanchoredTransactionListResponse':
          return UnanchoredTransactionListResponse.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, targetType, growable: growable)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
