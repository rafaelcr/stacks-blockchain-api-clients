//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaSignature {
  /// Returns a new [RosettaSignature] instance.
  RosettaSignature({
    @required this.signingPayload,
    @required this.publicKey,
    @required this.signatureType,
    @required this.hexBytes,
  });

  Object signingPayload;

  Object publicKey;

  /// SignatureType is the type of a cryptographic signature.
  RosettaSignatureSignatureTypeEnum signatureType;

  String hexBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaSignature &&
     other.signingPayload == signingPayload &&
     other.publicKey == publicKey &&
     other.signatureType == signatureType &&
     other.hexBytes == hexBytes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (signingPayload == null ? 0 : signingPayload.hashCode) +
    (publicKey == null ? 0 : publicKey.hashCode) +
    (signatureType == null ? 0 : signatureType.hashCode) +
    (hexBytes == null ? 0 : hexBytes.hashCode);

  @override
  String toString() => 'RosettaSignature[signingPayload=$signingPayload, publicKey=$publicKey, signatureType=$signatureType, hexBytes=$hexBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'signing_payload'] = signingPayload;
      json[r'public_key'] = publicKey;
      json[r'signature_type'] = signatureType;
      json[r'hex_bytes'] = hexBytes;
    return json;
  }

  /// Returns a new [RosettaSignature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaSignature fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaSignature(
        signingPayload: Object.fromJson(json[r'signing_payload']),
        publicKey: Object.fromJson(json[r'public_key']),
        signatureType: RosettaSignatureSignatureTypeEnum.fromJson(json[r'signature_type']),
        hexBytes: mapValueOfType<String>(json, r'hex_bytes'),
      );
    }
    return null;
  }

  static List<RosettaSignature> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaSignature.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaSignature>[];

  static Map<String, RosettaSignature> mapFromJson(dynamic json) {
    final map = <String, RosettaSignature>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaSignature.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaSignature-objects as value to a dart map
  static Map<String, List<RosettaSignature>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaSignature>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaSignature.listFromJson(
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
class RosettaSignatureSignatureTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RosettaSignatureSignatureTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ecdsa = RosettaSignatureSignatureTypeEnum._(r'ecdsa');
  static const ecdsaRecovery = RosettaSignatureSignatureTypeEnum._(r'ecdsa_recovery');
  static const ed25519 = RosettaSignatureSignatureTypeEnum._(r'ed25519');
  static const schnorr1 = RosettaSignatureSignatureTypeEnum._(r'schnorr_1');
  static const schnorrPoseidon = RosettaSignatureSignatureTypeEnum._(r'schnorr_poseidon');

  /// List of all possible values in this [enum][RosettaSignatureSignatureTypeEnum].
  static const values = <RosettaSignatureSignatureTypeEnum>[
    ecdsa,
    ecdsaRecovery,
    ed25519,
    schnorr1,
    schnorrPoseidon,
  ];

  static RosettaSignatureSignatureTypeEnum fromJson(dynamic value) =>
    RosettaSignatureSignatureTypeEnumTypeTransformer().decode(value);

  static List<RosettaSignatureSignatureTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaSignatureSignatureTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaSignatureSignatureTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [RosettaSignatureSignatureTypeEnum] to String,
/// and [decode] dynamic data back to [RosettaSignatureSignatureTypeEnum].
class RosettaSignatureSignatureTypeEnumTypeTransformer {
  factory RosettaSignatureSignatureTypeEnumTypeTransformer() => _instance ??= const RosettaSignatureSignatureTypeEnumTypeTransformer._();

  const RosettaSignatureSignatureTypeEnumTypeTransformer._();

  String encode(RosettaSignatureSignatureTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RosettaSignatureSignatureTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RosettaSignatureSignatureTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ecdsa': return RosettaSignatureSignatureTypeEnum.ecdsa;
        case r'ecdsa_recovery': return RosettaSignatureSignatureTypeEnum.ecdsaRecovery;
        case r'ed25519': return RosettaSignatureSignatureTypeEnum.ed25519;
        case r'schnorr_1': return RosettaSignatureSignatureTypeEnum.schnorr1;
        case r'schnorr_poseidon': return RosettaSignatureSignatureTypeEnum.schnorrPoseidon;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RosettaSignatureSignatureTypeEnumTypeTransformer] instance.
  static RosettaSignatureSignatureTypeEnumTypeTransformer _instance;
}


