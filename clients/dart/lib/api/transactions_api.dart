//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;


class TransactionsApi {
  TransactionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Transactions for address
  ///
  /// Retrieves all transactions for a given address that are currently in mempool
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Transactions for the address
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getAddressMempoolTransactionsWithHttpInfo(String address, { int limit, int offset, bool unanchored, }) async {
    // Verify required params are set.
    if (address == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: address');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/address/{address}/mempool'
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

  /// Transactions for address
  ///
  /// Retrieves all transactions for a given address that are currently in mempool
  ///
  /// Parameters:
  ///
  /// * [String] address (required):
  ///   Transactions for the address
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Object> getAddressMempoolTransactions(String address, { int limit, int offset, bool unanchored, }) async {
    final response = await getAddressMempoolTransactionsWithHttpInfo(address,  limit: limit, offset: offset, unanchored: unanchored, );
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

  /// Get dropped mempool transactions
  ///
  /// Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of mempool transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first mempool transaction to fetch
  Future<Response> getDroppedMempoolTransactionListWithHttpInfo({ int limit, int offset, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/mempool/dropped';

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

  /// Get dropped mempool transactions
  ///
  /// Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of mempool transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first mempool transaction to fetch
  Future<Object> getDroppedMempoolTransactionList({ int limit, int offset, }) async {
    final response = await getDroppedMempoolTransactionListWithHttpInfo( limit: limit, offset: offset, );
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

  /// Get mempool transactions
  ///
  /// Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] senderAddress:
  ///   Filter to only return transactions with this sender address.
  ///
  /// * [String] recipientAddress:
  ///   Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
  ///
  /// * [String] address:
  ///   Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
  ///
  /// * [int] limit:
  ///   max number of mempool transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first mempool transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getMempoolTransactionListWithHttpInfo({ String senderAddress, String recipientAddress, String address, int limit, int offset, bool unanchored, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/mempool';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (senderAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sender_address', senderAddress));
    }
    if (recipientAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'recipient_address', recipientAddress));
    }
    if (address != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'address', address));
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

  /// Get mempool transactions
  ///
  /// Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  ///
  /// Parameters:
  ///
  /// * [String] senderAddress:
  ///   Filter to only return transactions with this sender address.
  ///
  /// * [String] recipientAddress:
  ///   Filter to only return transactions with this recipient address (only applicable for STX transfer tx types).
  ///
  /// * [String] address:
  ///   Filter to only return transactions with this address as the sender or recipient (recipient only applicable for STX transfer tx types).
  ///
  /// * [int] limit:
  ///   max number of mempool transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first mempool transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<MempoolTransactionListResponse> getMempoolTransactionList({ String senderAddress, String recipientAddress, String address, int limit, int offset, bool unanchored, }) async {
    final response = await getMempoolTransactionListWithHttpInfo( senderAddress: senderAddress, recipientAddress: recipientAddress, address: address, limit: limit, offset: offset, unanchored: unanchored, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MempoolTransactionListResponse',) as MempoolTransactionListResponse;
    
    }
    return Future<MempoolTransactionListResponse>.value();
  }

  /// Get Raw Transaction
  ///
  /// Retrieves a hex encoded serialized transaction for a given ID 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] txId (required):
  ///   Hash of transaction
  Future<Response> getRawTransactionByIdWithHttpInfo(String txId,) async {
    // Verify required params are set.
    if (txId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: txId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/{tx_id}/raw'
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

  /// Get Raw Transaction
  ///
  /// Retrieves a hex encoded serialized transaction for a given ID 
  ///
  /// Parameters:
  ///
  /// * [String] txId (required):
  ///   Hash of transaction
  Future<GetRawTransactionResult> getRawTransactionById(String txId,) async {
    final response = await getRawTransactionByIdWithHttpInfo(txId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRawTransactionResult',) as GetRawTransactionResult;
    
    }
    return Future<GetRawTransactionResult>.value();
  }

  /// Get transaction
  ///
  /// Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] txId (required):
  ///   Hash of transaction
  ///
  /// * [int] eventOffset:
  ///   The number of events to skip
  ///
  /// * [int] eventLimit:
  ///   The numbers of events to return
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getTransactionByIdWithHttpInfo(String txId, { int eventOffset, int eventLimit, bool unanchored, }) async {
    // Verify required params are set.
    if (txId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: txId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/{tx_id}'
      .replaceAll('{tx_id}', txId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventOffset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event_offset', eventOffset));
    }
    if (eventLimit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event_limit', eventLimit));
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

  /// Get transaction
  ///
  /// Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Parameters:
  ///
  /// * [String] txId (required):
  ///   Hash of transaction
  ///
  /// * [int] eventOffset:
  ///   The number of events to skip
  ///
  /// * [int] eventLimit:
  ///   The numbers of events to return
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<AnyOfobjectobjectobjectobjectobject> getTransactionById(String txId, { int eventOffset, int eventLimit, bool unanchored, }) async {
    final response = await getTransactionByIdWithHttpInfo(txId,  eventOffset: eventOffset, eventLimit: eventLimit, unanchored: unanchored, );
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

  /// Get recent transactions
  ///
  /// Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [List<String>] type:
  ///   Filter by transaction type
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getTransactionListWithHttpInfo({ int limit, int offset, List<String> type, bool unanchored, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx';

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
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'type', type));
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

  /// Get recent transactions
  ///
  /// Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [List<String>] type:
  ///   Filter by transaction type
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<TransactionResults> getTransactionList({ int limit, int offset, List<String> type, bool unanchored, }) async {
    final response = await getTransactionListWithHttpInfo( limit: limit, offset: offset, type: type, unanchored: unanchored, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionResults',) as TransactionResults;
    
    }
    return Future<TransactionResults>.value();
  }

  /// Transactions by block hash
  ///
  /// Retrieves a list of all transactions within a block for a given block hash.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blockHash (required):
  ///   Hash of block
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  Future<Response> getTransactionsByBlockHashWithHttpInfo(String blockHash, { int limit, int offset, }) async {
    // Verify required params are set.
    if (blockHash == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: blockHash');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/block/{block_hash}'
      .replaceAll('{block_hash}', blockHash);

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

  /// Transactions by block hash
  ///
  /// Retrieves a list of all transactions within a block for a given block hash.
  ///
  /// Parameters:
  ///
  /// * [String] blockHash (required):
  ///   Hash of block
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  Future<Object> getTransactionsByBlockHash(String blockHash, { int limit, int offset, }) async {
    final response = await getTransactionsByBlockHashWithHttpInfo(blockHash,  limit: limit, offset: offset, );
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

  /// Transactions by block height
  ///
  /// Retrieves all transactions within a block at a given height
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] height (required):
  ///   Height of block
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getTransactionsByBlockHeightWithHttpInfo(int height, { int limit, int offset, bool unanchored, }) async {
    // Verify required params are set.
    if (height == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: height');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/block_height/{height}'
      .replaceAll('{height}', height.toString());

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

  /// Transactions by block height
  ///
  /// Retrieves all transactions within a block at a given height
  ///
  /// Parameters:
  ///
  /// * [int] height (required):
  ///   Height of block
  ///
  /// * [int] limit:
  ///   max number of transactions to fetch
  ///
  /// * [int] offset:
  ///   index of first transaction to fetch
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Object> getTransactionsByBlockHeight(int height, { int limit, int offset, bool unanchored, }) async {
    final response = await getTransactionsByBlockHeightWithHttpInfo(height,  limit: limit, offset: offset, unanchored: unanchored, );
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

  /// Get list of details for transactions
  ///
  /// Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] txId (required):
  ///   Array of transaction ids
  ///
  /// * [int] eventOffset:
  ///   The number of events to skip
  ///
  /// * [int] eventLimit:
  ///   The numbers of events to return
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Response> getTxListDetailsWithHttpInfo(List<String> txId, { int eventOffset, int eventLimit, bool unanchored, }) async {
    // Verify required params are set.
    if (txId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: txId');
    }

    // ignore: prefer_const_declarations
    final path = r'/extended/v1/tx/multiple';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tx_id', txId));
    if (eventOffset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event_offset', eventOffset));
    }
    if (eventLimit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event_limit', eventLimit));
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

  /// Get list of details for transactions
  ///
  /// Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
  ///
  /// Parameters:
  ///
  /// * [List<String>] txId (required):
  ///   Array of transaction ids
  ///
  /// * [int] eventOffset:
  ///   The number of events to skip
  ///
  /// * [int] eventLimit:
  ///   The numbers of events to return
  ///
  /// * [bool] unanchored:
  ///   Include transaction data from unanchored (i.e. unconfirmed) microblocks
  Future<Map<String, AnyOfobjectobject>> getTxListDetails(List<String> txId, { int eventOffset, int eventLimit, bool unanchored, }) async {
    final response = await getTxListDetailsWithHttpInfo(txId,  eventOffset: eventOffset, eventLimit: eventLimit, unanchored: unanchored, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return Map<String, AnyOfobjectobject>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, AnyOfobjectobject>'),);

    }
    return Future<Map<String, AnyOfobjectobject>>.value();
  }

  /// Broadcast raw transaction
  ///
  /// Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<Response> postCoreNodeTransactionsWithHttpInfo({ MultipartFile body, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/v2/transactions';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Broadcast raw transaction
  ///
  /// Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] body:
  Future<String> postCoreNodeTransactions({ MultipartFile body, }) async {
    final response = await postCoreNodeTransactionsWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }
}
