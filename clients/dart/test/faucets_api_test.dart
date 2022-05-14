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


/// tests for FaucetsApi
void main() {
  final instance = FaucetsApi();

  group('tests for FaucetsApi', () {
    // Add testnet BTC tokens to address
    //
    // Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    //
    //Future<Object> runFaucetBtc(String address, { InlineObject1 inlineObject1 }) async
    test('test runFaucetBtc', () async {
      // TODO
    });

    // Get STX testnet tokens
    //
    // Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    //
    //Future<RunFaucetResponse> runFaucetStx(String address, { bool stacking, InlineObject inlineObject }) async
    test('test runFaucetStx', () async {
      // TODO
    });

  });
}
