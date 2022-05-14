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

// tests for RosettaAccountBalanceResponse
void main() {
  final instance = RosettaAccountBalanceResponse();

  group('test RosettaAccountBalanceResponse', () {
    // Object blockIdentifier
    test('to test the property `blockIdentifier`', () async {
      // TODO
    });

    // A single account balance may have multiple currencies
    // List<RosettaAmount> balances (default value: const [])
    test('to test the property `balances`', () async {
      // TODO
    });

    // If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don't need to maintain their own indexer to track their UTXOs.
    // List<RosettaCoin> coins (default value: const [])
    test('to test the property `coins`', () async {
      // TODO
    });

    // RosettaAccountBalanceResponseMetadata metadata
    test('to test the property `metadata`', () async {
      // TODO
    });


  });

}
