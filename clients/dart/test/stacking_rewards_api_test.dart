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


/// tests for StackingRewardsApi
void main() {
  final instance = StackingRewardsApi();

  group('tests for StackingRewardsApi', () {
    // Get recent burnchain reward recipients
    //
    // Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info
    //
    //Future<BurnchainRewardListResponse> getBurnchainRewardList({ int limit, int offset }) async
    test('test getBurnchainRewardList', () async {
      // TODO
    });

    // Get recent burnchain reward for the given recipient
    //
    // Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info
    //
    //Future<Object> getBurnchainRewardListByAddress(String address, { int limit, int offset }) async
    test('test getBurnchainRewardListByAddress', () async {
      // TODO
    });

    // Get recent reward slot holders
    //
    // Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.
    //
    //Future<BurnchainRewardSlotHolderListResponse> getBurnchainRewardSlotHolders({ int limit, int offset }) async
    test('test getBurnchainRewardSlotHolders', () async {
      // TODO
    });

    // Get recent reward slot holder entries for the given address
    //
    // Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.
    //
    //Future<Object> getBurnchainRewardSlotHoldersByAddress(String address, { int limit, int offset }) async
    test('test getBurnchainRewardSlotHoldersByAddress', () async {
      // TODO
    });

    // Get total burnchain rewards for the given recipient
    //
    // Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient `address`
    //
    //Future<BurnchainRewardsTotal> getBurnchainRewardsTotalByAddress(String address) async
    test('test getBurnchainRewardsTotalByAddress', () async {
      // TODO
    });

  });
}
