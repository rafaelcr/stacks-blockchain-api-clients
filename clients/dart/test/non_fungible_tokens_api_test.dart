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


/// tests for NonFungibleTokensApi
void main() {
  final instance = NonFungibleTokensApi();

  group('tests for NonFungibleTokensApi', () {
    // Non fungible tokens metadata for contract id
    //
    // Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
    //
    //Future<NonFungibleTokenMetadata> getContractNftMetadata(String contractId) async
    test('test getContractNftMetadata', () async {
      // TODO
    });

    // Non-Fungible Token history
    //
    // Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
    //
    //Future<NonFungibleTokenHistoryEventList> getNftHistory(String assetIdentifier, String value, { int limit, int offset, bool unanchored, bool txMetadata }) async
    test('test getNftHistory', () async {
      // TODO
    });

    // Non-Fungible Token holdings
    //
    // Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
    //
    //Future<NonFungibleTokenHoldingsList> getNftHoldings(String principal, { List<String> assetIdentifiers, int limit, int offset, bool unanchored, bool txMetadata }) async
    test('test getNftHoldings', () async {
      // TODO
    });

    // Non fungible tokens metadata list
    //
    // Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
    //
    //Future<NonFungibleTokensMetadataList> getNftMetadataList({ int limit, int offset }) async
    test('test getNftMetadataList', () async {
      // TODO
    });

    // Non-Fungible Token mints
    //
    // Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
    //
    //Future<NonFungibleTokenMintList> getNftMints(String assetIdentifier, { int limit, int offset, bool unanchored, bool txMetadata }) async
    test('test getNftMints', () async {
      // TODO
    });

  });
}
