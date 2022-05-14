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


/// tests for RosettaApi
void main() {
  final instance = RosettaApi();

  group('tests for RosettaApi', () {
    // Get an Account Balance
    //
    // An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed. 
    //
    //Future<RosettaAccountBalanceResponse> rosettaAccountBalance(RosettaAccountBalanceRequest rosettaAccountBalanceRequest) async
    test('test rosettaAccountBalance', () async {
      // TODO
    });

    // Get a Block
    //
    // Retrieves the Block information for a given block identifier including a list of all transactions in the block.
    //
    //Future<RosettaBlockResponse> rosettaBlock(RosettaBlockRequest rosettaBlockRequest) async
    test('test rosettaBlock', () async {
      // TODO
    });

    // Get a Block Transaction
    //
    // Retrieves a Transaction included in a block that is not returned in a BlockResponse.
    //
    //Future<RosettaBlockTransactionResponse> rosettaBlockTransaction(RosettaBlockTransactionRequest rosettaBlockTransactionRequest) async
    test('test rosettaBlockTransaction', () async {
      // TODO
    });

    // Create Network Transaction from Signatures
    //
    // Take unsigned transaction and signature, combine both and return signed transaction
    //
    //Future<RosettaConstructionCombineResponse> rosettaConstructionCombine(RosettaConstructionCombineRequest rosettaConstructionCombineRequest) async
    test('test rosettaConstructionCombine', () async {
      // TODO
    });

    // Derive an AccountIdentifier from a PublicKey
    //
    // Retrieves the Account Identifier information based on a Public Key for a given network
    //
    //Future<RosettaConstructionDeriveResponse> rosettaConstructionDerive(RosettaConstructionDeriveRequest rosettaConstructionDeriveRequest) async
    test('test rosettaConstructionDerive', () async {
      // TODO
    });

    // Get the Hash of a Signed Transaction
    //
    // Retrieves the network-specific transaction hash for a signed transaction.
    //
    //Future<RosettaConstructionHashResponse> rosettaConstructionHash(RosettaConstructionHashRequest rosettaConstructionHashRequest) async
    test('test rosettaConstructionHash', () async {
      // TODO
    });

    // Get Metadata for Transaction Construction
    //
    // To Do
    //
    //Future<RosettaConstructionMetadataResponse> rosettaConstructionMetadata(RosettaConstructionMetadataRequest rosettaConstructionMetadataRequest) async
    test('test rosettaConstructionMetadata', () async {
      // TODO
    });

    // Parse a Transaction
    //
    // TODO
    //
    //Future<RosettaConstructionParseResponse> rosettaConstructionParse(RosettaConstructionParseRequest rosettaConstructionParseRequest) async
    test('test rosettaConstructionParse', () async {
      // TODO
    });

    // Generate an Unsigned Transaction and Signing Payloads
    //
    // Generate and unsigned transaction from operations and metadata
    //
    //Future<RosettaConstructionPayloadResponse> rosettaConstructionPayloads(RosettaConstructionPayloadsRequest rosettaConstructionPayloadsRequest) async
    test('test rosettaConstructionPayloads', () async {
      // TODO
    });

    // Create a Request to Fetch Metadata
    //
    // TODO
    //
    //Future<RosettaConstructionPreprocessResponse> rosettaConstructionPreprocess(RosettaConstructionPreprocessRequest rosettaConstructionPreprocessRequest) async
    test('test rosettaConstructionPreprocess', () async {
      // TODO
    });

    // Submit a Signed Transaction
    //
    // Submit a pre-signed transaction to the node.
    //
    //Future<RosettaConstructionSubmitResponse> rosettaConstructionSubmit(RosettaConstructionSubmitRequest rosettaConstructionSubmitRequest) async
    test('test rosettaConstructionSubmit', () async {
      // TODO
    });

    // Get All Mempool Transactions
    //
    // Retrieves a list of transcations currently in the mempool for a given network.
    //
    //Future<RosettaMempoolResponse> rosettaMempool(RosettaMempoolRequest rosettaMempoolRequest) async
    test('test rosettaMempool', () async {
      // TODO
    });

    // Get a Mempool Transaction
    //
    // Retrieves transaction details from the mempool for a given transaction id from a given network.
    //
    //Future<RosettaMempoolTransactionResponse> rosettaMempoolTransaction(RosettaMempoolTransactionRequest rosettaMempoolTransactionRequest) async
    test('test rosettaMempoolTransaction', () async {
      // TODO
    });

    // Get List of Available Networks
    //
    // Retrieves a list of NetworkIdentifiers that the Rosetta server supports.
    //
    //Future<RosettaNetworkListResponse> rosettaNetworkList() async
    test('test rosettaNetworkList', () async {
      // TODO
    });

    // Get Network Options
    //
    // Retrieves the version information and allowed network-specific types for a NetworkIdentifier. Any NetworkIdentifier returned by /network/list should be accessible here. Because options are retrievable in the context of a NetworkIdentifier, it is possible to define unique options for each network. 
    //
    //Future<RosettaNetworkOptionsResponse> rosettaNetworkOptions(RosettaOptionsRequest rosettaOptionsRequest) async
    test('test rosettaNetworkOptions', () async {
      // TODO
    });

    // Get Network Status
    //
    // Retrieves the current status of the network requested. Any NetworkIdentifier returned by /network/list should be accessible here. 
    //
    //Future<Map<String, Object>> rosettaNetworkStatus(RosettaStatusRequest rosettaStatusRequest) async
    test('test rosettaNetworkStatus', () async {
      // TODO
    });

  });
}
