//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaCoinChange {
  /// Returns a new [RosettaCoinChange] instance.
  RosettaCoinChange({
    @required this.coinIdentifier,
    @required this.coinAction,
  });

  RosettaAccountBalanceResponseCoinIdentifier coinIdentifier;

  /// CoinActions are different state changes that a Coin can undergo. When a Coin is created, it is coin_created. When a Coin is spent, it is coin_spent. It is assumed that a single Coin cannot be created or spent more than once.
  RosettaCoinChangeCoinActionEnum coinAction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaCoinChange &&
     other.coinIdentifier == coinIdentifier &&
     other.coinAction == coinAction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (coinIdentifier == null ? 0 : coinIdentifier.hashCode) +
    (coinAction == null ? 0 : coinAction.hashCode);

  @override
  String toString() => 'RosettaCoinChange[coinIdentifier=$coinIdentifier, coinAction=$coinAction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'coin_identifier'] = coinIdentifier;
      json[r'coin_action'] = coinAction;
    return json;
  }

  /// Returns a new [RosettaCoinChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaCoinChange fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaCoinChange(
        coinIdentifier: RosettaAccountBalanceResponseCoinIdentifier.fromJson(json[r'coin_identifier']),
        coinAction: RosettaCoinChangeCoinActionEnum.fromJson(json[r'coin_action']),
      );
    }
    return null;
  }

  static List<RosettaCoinChange> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaCoinChange.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaCoinChange>[];

  static Map<String, RosettaCoinChange> mapFromJson(dynamic json) {
    final map = <String, RosettaCoinChange>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaCoinChange.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaCoinChange-objects as value to a dart map
  static Map<String, List<RosettaCoinChange>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaCoinChange>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaCoinChange.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// CoinActions are different state changes that a Coin can undergo. When a Coin is created, it is coin_created. When a Coin is spent, it is coin_spent. It is assumed that a single Coin cannot be created or spent more than once.
class RosettaCoinChangeCoinActionEnum {
  /// Instantiate a new enum with the provided [value].
  const RosettaCoinChangeCoinActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const created = RosettaCoinChangeCoinActionEnum._(r'coin_created');
  static const spent = RosettaCoinChangeCoinActionEnum._(r'coin_spent');

  /// List of all possible values in this [enum][RosettaCoinChangeCoinActionEnum].
  static const values = <RosettaCoinChangeCoinActionEnum>[
    created,
    spent,
  ];

  static RosettaCoinChangeCoinActionEnum fromJson(dynamic value) =>
    RosettaCoinChangeCoinActionEnumTypeTransformer().decode(value);

  static List<RosettaCoinChangeCoinActionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaCoinChangeCoinActionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaCoinChangeCoinActionEnum>[];
}

/// Transformation class that can [encode] an instance of [RosettaCoinChangeCoinActionEnum] to String,
/// and [decode] dynamic data back to [RosettaCoinChangeCoinActionEnum].
class RosettaCoinChangeCoinActionEnumTypeTransformer {
  factory RosettaCoinChangeCoinActionEnumTypeTransformer() => _instance ??= const RosettaCoinChangeCoinActionEnumTypeTransformer._();

  const RosettaCoinChangeCoinActionEnumTypeTransformer._();

  String encode(RosettaCoinChangeCoinActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RosettaCoinChangeCoinActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RosettaCoinChangeCoinActionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'coin_created': return RosettaCoinChangeCoinActionEnum.created;
        case r'coin_spent': return RosettaCoinChangeCoinActionEnum.spent;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RosettaCoinChangeCoinActionEnumTypeTransformer] instance.
  static RosettaCoinChangeCoinActionEnumTypeTransformer _instance;
}


