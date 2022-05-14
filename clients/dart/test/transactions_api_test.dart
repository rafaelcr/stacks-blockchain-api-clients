//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:stacks_blockchain_api_client/api.dart';
import 'package:test/test.dart';


/// tests for TransactionsApi
void main() {
  final instance = TransactionsApi();

  group('tests for TransactionsApi', () {
    // Transactions for address
    //
    // Retrieves all transactions for a given address that are currently in mempool
    //
    //Future<Object> getAddressMempoolTransactions(String address, { int limit, int offset, bool unanchored }) async
    test('test getAddressMempoolTransactions', () async {
      // TODO
    });

    // Get dropped mempool transactions
    //
    // Retrieves all recently-broadcast transactions that have been dropped from the mempool.  Transactions are dropped from the mempool if:  * they were stale and awaiting garbage collection or,  * were expensive,  or  * were replaced with a new fee 
    //
    //Future<Object> getDroppedMempoolTransactionList({ int limit, int offset }) async
    test('test getDroppedMempoolTransactionList', () async {
      // TODO
    });

    // Get mempool transactions
    //
    // Retrieves all transactions that have been recently broadcast to the mempool. These are pending transactions awaiting confirmation.  If you need to monitor new transactions, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
    //
    //Future<MempoolTransactionListResponse> getMempoolTransactionList({ String senderAddress, String recipientAddress, String address, int limit, int offset, bool unanchored }) async
    test('test getMempoolTransactionList', () async {
      // TODO
    });

    // Get Raw Transaction
    //
    // Retrieves a hex encoded serialized transaction for a given ID 
    //
    //Future<GetRawTransactionResult> getRawTransactionById(String txId) async
    test('test getRawTransactionById', () async {
      // TODO
    });

    // Get transaction
    //
    // Retrieves transaction details for a given transaction ID  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
    //
    //Future<AnyOfobjectobjectobjectobjectobject> getTransactionById(String txId, { int eventOffset, int eventLimit, bool unanchored }) async
    test('test getTransactionById', () async {
      // TODO
    });

    // Get recent transactions
    //
    // Retrieves all recently mined transactions  If using TypeScript, import typings for this response from our types package:  `import type { TransactionResults } from '@stacks/stacks-blockchain-api-types';` 
    //
    //Future<TransactionResults> getTransactionList({ int limit, int offset, List<String> type, bool unanchored }) async
    test('test getTransactionList', () async {
      // TODO
    });

    // Transactions by block hash
    //
    // Retrieves a list of all transactions within a block for a given block hash.
    //
    //Future<Object> getTransactionsByBlockHash(String blockHash, { int limit, int offset }) async
    test('test getTransactionsByBlockHash', () async {
      // TODO
    });

    // Transactions by block height
    //
    // Retrieves all transactions within a block at a given height
    //
    //Future<Object> getTransactionsByBlockHeight(int height, { int limit, int offset, bool unanchored }) async
    test('test getTransactionsByBlockHeight', () async {
      // TODO
    });

    // Get list of details for transactions
    //
    // Retrieves a list of transactions for a given list of transaction IDs  If using TypeScript, import typings for this response from our types package:  `import type { Transaction } from '@stacks/stacks-blockchain-api-types';` 
    //
    //Future<Map<String, AnyOfobjectobject>> getTxListDetails(List<String> txId, { int eventOffset, int eventLimit, bool unanchored }) async
    test('test getTxListDetails', () async {
      // TODO
    });

    // Broadcast raw transaction
    //
    // Broadcasts raw transactions on the network. You can use the [@stacks/transactions](https://github.com/blockstack/stacks.js) project to generate a raw transaction payload.
    //
    //Future<String> postCoreNodeTransactions({ MultipartFile body }) async
    test('test postCoreNodeTransactions', () async {
      // TODO
    });

  });
}
