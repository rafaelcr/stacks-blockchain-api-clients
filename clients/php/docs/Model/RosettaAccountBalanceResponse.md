# # RosettaAccountBalanceResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_identifier** | **object** |  |
**balances** | [**\StacksBlockchainApi\Model\RosettaAmount[]**](RosettaAmount.md) | A single account balance may have multiple currencies |
**coins** | [**\StacksBlockchainApi\Model\RosettaCoin[]**](RosettaCoin.md) | If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don&#39;t need to maintain their own indexer to track their UTXOs. | [optional]
**metadata** | [**\StacksBlockchainApi\Model\RosettaAccountBalanceResponseMetadata**](RosettaAccountBalanceResponseMetadata.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
