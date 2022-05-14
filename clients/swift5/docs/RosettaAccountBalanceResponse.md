# RosettaAccountBalanceResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockIdentifier** | [**AnyCodable**](AnyCodable.md) |  | 
**balances** | [RosettaAmount] | A single account balance may have multiple currencies | 
**coins** | [RosettaCoin] | If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don&#39;t need to maintain their own indexer to track their UTXOs. | [optional] 
**metadata** | [**RosettaAccountBalanceResponseMetadata**](RosettaAccountBalanceResponseMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


