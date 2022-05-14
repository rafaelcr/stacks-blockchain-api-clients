//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class NonFungibleTokenMintList {
  /// Returns a new [NonFungibleTokenMintList] instance.
  NonFungibleTokenMintList({
    @required this.limit,
    @required this.offset,
    @required this.total,
    this.results = const [],
  });

  /// The number of mint events to return
  // maximum: 200
  int limit;

  /// The number to mint events to skip (starting at `0`)
  int offset;

  /// The number of mint events available
  int total;

  List<AnyOfobjectobject> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NonFungibleTokenMintList &&
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
  String toString() => 'NonFungibleTokenMintList[limit=$limit, offset=$offset, total=$total, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = limit;
      json[r'offset'] = offset;
      json[r'total'] = total;
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [NonFungibleTokenMintList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NonFungibleTokenMintList fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NonFungibleTokenMintList(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        total: mapValueOfType<int>(json, r'total'),
        results: AnyOfobjectobject.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<NonFungibleTokenMintList> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NonFungibleTokenMintList.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NonFungibleTokenMintList>[];

  static Map<String, NonFungibleTokenMintList> mapFromJson(dynamic json) {
    final map = <String, NonFungibleTokenMintList>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NonFungibleTokenMintList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NonFungibleTokenMintList-objects as value to a dart map
  static Map<String, List<NonFungibleTokenMintList>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NonFungibleTokenMintList>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NonFungibleTokenMintList.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

