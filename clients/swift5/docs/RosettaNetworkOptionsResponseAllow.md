# RosettaNetworkOptionsResponseAllow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operationStatuses** | [RosettaOperationStatus] | All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error. | 
**operationTypes** | [AnyOfstring] | All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error. | 
**errors** | [RosettaErrorNoDetails] | All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error. | 
**historicalBalanceLookup** | **Bool** | Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


