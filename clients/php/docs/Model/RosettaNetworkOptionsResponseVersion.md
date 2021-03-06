# # RosettaNetworkOptionsResponseVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rosetta_version** | **string** | The rosetta_version is the version of the Rosetta interface the implementation adheres to. This can be useful for clients looking to reliably parse responses. |
**node_version** | **string** | The node_version is the canonical version of the node runtime. This can help clients manage deployments. |
**middleware_version** | **string** | When a middleware server is used to adhere to the Rosetta interface, it should return its version here. This can help clients manage deployments. | [optional]
**metadata** | **object** | Any other information that may be useful about versioning of dependent services should be returned here. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
