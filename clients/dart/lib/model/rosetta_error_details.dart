//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaErrorDetails {
  /// Returns a new [RosettaErrorDetails] instance.
  RosettaErrorDetails({
    this.address,
    this.error,
  });

  String address;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaErrorDetails &&
     other.address == address &&
     other.error == error;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (error == null ? 0 : error.hashCode);

  @override
  String toString() => 'RosettaErrorDetails[address=$address, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json[r'address'] = address;
    }
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [RosettaErrorDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaErrorDetails fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaErrorDetails(
        address: mapValueOfType<String>(json, r'address'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<RosettaErrorDetails> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaErrorDetails.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaErrorDetails>[];

  static Map<String, RosettaErrorDetails> mapFromJson(dynamic json) {
    final map = <String, RosettaErrorDetails>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaErrorDetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaErrorDetails-objects as value to a dart map
  static Map<String, List<RosettaErrorDetails>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaErrorDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaErrorDetails.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

