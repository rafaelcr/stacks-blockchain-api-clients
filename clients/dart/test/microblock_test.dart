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

// tests for Microblock
void main() {
  final instance = Microblock();

  group('test Microblock', () {
    // Set to `true` if the microblock corresponds to the canonical chain tip.
    // bool canonical
    test('to test the property `canonical`', () async {
      // TODO
    });

    // Set to `true` if the microblock was not orphaned in a following anchor block. Defaults to `true` if the following anchor block has not yet been created.
    // bool microblockCanonical
    test('to test the property `microblockCanonical`', () async {
      // TODO
    });

    // The SHA512/256 hash of this microblock.
    // String microblockHash
    test('to test the property `microblockHash`', () async {
      // TODO
    });

    // A hint to describe how to order a set of microblocks. Starts at 0.
    // int microblockSequence
    test('to test the property `microblockSequence`', () async {
      // TODO
    });

    // The SHA512/256 hash of the previous signed microblock in this stream.
    // String microblockParentHash
    test('to test the property `microblockParentHash`', () async {
      // TODO
    });

    // The anchor block height that confirmed this microblock.
    // int blockHeight
    test('to test the property `blockHeight`', () async {
      // TODO
    });

    // The height of the anchor block that preceded this microblock.
    // int parentBlockHeight
    test('to test the property `parentBlockHeight`', () async {
      // TODO
    });

    // The hash of the anchor block that preceded this microblock.
    // String parentBlockHash
    test('to test the property `parentBlockHash`', () async {
      // TODO
    });

    // The hash of the Bitcoin block that preceded this microblock.
    // String parentBurnBlockHash
    test('to test the property `parentBurnBlockHash`', () async {
      // TODO
    });

    // The block timestamp of the Bitcoin block that preceded this microblock.
    // int parentBurnBlockTime
    test('to test the property `parentBurnBlockTime`', () async {
      // TODO
    });

    // The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock.
    // String parentBurnBlockTimeIso
    test('to test the property `parentBurnBlockTimeIso`', () async {
      // TODO
    });

    // The height of the Bitcoin block that preceded this microblock.
    // int parentBurnBlockHeight
    test('to test the property `parentBurnBlockHeight`', () async {
      // TODO
    });

    // The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks
    // String blockHash
    test('to test the property `blockHash`', () async {
      // TODO
    });

    // List of transactions included in the microblock
    // List<String> txs (default value: const [])
    test('to test the property `txs`', () async {
      // TODO
    });


  });

}
