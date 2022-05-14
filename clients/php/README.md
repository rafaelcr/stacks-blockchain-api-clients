# StacksBlockchainApi

Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.

<a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a>



## Installation & Usage

### Requirements

PHP 7.3 and later.
Should also work with PHP 8.0 but has not been tested.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/StacksBlockchainApi/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new StacksBlockchainApi\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$principal = 'principal_example'; // string | Stacks address or a Contract identifier (e.g. `SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info`)
$limit = 56; // int | max number of account assets to fetch
$offset = 56; // int | index of first account assets to fetch
$unanchored = false; // bool | Include transaction data from unanchored (i.e. unconfirmed) microblocks
$until_block = 'until_block_example'; // string | returned data representing the state at that point in time, rather than the current block.

try {
    $result = $apiInstance->getAccountAssets($principal, $limit, $offset, $unanchored, $until_block);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->getAccountAssets: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://stacks-node-api.mainnet.stacks.co*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**getAccountAssets**](docs/Api/AccountsApi.md#getaccountassets) | **GET** /extended/v1/address/{principal}/assets | Get account assets
*AccountsApi* | [**getAccountBalance**](docs/Api/AccountsApi.md#getaccountbalance) | **GET** /extended/v1/address/{principal}/balances | Get account balances
*AccountsApi* | [**getAccountInbound**](docs/Api/AccountsApi.md#getaccountinbound) | **GET** /extended/v1/address/{principal}/stx_inbound | Get inbound STX transfers
*AccountsApi* | [**getAccountInfo**](docs/Api/AccountsApi.md#getaccountinfo) | **GET** /v2/accounts/{principal} | Get account info
*AccountsApi* | [**getAccountNft**](docs/Api/AccountsApi.md#getaccountnft) | **GET** /extended/v1/address/{principal}/nft_events | Get nft events
*AccountsApi* | [**getAccountNonces**](docs/Api/AccountsApi.md#getaccountnonces) | **GET** /extended/v1/address/{principal}/nonces | Get the latest nonce used by an account
*AccountsApi* | [**getAccountStxBalance**](docs/Api/AccountsApi.md#getaccountstxbalance) | **GET** /extended/v1/address/{principal}/stx | Get account STX balance
*AccountsApi* | [**getAccountTransactions**](docs/Api/AccountsApi.md#getaccounttransactions) | **GET** /extended/v1/address/{principal}/transactions | Get account transactions
*AccountsApi* | [**getAccountTransactionsWithTransfers**](docs/Api/AccountsApi.md#getaccounttransactionswithtransfers) | **GET** /extended/v1/address/{principal}/transactions_with_transfers | Get account transactions including STX transfers for each transaction.
*AccountsApi* | [**getSingleTransactionWithTransfers**](docs/Api/AccountsApi.md#getsingletransactionwithtransfers) | **GET** /extended/v1/address/{principal}/{tx_id}/with_transfers | Get account transaction information for specific transaction
*BlocksApi* | [**getBlockByBurnBlockHash**](docs/Api/BlocksApi.md#getblockbyburnblockhash) | **GET** /extended/v1/block/by_burn_block_hash/{burn_block_hash} | Get block by burnchain block hash
*BlocksApi* | [**getBlockByBurnBlockHeight**](docs/Api/BlocksApi.md#getblockbyburnblockheight) | **GET** /extended/v1/block/by_burn_block_height/{burn_block_height} | Get block by burnchain height
*BlocksApi* | [**getBlockByHash**](docs/Api/BlocksApi.md#getblockbyhash) | **GET** /extended/v1/block/{hash} | Get block by hash
*BlocksApi* | [**getBlockByHeight**](docs/Api/BlocksApi.md#getblockbyheight) | **GET** /extended/v1/block/by_height/{height} | Get block by height
*BlocksApi* | [**getBlockList**](docs/Api/BlocksApi.md#getblocklist) | **GET** /extended/v1/block | Get recent blocks
*FaucetsApi* | [**runFaucetBtc**](docs/Api/FaucetsApi.md#runfaucetbtc) | **POST** /extended/v1/faucets/btc | Add testnet BTC tokens to address
*FaucetsApi* | [**runFaucetStx**](docs/Api/FaucetsApi.md#runfaucetstx) | **POST** /extended/v1/faucets/stx | Get STX testnet tokens
*FeesApi* | [**fetchFeeRate**](docs/Api/FeesApi.md#fetchfeerate) | **POST** /extended/v1/fee_rate | fetch fee rate
*FeesApi* | [**getFeeTransfer**](docs/Api/FeesApi.md#getfeetransfer) | **GET** /v2/fees/transfer | Get estimated fee
*FungibleTokensApi* | [**getContractFtMetadata**](docs/Api/FungibleTokensApi.md#getcontractftmetadata) | **GET** /extended/v1/tokens/{contractId}/ft/metadata | Fungible tokens metadata for contract id
*FungibleTokensApi* | [**getFtMetadataList**](docs/Api/FungibleTokensApi.md#getftmetadatalist) | **GET** /extended/v1/tokens/ft/metadata | Fungible tokens metadata list
*InfoApi* | [**getCoreApiInfo**](docs/Api/InfoApi.md#getcoreapiinfo) | **GET** /v2/info | Get Core API info
*InfoApi* | [**getNetworkBlockTimeByNetwork**](docs/Api/InfoApi.md#getnetworkblocktimebynetwork) | **GET** /extended/v1/info/network_block_time/{network} | Get a given network&#39;s target block time
*InfoApi* | [**getNetworkBlockTimes**](docs/Api/InfoApi.md#getnetworkblocktimes) | **GET** /extended/v1/info/network_block_times | Get the network target block time
*InfoApi* | [**getPoxInfo**](docs/Api/InfoApi.md#getpoxinfo) | **GET** /v2/pox | Get Proof-of-Transfer details
*InfoApi* | [**getStatus**](docs/Api/InfoApi.md#getstatus) | **GET** /extended/v1/status | API status
*InfoApi* | [**getStxSupply**](docs/Api/InfoApi.md#getstxsupply) | **GET** /extended/v1/stx_supply | Get total and unlocked STX supply
*InfoApi* | [**getStxSupplyCirculatingPlain**](docs/Api/InfoApi.md#getstxsupplycirculatingplain) | **GET** /extended/v1/stx_supply/circulating/plain | Get circulating STX supply in plain text format
*InfoApi* | [**getStxSupplyTotalSupplyPlain**](docs/Api/InfoApi.md#getstxsupplytotalsupplyplain) | **GET** /extended/v1/stx_supply/total/plain | Get total STX supply in plain text format
*InfoApi* | [**getTotalStxSupplyLegacyFormat**](docs/Api/InfoApi.md#gettotalstxsupplylegacyformat) | **GET** /extended/v1/stx_supply/legacy_format | Get total and unlocked STX supply (results formatted the same as the legacy 1.0 API)
*MicroblocksApi* | [**getMicroblockByHash**](docs/Api/MicroblocksApi.md#getmicroblockbyhash) | **GET** /extended/v1/microblock/{hash} | Get microblock
*MicroblocksApi* | [**getMicroblockList**](docs/Api/MicroblocksApi.md#getmicroblocklist) | **GET** /extended/v1/microblock | Get recent microblocks
*MicroblocksApi* | [**getUnanchoredTxs**](docs/Api/MicroblocksApi.md#getunanchoredtxs) | **GET** /extended/v1/microblock/unanchored/txs | Get the list of current transactions that belong to unanchored microblocks
*NamesApi* | [**fetchZoneFile**](docs/Api/NamesApi.md#fetchzonefile) | **GET** /v1/names/{name}/zonefile | Get Zone File
*NamesApi* | [**getAllNames**](docs/Api/NamesApi.md#getallnames) | **GET** /v1/names | Get All Names
*NamesApi* | [**getAllNamespaces**](docs/Api/NamesApi.md#getallnamespaces) | **GET** /v1/namespaces | Get All Namespaces
*NamesApi* | [**getHistoricalZoneFile**](docs/Api/NamesApi.md#gethistoricalzonefile) | **GET** /v1/names/{name}/zonefile/{zoneFileHash} | Get Historical Zone File
*NamesApi* | [**getNameHistory**](docs/Api/NamesApi.md#getnamehistory) | **GET** /v1/names/{name}/history | Get Name History
*NamesApi* | [**getNameInfo**](docs/Api/NamesApi.md#getnameinfo) | **GET** /v1/names/{name} | Get Name Details
*NamesApi* | [**getNamePrice**](docs/Api/NamesApi.md#getnameprice) | **GET** /v2/prices/names/{name} | Get Name Price
*NamesApi* | [**getNamesOwnedByAddress**](docs/Api/NamesApi.md#getnamesownedbyaddress) | **GET** /v1/addresses/{blockchain}/{address} | Get Names Owned by Address
*NamesApi* | [**getNamespaceNames**](docs/Api/NamesApi.md#getnamespacenames) | **GET** /v1/namespaces/{tld}/names | Get Namespace Names
*NamesApi* | [**getNamespacePrice**](docs/Api/NamesApi.md#getnamespaceprice) | **GET** /v2/prices/namespaces/{tld} | Get Namespace Price
*NonFungibleTokensApi* | [**getContractNftMetadata**](docs/Api/NonFungibleTokensApi.md#getcontractnftmetadata) | **GET** /extended/v1/tokens/{contractId}/nft/metadata | Non fungible tokens metadata for contract id
*NonFungibleTokensApi* | [**getNftHistory**](docs/Api/NonFungibleTokensApi.md#getnfthistory) | **GET** /extended/v1/tokens/nft/history | Non-Fungible Token history
*NonFungibleTokensApi* | [**getNftHoldings**](docs/Api/NonFungibleTokensApi.md#getnftholdings) | **GET** /extended/v1/tokens/nft/holdings | Non-Fungible Token holdings
*NonFungibleTokensApi* | [**getNftMetadataList**](docs/Api/NonFungibleTokensApi.md#getnftmetadatalist) | **GET** /extended/v1/tokens/nft/metadata | Non fungible tokens metadata list
*NonFungibleTokensApi* | [**getNftMints**](docs/Api/NonFungibleTokensApi.md#getnftmints) | **GET** /extended/v1/tokens/nft/mints | Non-Fungible Token mints
*RosettaApi* | [**rosettaAccountBalance**](docs/Api/RosettaApi.md#rosettaaccountbalance) | **POST** /rosetta/v1/account/balance | Get an Account Balance
*RosettaApi* | [**rosettaBlock**](docs/Api/RosettaApi.md#rosettablock) | **POST** /rosetta/v1/block | Get a Block
*RosettaApi* | [**rosettaBlockTransaction**](docs/Api/RosettaApi.md#rosettablocktransaction) | **POST** /rosetta/v1/block/transaction | Get a Block Transaction
*RosettaApi* | [**rosettaConstructionCombine**](docs/Api/RosettaApi.md#rosettaconstructioncombine) | **POST** /rosetta/v1/construction/combine | Create Network Transaction from Signatures
*RosettaApi* | [**rosettaConstructionDerive**](docs/Api/RosettaApi.md#rosettaconstructionderive) | **POST** /rosetta/v1/construction/derive | Derive an AccountIdentifier from a PublicKey
*RosettaApi* | [**rosettaConstructionHash**](docs/Api/RosettaApi.md#rosettaconstructionhash) | **POST** /rosetta/v1/construction/hash | Get the Hash of a Signed Transaction
*RosettaApi* | [**rosettaConstructionMetadata**](docs/Api/RosettaApi.md#rosettaconstructionmetadata) | **POST** /rosetta/v1/construction/metadata | Get Metadata for Transaction Construction
*RosettaApi* | [**rosettaConstructionParse**](docs/Api/RosettaApi.md#rosettaconstructionparse) | **POST** /rosetta/v1/construction/parse | Parse a Transaction
*RosettaApi* | [**rosettaConstructionPayloads**](docs/Api/RosettaApi.md#rosettaconstructionpayloads) | **POST** /rosetta/v1/construction/payloads | Generate an Unsigned Transaction and Signing Payloads
*RosettaApi* | [**rosettaConstructionPreprocess**](docs/Api/RosettaApi.md#rosettaconstructionpreprocess) | **POST** /rosetta/v1/construction/preprocess | Create a Request to Fetch Metadata
*RosettaApi* | [**rosettaConstructionSubmit**](docs/Api/RosettaApi.md#rosettaconstructionsubmit) | **POST** /rosetta/v1/construction/submit | Submit a Signed Transaction
*RosettaApi* | [**rosettaMempool**](docs/Api/RosettaApi.md#rosettamempool) | **POST** /rosetta/v1/mempool | Get All Mempool Transactions
*RosettaApi* | [**rosettaMempoolTransaction**](docs/Api/RosettaApi.md#rosettamempooltransaction) | **POST** /rosetta/v1/mempool/transaction | Get a Mempool Transaction
*RosettaApi* | [**rosettaNetworkList**](docs/Api/RosettaApi.md#rosettanetworklist) | **POST** /rosetta/v1/network/list | Get List of Available Networks
*RosettaApi* | [**rosettaNetworkOptions**](docs/Api/RosettaApi.md#rosettanetworkoptions) | **POST** /rosetta/v1/network/options | Get Network Options
*RosettaApi* | [**rosettaNetworkStatus**](docs/Api/RosettaApi.md#rosettanetworkstatus) | **POST** /rosetta/v1/network/status | Get Network Status
*SearchApi* | [**searchById**](docs/Api/SearchApi.md#searchbyid) | **GET** /extended/v1/search/{id} | Search
*SmartContractsApi* | [**callReadOnlyFunction**](docs/Api/SmartContractsApi.md#callreadonlyfunction) | **POST** /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name} | Call read-only function
*SmartContractsApi* | [**getContractById**](docs/Api/SmartContractsApi.md#getcontractbyid) | **GET** /extended/v1/contract/{contract_id} | Get contract info
*SmartContractsApi* | [**getContractDataMapEntry**](docs/Api/SmartContractsApi.md#getcontractdatamapentry) | **POST** /v2/map_entry/{contract_address}/{contract_name}/{map_name} | Get specific data-map inside a contract
*SmartContractsApi* | [**getContractEventsById**](docs/Api/SmartContractsApi.md#getcontracteventsbyid) | **GET** /extended/v1/contract/{contract_id}/events | Get contract events
*SmartContractsApi* | [**getContractInterface**](docs/Api/SmartContractsApi.md#getcontractinterface) | **GET** /v2/contracts/interface/{contract_address}/{contract_name} | Get contract interface
*SmartContractsApi* | [**getContractSource**](docs/Api/SmartContractsApi.md#getcontractsource) | **GET** /v2/contracts/source/{contract_address}/{contract_name} | Get contract source
*SmartContractsApi* | [**getContractsByTrait**](docs/Api/SmartContractsApi.md#getcontractsbytrait) | **GET** /extended/v1/contract/by_trait | Get contracts by trait
*StackingRewardsApi* | [**getBurnchainRewardList**](docs/Api/StackingRewardsApi.md#getburnchainrewardlist) | **GET** /extended/v1/burnchain/rewards | Get recent burnchain reward recipients
*StackingRewardsApi* | [**getBurnchainRewardListByAddress**](docs/Api/StackingRewardsApi.md#getburnchainrewardlistbyaddress) | **GET** /extended/v1/burnchain/rewards/{address} | Get recent burnchain reward for the given recipient
*StackingRewardsApi* | [**getBurnchainRewardSlotHolders**](docs/Api/StackingRewardsApi.md#getburnchainrewardslotholders) | **GET** /extended/v1/burnchain/reward_slot_holders | Get recent reward slot holders
*StackingRewardsApi* | [**getBurnchainRewardSlotHoldersByAddress**](docs/Api/StackingRewardsApi.md#getburnchainrewardslotholdersbyaddress) | **GET** /extended/v1/burnchain/reward_slot_holders/{address} | Get recent reward slot holder entries for the given address
*StackingRewardsApi* | [**getBurnchainRewardsTotalByAddress**](docs/Api/StackingRewardsApi.md#getburnchainrewardstotalbyaddress) | **GET** /extended/v1/burnchain/rewards/{address}/total | Get total burnchain rewards for the given recipient
*TransactionsApi* | [**getAddressMempoolTransactions**](docs/Api/TransactionsApi.md#getaddressmempooltransactions) | **GET** /extended/v1/address/{address}/mempool | Transactions for address
*TransactionsApi* | [**getDroppedMempoolTransactionList**](docs/Api/TransactionsApi.md#getdroppedmempooltransactionlist) | **GET** /extended/v1/tx/mempool/dropped | Get dropped mempool transactions
*TransactionsApi* | [**getMempoolTransactionList**](docs/Api/TransactionsApi.md#getmempooltransactionlist) | **GET** /extended/v1/tx/mempool | Get mempool transactions
*TransactionsApi* | [**getRawTransactionById**](docs/Api/TransactionsApi.md#getrawtransactionbyid) | **GET** /extended/v1/tx/{tx_id}/raw | Get Raw Transaction
*TransactionsApi* | [**getTransactionById**](docs/Api/TransactionsApi.md#gettransactionbyid) | **GET** /extended/v1/tx/{tx_id} | Get transaction
*TransactionsApi* | [**getTransactionList**](docs/Api/TransactionsApi.md#gettransactionlist) | **GET** /extended/v1/tx | Get recent transactions
*TransactionsApi* | [**getTransactionsByBlockHash**](docs/Api/TransactionsApi.md#gettransactionsbyblockhash) | **GET** /extended/v1/tx/block/{block_hash} | Transactions by block hash
*TransactionsApi* | [**getTransactionsByBlockHeight**](docs/Api/TransactionsApi.md#gettransactionsbyblockheight) | **GET** /extended/v1/tx/block_height/{height} | Transactions by block height
*TransactionsApi* | [**getTxListDetails**](docs/Api/TransactionsApi.md#gettxlistdetails) | **GET** /extended/v1/tx/multiple | Get list of details for transactions
*TransactionsApi* | [**postCoreNodeTransactions**](docs/Api/TransactionsApi.md#postcorenodetransactions) | **POST** /v2/transactions | Broadcast raw transaction

## Models

- [AccountDataResponse](docs/Model/AccountDataResponse.md)
- [AddressAssetsListResponse](docs/Model/AddressAssetsListResponse.md)
- [AddressBalanceResponse](docs/Model/AddressBalanceResponse.md)
- [AddressBalanceResponseStx](docs/Model/AddressBalanceResponseStx.md)
- [AddressNftListResponse](docs/Model/AddressNftListResponse.md)
- [AddressNftListResponseValue](docs/Model/AddressNftListResponseValue.md)
- [AddressNonces](docs/Model/AddressNonces.md)
- [AddressStxInboundListResponse](docs/Model/AddressStxInboundListResponse.md)
- [AddressTokenOfferingLocked](docs/Model/AddressTokenOfferingLocked.md)
- [AddressTransactionWithTransfers](docs/Model/AddressTransactionWithTransfers.md)
- [AddressTransactionWithTransfersFtTransfers](docs/Model/AddressTransactionWithTransfersFtTransfers.md)
- [AddressTransactionWithTransfersNftTransfers](docs/Model/AddressTransactionWithTransfersNftTransfers.md)
- [AddressTransactionWithTransfersStxTransfers](docs/Model/AddressTransactionWithTransfersStxTransfers.md)
- [AddressTransactionWithTransfersValue](docs/Model/AddressTransactionWithTransfersValue.md)
- [AddressTransactionsListResponse](docs/Model/AddressTransactionsListResponse.md)
- [AddressTransactionsWithTransfersListResponse](docs/Model/AddressTransactionsWithTransfersListResponse.md)
- [AddressUnlockSchedule](docs/Model/AddressUnlockSchedule.md)
- [Block](docs/Model/Block.md)
- [BlockListResponse](docs/Model/BlockListResponse.md)
- [BnsError](docs/Model/BnsError.md)
- [BnsGetAllNamespacesResponse](docs/Model/BnsGetAllNamespacesResponse.md)
- [BnsGetNameInfoResponse](docs/Model/BnsGetNameInfoResponse.md)
- [BnsGetNamePriceResponse](docs/Model/BnsGetNamePriceResponse.md)
- [BnsGetNamespacePriceResponse](docs/Model/BnsGetNamespacePriceResponse.md)
- [BnsNamesOwnByAddressResponse](docs/Model/BnsNamesOwnByAddressResponse.md)
- [BurnchainReward](docs/Model/BurnchainReward.md)
- [BurnchainRewardListResponse](docs/Model/BurnchainRewardListResponse.md)
- [BurnchainRewardSlotHolder](docs/Model/BurnchainRewardSlotHolder.md)
- [BurnchainRewardSlotHolderListResponse](docs/Model/BurnchainRewardSlotHolderListResponse.md)
- [BurnchainRewardsTotal](docs/Model/BurnchainRewardsTotal.md)
- [ChainTip](docs/Model/ChainTip.md)
- [ContractInterfaceResponse](docs/Model/ContractInterfaceResponse.md)
- [ContractListResponse](docs/Model/ContractListResponse.md)
- [ContractSourceResponse](docs/Model/ContractSourceResponse.md)
- [CoreNodeInfoResponse](docs/Model/CoreNodeInfoResponse.md)
- [CoreNodePoxResponse](docs/Model/CoreNodePoxResponse.md)
- [FeeRate](docs/Model/FeeRate.md)
- [FeeRateRequest](docs/Model/FeeRateRequest.md)
- [FungibleTokenMetadata](docs/Model/FungibleTokenMetadata.md)
- [FungibleTokensMetadataList](docs/Model/FungibleTokensMetadataList.md)
- [GetRawTransactionResult](docs/Model/GetRawTransactionResult.md)
- [GetStxSupplyLegacyFormatResponse](docs/Model/GetStxSupplyLegacyFormatResponse.md)
- [GetStxSupplyResponse](docs/Model/GetStxSupplyResponse.md)
- [InboundStxTransfer](docs/Model/InboundStxTransfer.md)
- [InlineObject](docs/Model/InlineObject.md)
- [InlineObject1](docs/Model/InlineObject1.md)
- [MapEntryResponse](docs/Model/MapEntryResponse.md)
- [MempoolTransactionListResponse](docs/Model/MempoolTransactionListResponse.md)
- [Microblock](docs/Model/Microblock.md)
- [MicroblockListResponse](docs/Model/MicroblockListResponse.md)
- [NetworkBlockTimesResponse](docs/Model/NetworkBlockTimesResponse.md)
- [NetworkBlockTimesResponseMainnet](docs/Model/NetworkBlockTimesResponseMainnet.md)
- [NetworkIdentifier](docs/Model/NetworkIdentifier.md)
- [NftEvent](docs/Model/NftEvent.md)
- [NonFungibleTokenHistoryEventList](docs/Model/NonFungibleTokenHistoryEventList.md)
- [NonFungibleTokenHoldingsList](docs/Model/NonFungibleTokenHoldingsList.md)
- [NonFungibleTokenMetadata](docs/Model/NonFungibleTokenMetadata.md)
- [NonFungibleTokenMintList](docs/Model/NonFungibleTokenMintList.md)
- [NonFungibleTokensMetadataList](docs/Model/NonFungibleTokensMetadataList.md)
- [OtherTransactionIdentifier](docs/Model/OtherTransactionIdentifier.md)
- [PostCoreNodeTransactionsError](docs/Model/PostCoreNodeTransactionsError.md)
- [ReadOnlyFunctionArgs](docs/Model/ReadOnlyFunctionArgs.md)
- [ReadOnlyFunctionSuccessResponse](docs/Model/ReadOnlyFunctionSuccessResponse.md)
- [RosettaAccount](docs/Model/RosettaAccount.md)
- [RosettaAccountBalanceRequest](docs/Model/RosettaAccountBalanceRequest.md)
- [RosettaAccountBalanceResponse](docs/Model/RosettaAccountBalanceResponse.md)
- [RosettaAccountBalanceResponseCoinIdentifier](docs/Model/RosettaAccountBalanceResponseCoinIdentifier.md)
- [RosettaAccountBalanceResponseMetadata](docs/Model/RosettaAccountBalanceResponseMetadata.md)
- [RosettaAccountIdentifier](docs/Model/RosettaAccountIdentifier.md)
- [RosettaAmount](docs/Model/RosettaAmount.md)
- [RosettaBlock](docs/Model/RosettaBlock.md)
- [RosettaBlockMetadata](docs/Model/RosettaBlockMetadata.md)
- [RosettaBlockRequest](docs/Model/RosettaBlockRequest.md)
- [RosettaBlockResponse](docs/Model/RosettaBlockResponse.md)
- [RosettaBlockTransactionRequest](docs/Model/RosettaBlockTransactionRequest.md)
- [RosettaBlockTransactionResponse](docs/Model/RosettaBlockTransactionResponse.md)
- [RosettaCoin](docs/Model/RosettaCoin.md)
- [RosettaCoinChange](docs/Model/RosettaCoinChange.md)
- [RosettaConstructionCombineRequest](docs/Model/RosettaConstructionCombineRequest.md)
- [RosettaConstructionCombineResponse](docs/Model/RosettaConstructionCombineResponse.md)
- [RosettaConstructionDeriveRequest](docs/Model/RosettaConstructionDeriveRequest.md)
- [RosettaConstructionDeriveResponse](docs/Model/RosettaConstructionDeriveResponse.md)
- [RosettaConstructionHashRequest](docs/Model/RosettaConstructionHashRequest.md)
- [RosettaConstructionHashResponse](docs/Model/RosettaConstructionHashResponse.md)
- [RosettaConstructionMetadataRequest](docs/Model/RosettaConstructionMetadataRequest.md)
- [RosettaConstructionMetadataResponse](docs/Model/RosettaConstructionMetadataResponse.md)
- [RosettaConstructionMetadataResponseMetadata](docs/Model/RosettaConstructionMetadataResponseMetadata.md)
- [RosettaConstructionParseRequest](docs/Model/RosettaConstructionParseRequest.md)
- [RosettaConstructionParseResponse](docs/Model/RosettaConstructionParseResponse.md)
- [RosettaConstructionPayloadResponse](docs/Model/RosettaConstructionPayloadResponse.md)
- [RosettaConstructionPayloadsRequest](docs/Model/RosettaConstructionPayloadsRequest.md)
- [RosettaConstructionPreprocessRequest](docs/Model/RosettaConstructionPreprocessRequest.md)
- [RosettaConstructionPreprocessResponse](docs/Model/RosettaConstructionPreprocessResponse.md)
- [RosettaConstructionSubmitRequest](docs/Model/RosettaConstructionSubmitRequest.md)
- [RosettaConstructionSubmitResponse](docs/Model/RosettaConstructionSubmitResponse.md)
- [RosettaCurrency](docs/Model/RosettaCurrency.md)
- [RosettaError](docs/Model/RosettaError.md)
- [RosettaErrorDetails](docs/Model/RosettaErrorDetails.md)
- [RosettaErrorNoDetails](docs/Model/RosettaErrorNoDetails.md)
- [RosettaMaxFeeAmount](docs/Model/RosettaMaxFeeAmount.md)
- [RosettaMempoolRequest](docs/Model/RosettaMempoolRequest.md)
- [RosettaMempoolResponse](docs/Model/RosettaMempoolResponse.md)
- [RosettaMempoolTransactionRequest](docs/Model/RosettaMempoolTransactionRequest.md)
- [RosettaMempoolTransactionResponse](docs/Model/RosettaMempoolTransactionResponse.md)
- [RosettaNetworkListResponse](docs/Model/RosettaNetworkListResponse.md)
- [RosettaNetworkListResponseSubNetworkIdentifier](docs/Model/RosettaNetworkListResponseSubNetworkIdentifier.md)
- [RosettaNetworkListResponseSubNetworkIdentifierMetadata](docs/Model/RosettaNetworkListResponseSubNetworkIdentifierMetadata.md)
- [RosettaNetworkOptionsResponse](docs/Model/RosettaNetworkOptionsResponse.md)
- [RosettaNetworkOptionsResponseAllow](docs/Model/RosettaNetworkOptionsResponseAllow.md)
- [RosettaNetworkOptionsResponseVersion](docs/Model/RosettaNetworkOptionsResponseVersion.md)
- [RosettaOperation](docs/Model/RosettaOperation.md)
- [RosettaOperationIdentifier](docs/Model/RosettaOperationIdentifier.md)
- [RosettaOperationStatus](docs/Model/RosettaOperationStatus.md)
- [RosettaOptions](docs/Model/RosettaOptions.md)
- [RosettaOptionsRequest](docs/Model/RosettaOptionsRequest.md)
- [RosettaParentBlockIdentifier](docs/Model/RosettaParentBlockIdentifier.md)
- [RosettaPublicKey](docs/Model/RosettaPublicKey.md)
- [RosettaRelatedOperation](docs/Model/RosettaRelatedOperation.md)
- [RosettaSignature](docs/Model/RosettaSignature.md)
- [RosettaStatusRequest](docs/Model/RosettaStatusRequest.md)
- [RosettaSubAccount](docs/Model/RosettaSubAccount.md)
- [RosettaTransaction](docs/Model/RosettaTransaction.md)
- [RosettaTransactionMetadata](docs/Model/RosettaTransactionMetadata.md)
- [RunFaucetResponse](docs/Model/RunFaucetResponse.md)
- [ServerStatusResponse](docs/Model/ServerStatusResponse.md)
- [SigningPayload](docs/Model/SigningPayload.md)
- [SmartContract](docs/Model/SmartContract.md)
- [TransactionIdentifier](docs/Model/TransactionIdentifier.md)
- [TransactionResults](docs/Model/TransactionResults.md)
- [UnanchoredTransactionListResponse](docs/Model/UnanchoredTransactionListResponse.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v3.0.3`
    - Package version: `1.0.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
