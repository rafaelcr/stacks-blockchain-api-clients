

# SigningPayload

SigningPayload is signed by the client with the keypair associated with an address using the specified SignatureType. SignatureType can be optionally populated if there is a restriction on the signature scheme that can be used to sign the payload.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | [DEPRECATED by account_identifier in v1.4.4] The network-specific address of the account that should sign the payload. |  [optional]
**accountIdentifier** | **Object** |  |  [optional]
**hexBytes** | **String** |  | 
**signatureType** | [**SignatureTypeEnum**](#SignatureTypeEnum) | SignatureType is the type of a cryptographic signature. |  [optional]



## Enum: SignatureTypeEnum

Name | Value
---- | -----
ECDSA | &quot;ecdsa&quot;
ECDSA_RECOVERY | &quot;ecdsa_recovery&quot;
ED25519 | &quot;ed25519&quot;
SCHNORR_1 | &quot;schnorr_1&quot;
SCHNORR_POSEIDON | &quot;schnorr_poseidon&quot;



