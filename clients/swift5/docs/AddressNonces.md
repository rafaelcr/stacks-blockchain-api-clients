# AddressNonces

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastMempoolTxNonce** | **Int** | The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address. | 
**lastExecutedTxNonce** | **Int** | The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address. | 
**possibleNextNonce** | **Int** | The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API&#39;s mempool or transactions aren&#39;t fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called. | 
**detectedMissingNonces** | **[Int]** | Nonces that appear to be missing and likely causing a mempool transaction to be stuck. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


