//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAmount {
  /// Returns a new [RosettaAmount] instance.
  RosettaAmount({
    @required this.value,
    @required this.currency,
    this.metadata,
  });

  /// Value of the transaction in atomic units represented as an arbitrary-sized signed integer. For example, 1 BTC would be represented by a value of 100000000.
  String value;

  RosettaCurrency currency;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAmount &&
     other.value == value &&
     other.currency == currency &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (currency == null ? 0 : currency.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaAmount[value=$value, currency=$currency, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = value;
      json[r'currency'] = currency;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaAmount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAmount fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAmount(
        value: mapValueOfType<String>(json, r'value'),
        currency: RosettaCurrency.fromJson(json[r'currency']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaAmount> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAmount.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAmount>[];

  static Map<String, RosettaAmount> mapFromJson(dynamic json) {
    final map = <String, RosettaAmount>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAmount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAmount-objects as value to a dart map
  static Map<String, List<RosettaAmount>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAmount>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAmount.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

