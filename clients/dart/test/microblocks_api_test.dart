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


/// tests for MicroblocksApi
void main() {
  final instance = MicroblocksApi();

  group('tests for MicroblocksApi', () {
    // Get microblock
    //
    // Retrieves a specific microblock by `hash`
    //
    //Future<Microblock> getMicroblockByHash(String hash) async
    test('test getMicroblockByHash', () async {
      // TODO
    });

    // Get recent microblocks
    //
    // Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
    //
    //Future<MicroblockListResponse> getMicroblockList({ int limit, int offset }) async
    test('test getMicroblockList', () async {
      // TODO
    });

    // Get the list of current transactions that belong to unanchored microblocks
    //
    // Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
    //
    //Future<UnanchoredTransactionListResponse> getUnanchoredTxs() async
    test('test getUnanchoredTxs', () async {
      // TODO
    });

  });
}
