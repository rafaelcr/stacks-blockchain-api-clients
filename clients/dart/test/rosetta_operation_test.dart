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

// tests for RosettaOperation
void main() {
  final instance = RosettaOperation();

  group('test RosettaOperation', () {
    // RosettaOperationIdentifier operationIdentifier
    test('to test the property `operationIdentifier`', () async {
      // TODO
    });

    // Restrict referenced related_operations to identifier indexes < the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree.
    // List<RosettaRelatedOperation> relatedOperations (default value: const [])
    test('to test the property `relatedOperations`', () async {
      // TODO
    });

    // The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Object account
    test('to test the property `account`', () async {
      // TODO
    });

    // Object amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // RosettaCoinChange coinChange
    test('to test the property `coinChange`', () async {
      // TODO
    });

    // Operations Meta Data
    // Object metadata
    test('to test the property `metadata`', () async {
      // TODO
    });


  });

}
