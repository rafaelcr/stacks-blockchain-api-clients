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


/// tests for AccountsApi
void main() {
  final instance = AccountsApi();

  group('tests for AccountsApi', () {
    // Get account assets
    //
    // Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.
    //
    //Future<AddressAssetsListResponse> getAccountAssets(String principal, { int limit, int offset, bool unanchored, String untilBlock }) async
    test('test getAccountAssets', () async {
      // TODO
    });

    // Get account balances
    //
    // Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.
    //
    //Future<AddressBalanceResponse> getAccountBalance(String principal, { bool unanchored, String untilBlock }) async
    test('test getAccountBalance', () async {
      // TODO
    });

    // Get inbound STX transfers
    //
    // Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the `send-many-memo` bulk sending contract. 
    //
    //Future<AddressStxInboundListResponse> getAccountInbound(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock }) async
    test('test getAccountInbound', () async {
      // TODO
    });

    // Get account info
    //
    // Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 
    //
    //Future<AccountDataResponse> getAccountInfo(String principal, { int proof, String tip }) async
    test('test getAccountInfo', () async {
      // TODO
    });

    // Get nft events
    //
    // **NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 
    //
    //Future<AddressNftListResponse> getAccountNft(String principal, { int limit, int offset, bool unanchored, String untilBlock }) async
    test('test getAccountNft', () async {
      // TODO
    });

    // Get the latest nonce used by an account
    //
    // Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.
    //
    //Future<AddressNonces> getAccountNonces(String principal, { num blockHeight, String blockHash }) async
    test('test getAccountNonces', () async {
      // TODO
    });

    // Get account STX balance
    //
    // Retrieves STX token balance for a given Address or Contract Identifier.
    //
    //Future<Object> getAccountStxBalance(String principal, { bool unanchored, String untilBlock }) async
    test('test getAccountStxBalance', () async {
      // TODO
    });

    // Get account transactions
    //
    // Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
    //
    //Future<AddressTransactionsListResponse> getAccountTransactions(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock }) async
    test('test getAccountTransactions', () async {
      // TODO
    });

    // Get account transactions including STX transfers for each transaction.
    //
    // Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.
    //
    //Future<AddressTransactionsWithTransfersListResponse> getAccountTransactionsWithTransfers(String principal, { int limit, int offset, num height, bool unanchored, String untilBlock }) async
    test('test getAccountTransactionsWithTransfers', () async {
      // TODO
    });

    // Get account transaction information for specific transaction
    //
    // Retrieves transaction details for a given Transcation Id `tx_id`, for a given account or contract Identifier.
    //
    //Future<AddressTransactionWithTransfers> getSingleTransactionWithTransfers(String principal, String txId) async
    test('test getSingleTransactionWithTransfers', () async {
      // TODO
    });

  });
}
