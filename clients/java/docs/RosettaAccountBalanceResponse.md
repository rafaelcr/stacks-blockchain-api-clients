

# RosettaAccountBalanceResponse

An AccountBalanceResponse is returned on the /account/balance endpoint. If an account has a balance for each AccountIdentifier describing it (ex: an ERC-20 token balance on a few smart contracts), an account balance request must be made with each AccountIdentifier.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | **Object** |  | 
**balances** | [**List&lt;RosettaAmount&gt;**](RosettaAmount.md) | A single account balance may have multiple currencies | 
**coins** | [**List&lt;RosettaCoin&gt;**](RosettaCoin.md) | If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don&#39;t need to maintain their own indexer to track their UTXOs. |  [optional]
**metadata** | [**RosettaAccountBalanceResponseMetadata**](RosettaAccountBalanceResponseMetadata.md) |  |  [optional]



