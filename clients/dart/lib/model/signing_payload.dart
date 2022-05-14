//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class SigningPayload {
  /// Returns a new [SigningPayload] instance.
  SigningPayload({
    this.address,
    this.accountIdentifier,
    @required this.hexBytes,
    this.signatureType,
  });

  /// [DEPRECATED by account_identifier in v1.4.4] The network-specific address of the account that should sign the payload.
  String address;

  Object accountIdentifier;

  String hexBytes;

  /// SignatureType is the type of a cryptographic signature.
  SigningPayloadSignatureTypeEnum signatureType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigningPayload &&
     other.address == address &&
     other.accountIdentifier == accountIdentifier &&
     other.hexBytes == hexBytes &&
     other.signatureType == signatureType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (accountIdentifier == null ? 0 : accountIdentifier.hashCode) +
    (hexBytes == null ? 0 : hexBytes.hashCode) +
    (signatureType == null ? 0 : signatureType.hashCode);

  @override
  String toString() => 'SigningPayload[address=$address, accountIdentifier=$accountIdentifier, hexBytes=$hexBytes, signatureType=$signatureType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json[r'address'] = address;
    }
    if (accountIdentifier != null) {
      json[r'account_identifier'] = accountIdentifier;
    }
      json[r'hex_bytes'] = hexBytes;
    if (signatureType != null) {
      json[r'signature_type'] = signatureType;
    }
    return json;
  }

  /// Returns a new [SigningPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigningPayload fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SigningPayload(
        address: mapValueOfType<String>(json, r'address'),
        accountIdentifier: Object.fromJson(json[r'account_identifier']),
        hexBytes: mapValueOfType<String>(json, r'hex_bytes'),
        signatureType: SigningPayloadSignatureTypeEnum.fromJson(json[r'signature_type']),
      );
    }
    return null;
  }

  static List<SigningPayload> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SigningPayload.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SigningPayload>[];

  static Map<String, SigningPayload> mapFromJson(dynamic json) {
    final map = <String, SigningPayload>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SigningPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SigningPayload-objects as value to a dart map
  static Map<String, List<SigningPayload>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigningPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SigningPayload.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// SignatureType is the type of a cryptographic signature.
class SigningPayloadSignatureTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SigningPayloadSignatureTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ecdsa = SigningPayloadSignatureTypeEnum._(r'ecdsa');
  static const ecdsaRecovery = SigningPayloadSignatureTypeEnum._(r'ecdsa_recovery');
  static const ed25519 = SigningPayloadSignatureTypeEnum._(r'ed25519');
  static const schnorr1 = SigningPayloadSignatureTypeEnum._(r'schnorr_1');
  static const schnorrPoseidon = SigningPayloadSignatureTypeEnum._(r'schnorr_poseidon');

  /// List of all possible values in this [enum][SigningPayloadSignatureTypeEnum].
  static const values = <SigningPayloadSignatureTypeEnum>[
    ecdsa,
    ecdsaRecovery,
    ed25519,
    schnorr1,
    schnorrPoseidon,
  ];

  static SigningPayloadSignatureTypeEnum fromJson(dynamic value) =>
    SigningPayloadSignatureTypeEnumTypeTransformer().decode(value);

  static List<SigningPayloadSignatureTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SigningPayloadSignatureTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SigningPayloadSignatureTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [SigningPayloadSignatureTypeEnum] to String,
/// and [decode] dynamic data back to [SigningPayloadSignatureTypeEnum].
class SigningPayloadSignatureTypeEnumTypeTransformer {
  factory SigningPayloadSignatureTypeEnumTypeTransformer() => _instance ??= const SigningPayloadSignatureTypeEnumTypeTransformer._();

  const SigningPayloadSignatureTypeEnumTypeTransformer._();

  String encode(SigningPayloadSignatureTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SigningPayloadSignatureTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SigningPayloadSignatureTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ecdsa': return SigningPayloadSignatureTypeEnum.ecdsa;
        case r'ecdsa_recovery': return SigningPayloadSignatureTypeEnum.ecdsaRecovery;
        case r'ed25519': return SigningPayloadSignatureTypeEnum.ed25519;
        case r'schnorr_1': return SigningPayloadSignatureTypeEnum.schnorr1;
        case r'schnorr_poseidon': return SigningPayloadSignatureTypeEnum.schnorrPoseidon;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SigningPayloadSignatureTypeEnumTypeTransformer] instance.
  static SigningPayloadSignatureTypeEnumTypeTransformer _instance;
}


