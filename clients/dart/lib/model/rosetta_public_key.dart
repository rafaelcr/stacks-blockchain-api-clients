//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaPublicKey {
  /// Returns a new [RosettaPublicKey] instance.
  RosettaPublicKey({
    @required this.hexBytes,
    @required this.curveType,
  });

  /// Hex-encoded public key bytes in the format specified by the CurveType.
  String hexBytes;

  /// CurveType is the type of cryptographic curve associated with a PublicKey.
  RosettaPublicKeyCurveTypeEnum curveType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaPublicKey &&
     other.hexBytes == hexBytes &&
     other.curveType == curveType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (hexBytes == null ? 0 : hexBytes.hashCode) +
    (curveType == null ? 0 : curveType.hashCode);

  @override
  String toString() => 'RosettaPublicKey[hexBytes=$hexBytes, curveType=$curveType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hex_bytes'] = hexBytes;
      json[r'curve_type'] = curveType;
    return json;
  }

  /// Returns a new [RosettaPublicKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaPublicKey fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaPublicKey(
        hexBytes: mapValueOfType<String>(json, r'hex_bytes'),
        curveType: RosettaPublicKeyCurveTypeEnum.fromJson(json[r'curve_type']),
      );
    }
    return null;
  }

  static List<RosettaPublicKey> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaPublicKey.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaPublicKey>[];

  static Map<String, RosettaPublicKey> mapFromJson(dynamic json) {
    final map = <String, RosettaPublicKey>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaPublicKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaPublicKey-objects as value to a dart map
  static Map<String, List<RosettaPublicKey>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaPublicKey>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaPublicKey.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// CurveType is the type of cryptographic curve associated with a PublicKey.
class RosettaPublicKeyCurveTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RosettaPublicKeyCurveTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const secp256k1 = RosettaPublicKeyCurveTypeEnum._(r'secp256k1');
  static const edwards25519 = RosettaPublicKeyCurveTypeEnum._(r'edwards25519');

  /// List of all possible values in this [enum][RosettaPublicKeyCurveTypeEnum].
  static const values = <RosettaPublicKeyCurveTypeEnum>[
    secp256k1,
    edwards25519,
  ];

  static RosettaPublicKeyCurveTypeEnum fromJson(dynamic value) =>
    RosettaPublicKeyCurveTypeEnumTypeTransformer().decode(value);

  static List<RosettaPublicKeyCurveTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaPublicKeyCurveTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaPublicKeyCurveTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [RosettaPublicKeyCurveTypeEnum] to String,
/// and [decode] dynamic data back to [RosettaPublicKeyCurveTypeEnum].
class RosettaPublicKeyCurveTypeEnumTypeTransformer {
  factory RosettaPublicKeyCurveTypeEnumTypeTransformer() => _instance ??= const RosettaPublicKeyCurveTypeEnumTypeTransformer._();

  const RosettaPublicKeyCurveTypeEnumTypeTransformer._();

  String encode(RosettaPublicKeyCurveTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RosettaPublicKeyCurveTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RosettaPublicKeyCurveTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'secp256k1': return RosettaPublicKeyCurveTypeEnum.secp256k1;
        case r'edwards25519': return RosettaPublicKeyCurveTypeEnum.edwards25519;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RosettaPublicKeyCurveTypeEnumTypeTransformer] instance.
  static RosettaPublicKeyCurveTypeEnumTypeTransformer _instance;
}


