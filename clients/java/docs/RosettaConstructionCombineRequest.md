

# RosettaConstructionCombineRequest

RosettaConstructionCombineRequest is the input to the /construction/combine endpoint. It contains the unsigned transaction blob returned by /construction/payloads and all required signatures to create a network transaction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**unsignedTransaction** | **String** |  | 
**signatures** | [**List&lt;RosettaSignature&gt;**](RosettaSignature.md) |  | 



