//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BnsError {
  /// Returns a new [BnsError] instance.
  BnsError({
    this.error,
  });

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BnsError &&
     other.error == error;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (error == null ? 0 : error.hashCode);

  @override
  String toString() => 'BnsError[error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [BnsError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BnsError fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BnsError(
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<BnsError> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BnsError.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BnsError>[];

  static Map<String, BnsError> mapFromJson(dynamic json) {
    final map = <String, BnsError>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BnsError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BnsError-objects as value to a dart map
  static Map<String, List<BnsError>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BnsError>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BnsError.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

