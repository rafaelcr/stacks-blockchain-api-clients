

# RosettaSignature

Signature contains the payload that was signed, the public keys of the keypairs used to produce the signature, the signature (encoded in hex), and the SignatureType. PublicKey is often times not known during construction of the signing payloads but may be needed to combine signatures properly.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signingPayload** | **Object** |  | 
**publicKey** | **Object** |  | 
**signatureType** | [**SignatureTypeEnum**](#SignatureTypeEnum) | SignatureType is the type of a cryptographic signature. | 
**hexBytes** | **String** |  | 



## Enum: SignatureTypeEnum

Name | Value
---- | -----
ECDSA | &quot;ecdsa&quot;
ECDSA_RECOVERY | &quot;ecdsa_recovery&quot;
ED25519 | &quot;ed25519&quot;
SCHNORR_1 | &quot;schnorr_1&quot;
SCHNORR_POSEIDON | &quot;schnorr_poseidon&quot;



