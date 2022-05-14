//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAccountBalanceResponseCoinIdentifier {
  /// Returns a new [RosettaAccountBalanceResponseCoinIdentifier] instance.
  RosettaAccountBalanceResponseCoinIdentifier({
    @required this.identifier,
  });

  /// Identifier should be populated with a globally unique identifier of a Coin. In Bitcoin, this identifier would be transaction_hash:index.
  String identifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAccountBalanceResponseCoinIdentifier &&
     other.identifier == identifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (identifier == null ? 0 : identifier.hashCode);

  @override
  String toString() => 'RosettaAccountBalanceResponseCoinIdentifier[identifier=$identifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'identifier'] = identifier;
    return json;
  }

  /// Returns a new [RosettaAccountBalanceResponseCoinIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAccountBalanceResponseCoinIdentifier fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAccountBalanceResponseCoinIdentifier(
        identifier: mapValueOfType<String>(json, r'identifier'),
      );
    }
    return null;
  }

  static List<RosettaAccountBalanceResponseCoinIdentifier> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAccountBalanceResponseCoinIdentifier.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAccountBalanceResponseCoinIdentifier>[];

  static Map<String, RosettaAccountBalanceResponseCoinIdentifier> mapFromJson(dynamic json) {
    final map = <String, RosettaAccountBalanceResponseCoinIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAccountBalanceResponseCoinIdentifier.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAccountBalanceResponseCoinIdentifier-objects as value to a dart map
  static Map<String, List<RosettaAccountBalanceResponseCoinIdentifier>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAccountBalanceResponseCoinIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAccountBalanceResponseCoinIdentifier.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

