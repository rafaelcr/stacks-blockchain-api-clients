//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAccountBalanceResponseMetadata {
  /// Returns a new [RosettaAccountBalanceResponseMetadata] instance.
  RosettaAccountBalanceResponseMetadata({
    @required this.sequenceNumber,
  });

  int sequenceNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAccountBalanceResponseMetadata &&
     other.sequenceNumber == sequenceNumber;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sequenceNumber == null ? 0 : sequenceNumber.hashCode);

  @override
  String toString() => 'RosettaAccountBalanceResponseMetadata[sequenceNumber=$sequenceNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sequence_number'] = sequenceNumber;
    return json;
  }

  /// Returns a new [RosettaAccountBalanceResponseMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAccountBalanceResponseMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAccountBalanceResponseMetadata(
        sequenceNumber: mapValueOfType<int>(json, r'sequence_number'),
      );
    }
    return null;
  }

  static List<RosettaAccountBalanceResponseMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAccountBalanceResponseMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAccountBalanceResponseMetadata>[];

  static Map<String, RosettaAccountBalanceResponseMetadata> mapFromJson(dynamic json) {
    final map = <String, RosettaAccountBalanceResponseMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAccountBalanceResponseMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAccountBalanceResponseMetadata-objects as value to a dart map
  static Map<String, List<RosettaAccountBalanceResponseMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAccountBalanceResponseMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAccountBalanceResponseMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

