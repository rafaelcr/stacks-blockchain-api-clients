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


/// tests for SmartContractsApi
void main() {
  final instance = SmartContractsApi();

  group('tests for SmartContractsApi', () {
    // Call read-only function
    //
    // Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 
    //
    //Future<ReadOnlyFunctionSuccessResponse> callReadOnlyFunction(String contractAddress, String contractName, String functionName, ReadOnlyFunctionArgs readOnlyFunctionArgs, { String tip }) async
    test('test callReadOnlyFunction', () async {
      // TODO
    });

    // Get contract info
    //
    // Retrieves details of a contract with a given `contract_id`
    //
    //Future<Object> getContractById(String contractId, { bool unanchored }) async
    test('test getContractById', () async {
      // TODO
    });

    // Get specific data-map inside a contract
    //
    // Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 
    //
    //Future<MapEntryResponse> getContractDataMapEntry(String contractAddress, String contractName, String mapName, String key, { int proof, String tip }) async
    test('test getContractDataMapEntry', () async {
      // TODO
    });

    // Get contract events
    //
    // Retrieves a list of events that have been triggered by a given `contract_id`
    //
    //Future<AnyOfobjectobjectobjectobjectobject> getContractEventsById(String contractId, { int limit, int offset, bool unanchored }) async
    test('test getContractEventsById', () async {
      // TODO
    });

    // Get contract interface
    //
    // Retrieves a contract interface with a given `contract_address` and `contract name`
    //
    //Future<ContractInterfaceResponse> getContractInterface(String contractAddress, String contractName, { String tip }) async
    test('test getContractInterface', () async {
      // TODO
    });

    // Get contract source
    //
    // Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data
    //
    //Future<ContractSourceResponse> getContractSource(String contractAddress, String contractName, { int proof, String tip }) async
    test('test getContractSource', () async {
      // TODO
    });

    // Get contracts by trait
    //
    // Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens
    //
    //Future<ContractListResponse> getContractsByTrait(String traitAbi, { int limit, int offset }) async
    test('test getContractsByTrait', () async {
      // TODO
    });

  });
}
