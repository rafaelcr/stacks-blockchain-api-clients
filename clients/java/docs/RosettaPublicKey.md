

# RosettaPublicKey

PublicKey contains a public key byte array for a particular CurveType encoded in hex. Note that there is no PrivateKey struct as this is NEVER the concern of an implementation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hexBytes** | **String** | Hex-encoded public key bytes in the format specified by the CurveType. | 
**curveType** | [**CurveTypeEnum**](#CurveTypeEnum) | CurveType is the type of cryptographic curve associated with a PublicKey. | 



## Enum: CurveTypeEnum

Name | Value
---- | -----
SECP256K1 | &quot;secp256k1&quot;
EDWARDS25519 | &quot;edwards25519&quot;



