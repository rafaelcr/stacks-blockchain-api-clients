//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BnsGetAllNamespacesResponse {
  /// Returns a new [BnsGetAllNamespacesResponse] instance.
  BnsGetAllNamespacesResponse({
    this.namespaces = const [],
  });

  List<String> namespaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BnsGetAllNamespacesResponse &&
     other.namespaces == namespaces;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (namespaces == null ? 0 : namespaces.hashCode);

  @override
  String toString() => 'BnsGetAllNamespacesResponse[namespaces=$namespaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'namespaces'] = namespaces;
    return json;
  }

  /// Returns a new [BnsGetAllNamespacesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BnsGetAllNamespacesResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BnsGetAllNamespacesResponse(
        namespaces: json[r'namespaces'] is List
          ? (json[r'namespaces'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<BnsGetAllNamespacesResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BnsGetAllNamespacesResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BnsGetAllNamespacesResponse>[];

  static Map<String, BnsGetAllNamespacesResponse> mapFromJson(dynamic json) {
    final map = <String, BnsGetAllNamespacesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BnsGetAllNamespacesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BnsGetAllNamespacesResponse-objects as value to a dart map
  static Map<String, List<BnsGetAllNamespacesResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BnsGetAllNamespacesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BnsGetAllNamespacesResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

