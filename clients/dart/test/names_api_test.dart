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


/// tests for NamesApi
void main() {
  final instance = NamesApi();

  group('tests for NamesApi', () {
    // Get Zone File
    //
    // Retrieves a user’s raw zone file. This only works for RFC-compliant zone files. This method returns an error for names that have non-standard zone files.
    //
    //Future<AnyOfobjectobject> fetchZoneFile(String name) async
    test('test fetchZoneFile', () async {
      // TODO
    });

    // Get All Names
    //
    // Retrieves a list of all names known to the node.
    //
    //Future<List<String>> getAllNames(int page) async
    test('test getAllNames', () async {
      // TODO
    });

    // Get All Namespaces
    //
    // Retrieves a list of all namespaces known to the node.
    //
    //Future<BnsGetAllNamespacesResponse> getAllNamespaces() async
    test('test getAllNamespaces', () async {
      // TODO
    });

    // Get Historical Zone File
    //
    // Retrieves the historical zonefile specified by the username and zone hash.
    //
    //Future<AnyOfobjectobject> getHistoricalZoneFile(String name, String zoneFileHash) async
    test('test getHistoricalZoneFile', () async {
      // TODO
    });

    // Get Name History
    //
    // Retrieves a history of all blockchain records of a registered name.
    //
    //Future<Object> getNameHistory(String name, int page) async
    test('test getNameHistory', () async {
      // TODO
    });

    // Get Name Details
    //
    // Retrieves details of a given name including the `address`, `status` and last transaction id - `last_txid`.
    //
    //Future<BnsGetNameInfoResponse> getNameInfo(String name) async
    test('test getNameInfo', () async {
      // TODO
    });

    // Get Name Price
    //
    // Retrieves the price of a name. The `amount` given will be in the smallest possible units of the currency.
    //
    //Future<BnsGetNamePriceResponse> getNamePrice(String name) async
    test('test getNamePrice', () async {
      // TODO
    });

    // Get Names Owned by Address
    //
    // Retrieves a list of names owned by the address provided.
    //
    //Future<BnsNamesOwnByAddressResponse> getNamesOwnedByAddress(String blockchain, String address) async
    test('test getNamesOwnedByAddress', () async {
      // TODO
    });

    // Get Namespace Names
    //
    // Retrieves a list of names within a given namespace.
    //
    //Future<List<String>> getNamespaceNames(String tld, int page) async
    test('test getNamespaceNames', () async {
      // TODO
    });

    // Get Namespace Price
    //
    // Retrieves the price of a namespace. The `amount` given will be in the smallest possible units of the currency.
    //
    //Future<BnsGetNamespacePriceResponse> getNamespacePrice(String tld) async
    test('test getNamespacePrice', () async {
      // TODO
    });

  });
}
