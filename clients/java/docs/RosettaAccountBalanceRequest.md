

# RosettaAccountBalanceRequest

An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networkIdentifier** | **Object** |  | 
**accountIdentifier** | [**RosettaAccount**](RosettaAccount.md) |  | 
**blockIdentifier** | [**AnyOfobjectobject**](AnyOfobjectobject.md) | When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block. |  [optional]



