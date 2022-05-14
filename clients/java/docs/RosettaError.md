

# RosettaError

Instead of utilizing HTTP status codes to describe node errors (which often do not have a good analog), rich errors are returned using this object. Both the code and message fields can be individually used to correctly identify an error. Implementations MUST use unique values for both fields.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** | Code is a network-specific error code. If desired, this code can be equivalent to an HTTP status code. | 
**message** | **String** | Message is a network-specific error message. The message MUST NOT change for a given code. In particular, this means that any contextual information should be included in the details field. | 
**retriable** | **Boolean** | An error is retriable if the same request may succeed if submitted again. | 
**details** | [**RosettaErrorDetails**](RosettaErrorDetails.md) |  |  [optional]



