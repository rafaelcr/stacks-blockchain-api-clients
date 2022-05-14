//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BnsNamesOwnByAddressResponse {
  /// Returns a new [BnsNamesOwnByAddressResponse] instance.
  BnsNamesOwnByAddressResponse({
    this.names = const [],
  });

  List<String> names;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BnsNamesOwnByAddressResponse &&
     other.names == names;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (names == null ? 0 : names.hashCode);

  @override
  String toString() => 'BnsNamesOwnByAddressResponse[names=$names]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (names != null) {
      json[r'names'] = names;
    }
    return json;
  }

  /// Returns a new [BnsNamesOwnByAddressResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BnsNamesOwnByAddressResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BnsNamesOwnByAddressResponse(
        names: json[r'names'] is List
          ? (json[r'names'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<BnsNamesOwnByAddressResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BnsNamesOwnByAddressResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BnsNamesOwnByAddressResponse>[];

  static Map<String, BnsNamesOwnByAddressResponse> mapFromJson(dynamic json) {
    final map = <String, BnsNamesOwnByAddressResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BnsNamesOwnByAddressResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BnsNamesOwnByAddressResponse-objects as value to a dart map
  static Map<String, List<BnsNamesOwnByAddressResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BnsNamesOwnByAddressResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BnsNamesOwnByAddressResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

