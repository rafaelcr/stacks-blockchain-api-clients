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

// tests for CoreNodeInfoResponse
void main() {
  final instance = CoreNodeInfoResponse();

  group('test CoreNodeInfoResponse', () {
    // identifies the version number for the networking communication, this should not change while a node is running, and will only change if there's an upgrade
    // int peerVersion
    test('to test the property `peerVersion`', () async {
      // TODO
    });

    // is a hash used to identify the burnchain view for a node. it incorporates bitcoin chain information and PoX information. nodes that disagree on this value will appear to each other as forks. this value will change after every block
    // String poxConsensus
    test('to test the property `poxConsensus`', () async {
      // TODO
    });

    // latest bitcoin chain height
    // int burnBlockHeight
    test('to test the property `burnBlockHeight`', () async {
      // TODO
    });

    // same as burn_consensus, but evaluated at stable_burn_block_height
    // String stablePoxConsensus
    test('to test the property `stablePoxConsensus`', () async {
      // TODO
    });

    // leftover from stacks 1.0, basically always burn_block_height - 1
    // int stableBurnBlockHeight
    test('to test the property `stableBurnBlockHeight`', () async {
      // TODO
    });

    // is a version descriptor
    // String serverVersion
    test('to test the property `serverVersion`', () async {
      // TODO
    });

    // is similar to peer_version and will be used to differentiate between different testnets. this value will be different between mainnet and testnet. once launched, this value will not change
    // int networkId
    test('to test the property `networkId`', () async {
      // TODO
    });

    // same as network_id, but for bitcoin
    // int parentNetworkId
    test('to test the property `parentNetworkId`', () async {
      // TODO
    });

    // the latest Stacks chain height. Stacks forks can occur independent of the Bitcoin chain, that height doesn't increase 1-to-1 with the Bitcoin height
    // int stacksTipHeight
    test('to test the property `stacksTipHeight`', () async {
      // TODO
    });

    // the best known block hash for the Stack chain (not including any pending microblocks)
    // String stacksTip
    test('to test the property `stacksTip`', () async {
      // TODO
    });

    // the burn chain (i.e., bitcoin) consensus hash at the time that stacks_tip was mined
    // String stacksTipConsensusHash
    test('to test the property `stacksTipConsensusHash`', () async {
      // TODO
    });

    // the latest microblock hash if any microblocks were processed. if no microblock has been processed for the current block, a 000.., hex array is returned
    // String unanchoredTip
    test('to test the property `unanchoredTip`', () async {
      // TODO
    });

    // the block height at which the testnet network will be reset. not applicable for mainnet
    // int exitAtBlockHeight
    test('to test the property `exitAtBlockHeight`', () async {
      // TODO
    });


  });

}
