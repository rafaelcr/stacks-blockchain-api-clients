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

// tests for Block
void main() {
  final instance = Block();

  group('test Block', () {
    // Set to `true` if block corresponds to the canonical chain tip
    // bool canonical
    test('to test the property `canonical`', () async {
      // TODO
    });

    // Height of the block
    // int height
    test('to test the property `height`', () async {
      // TODO
    });

    // Hash representing the block
    // String hash
    test('to test the property `hash`', () async {
      // TODO
    });

    // Hash of the parent block
    // String parentBlockHash
    test('to test the property `parentBlockHash`', () async {
      // TODO
    });

    // Unix timestamp (in seconds) indicating when this block was mined.
    // num burnBlockTime
    test('to test the property `burnBlockTime`', () async {
      // TODO
    });

    // An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined.
    // String burnBlockTimeIso
    test('to test the property `burnBlockTimeIso`', () async {
      // TODO
    });

    // Hash of the anchor chain block
    // String burnBlockHash
    test('to test the property `burnBlockHash`', () async {
      // TODO
    });

    // Height of the anchor chain block
    // int burnBlockHeight
    test('to test the property `burnBlockHeight`', () async {
      // TODO
    });

    // Anchor chain transaction ID
    // String minerTxid
    test('to test the property `minerTxid`', () async {
      // TODO
    });

    // The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1.
    // String parentMicroblockHash
    test('to test the property `parentMicroblockHash`', () async {
      // TODO
    });

    // The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1.
    // int parentMicroblockSequence
    test('to test the property `parentMicroblockSequence`', () async {
      // TODO
    });

    // List of transactions included in the block
    // List<String> txs (default value: const [])
    test('to test the property `txs`', () async {
      // TODO
    });

    // List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list.
    // List<String> microblocksAccepted (default value: const [])
    test('to test the property `microblocksAccepted`', () async {
      // TODO
    });

    // List of microblocks that were streamed/produced by this anchor block's miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list.
    // List<String> microblocksStreamed (default value: const [])
    test('to test the property `microblocksStreamed`', () async {
      // TODO
    });

    // Execution cost read count.
    // int executionCostReadCount
    test('to test the property `executionCostReadCount`', () async {
      // TODO
    });

    // Execution cost read length.
    // int executionCostReadLength
    test('to test the property `executionCostReadLength`', () async {
      // TODO
    });

    // Execution cost runtime.
    // int executionCostRuntime
    test('to test the property `executionCostRuntime`', () async {
      // TODO
    });

    // Execution cost write count.
    // int executionCostWriteCount
    test('to test the property `executionCostWriteCount`', () async {
      // TODO
    });

    // Execution cost write length.
    // int executionCostWriteLength
    test('to test the property `executionCostWriteLength`', () async {
      // TODO
    });


  });

}
