

# RosettaCoin

If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don't need to maintain their own indexer to track their UTXOs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coinIdentifier** | [**RosettaAccountBalanceResponseCoinIdentifier**](RosettaAccountBalanceResponseCoinIdentifier.md) |  | 
**amount** | **Object** |  | 



