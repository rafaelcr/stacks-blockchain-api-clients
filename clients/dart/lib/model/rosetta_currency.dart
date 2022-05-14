//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaCurrency {
  /// Returns a new [RosettaCurrency] instance.
  RosettaCurrency({
    @required this.symbol,
    @required this.decimals,
    this.metadata,
  });

  /// Canonical symbol associated with a currency.
  String symbol;

  /// Number of decimal places in the standard unit representation of the amount. For example, BTC has 8 decimals. Note that it is not possible to represent the value of some currency in atomic units that is not base 10.
  int decimals;

  /// Any additional information related to the currency itself. For example, it would be useful to populate this object with the contract address of an ERC-20 token.
  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaCurrency &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaCurrency[symbol=$symbol, decimals=$decimals, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'symbol'] = symbol;
      json[r'decimals'] = decimals;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaCurrency] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaCurrency fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaCurrency(
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaCurrency> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaCurrency.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaCurrency>[];

  static Map<String, RosettaCurrency> mapFromJson(dynamic json) {
    final map = <String, RosettaCurrency>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaCurrency.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaCurrency-objects as value to a dart map
  static Map<String, List<RosettaCurrency>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaCurrency>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaCurrency.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

