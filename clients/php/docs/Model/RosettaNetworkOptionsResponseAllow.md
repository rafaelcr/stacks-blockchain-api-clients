# # RosettaNetworkOptionsResponseAllow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation_statuses** | [**\StacksBlockchainApi\Model\RosettaOperationStatus[]**](RosettaOperationStatus.md) | All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error. |
**operation_types** | [**AnyOfString[]**](AnyOfString.md) | All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error. |
**errors** | [**\StacksBlockchainApi\Model\RosettaErrorNoDetails[]**](RosettaErrorNoDetails.md) | All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error. |
**historical_balance_lookup** | **bool** | Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
