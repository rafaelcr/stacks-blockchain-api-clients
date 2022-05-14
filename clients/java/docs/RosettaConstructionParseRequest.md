

# RosettaConstructionParseRequest

Parse is called on both unsigned and signed transactions to understand the intent of the formulated transaction. This is run as a sanity check before signing (after /construction/payloads) and before broadcast (after /construction/combine).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**signed** | **Boolean** | Signed is a boolean indicating whether the transaction is signed. | 
**transaction** | **String** | This must be either the unsigned transaction blob returned by /construction/payloads or the signed transaction blob returned by /construction/combine. | 



