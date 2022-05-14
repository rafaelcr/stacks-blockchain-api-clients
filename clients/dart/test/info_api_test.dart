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


/// tests for InfoApi
void main() {
  final instance = InfoApi();

  group('tests for InfoApi', () {
    // Get Core API info
    //
    // Retrieves information about the Core API including the server version
    //
    //Future<CoreNodeInfoResponse> getCoreApiInfo() async
    test('test getCoreApiInfo', () async {
      // TODO
    });

    // Get a given network's target block time
    //
    // Retrieves the target block time for a given network. The network can be mainnet or testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
    //
    //Future<Object> getNetworkBlockTimeByNetwork(String network) async
    test('test getNetworkBlockTimeByNetwork', () async {
      // TODO
    });

    // Get the network target block time
    //
    // Retrieves the target block times for mainnet and testnet. The block time is hardcoded and will change throughout the implementation phases of the testnet.
    //
    //Future<NetworkBlockTimesResponse> getNetworkBlockTimes() async
    test('test getNetworkBlockTimes', () async {
      // TODO
    });

    // Get Proof-of-Transfer details
    //
    // Retrieves Proof-of-Transfer (PoX) information. Can be used for Stacking.
    //
    //Future<CoreNodePoxResponse> getPoxInfo() async
    test('test getPoxInfo', () async {
      // TODO
    });

    // API status
    //
    // Retrieves the running status of the Stacks Blockchain API, including the server version and current chain tip information.
    //
    //Future<ServerStatusResponse> getStatus() async
    test('test getStatus', () async {
      // TODO
    });

    // Get total and unlocked STX supply
    //
    // Retrieves the total and unlocked STX supply. More information on Stacking can be found [here] (https://docs.stacks.co/understand-stacks/stacking).
    //
    //Future<GetStxSupplyResponse> getStxSupply({ num height }) async
    test('test getStxSupply', () async {
      // TODO
    });

    // Get circulating STX supply in plain text format
    //
    // Retrieves the STX tokens currently in circulation that have been unlocked as plain text.
    //
    //Future<String> getStxSupplyCirculatingPlain() async
    test('test getStxSupplyCirculatingPlain', () async {
      // TODO
    });

    // Get total STX supply in plain text format
    //
    // Retrieves the total supply for STX tokens as plain text.
    //
    //Future<String> getStxSupplyTotalSupplyPlain() async
    test('test getStxSupplyTotalSupplyPlain', () async {
      // TODO
    });

    // Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
    //
    // Retrieves total supply of STX tokens including those currently in circulation that have been unlocked.
    //
    //Future<GetStxSupplyLegacyFormatResponse> getTotalStxSupplyLegacyFormat({ num height }) async
    test('test getTotalStxSupplyLegacyFormat', () async {
      // TODO
    });

  });
}
