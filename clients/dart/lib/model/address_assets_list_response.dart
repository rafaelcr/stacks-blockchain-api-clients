//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressAssetsListResponse {
  /// Returns a new [AddressAssetsListResponse] instance.
  AddressAssetsListResponse({
    @required this.limit,
    @required this.offset,
    @required this.total,
    this.results = const [],
  });

  // maximum: 30
  int limit;

  int offset;

  int total;

  List<AnyOfobjectobjectobjectobjectobject> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressAssetsListResponse &&
     other.limit == limit &&
     other.offset == offset &&
     other.total == total &&
     other.results == results;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (total == null ? 0 : total.hashCode) +
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'AddressAssetsListResponse[limit=$limit, offset=$offset, total=$total, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = limit;
      json[r'offset'] = offset;
      json[r'total'] = total;
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [AddressAssetsListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressAssetsListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressAssetsListResponse(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        total: mapValueOfType<int>(json, r'total'),
        results: AnyOfobjectobjectobjectobjectobject.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<AddressAssetsListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressAssetsListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressAssetsListResponse>[];

  static Map<String, AddressAssetsListResponse> mapFromJson(dynamic json) {
    final map = <String, AddressAssetsListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressAssetsListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressAssetsListResponse-objects as value to a dart map
  static Map<String, List<AddressAssetsListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressAssetsListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressAssetsListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

