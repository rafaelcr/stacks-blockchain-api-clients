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

// tests for AddressNonces
void main() {
  final instance = AddressNonces();

  group('test AddressNonces', () {
    // The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address.
    // int lastMempoolTxNonce
    test('to test the property `lastMempoolTxNonce`', () async {
      // TODO
    });

    // The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address.
    // int lastExecutedTxNonce
    test('to test the property `lastExecutedTxNonce`', () async {
      // TODO
    });

    // The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called.
    // int possibleNextNonce
    test('to test the property `possibleNextNonce`', () async {
      // TODO
    });

    // Nonces that appear to be missing and likely causing a mempool transaction to be stuck.
    // List<int> detectedMissingNonces (default value: const [])
    test('to test the property `detectedMissingNonces`', () async {
      // TODO
    });


  });

}
