//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class UnanchoredTransactionListResponse {
  /// Returns a new [UnanchoredTransactionListResponse] instance.
  UnanchoredTransactionListResponse({
    @required this.total,
    this.results = const [],
  });

  /// The number of unanchored transactions available
  int total;

  List<Object> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnanchoredTransactionListResponse &&
     other.total == total &&
     other.results == results;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (total == null ? 0 : total.hashCode) +
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'UnanchoredTransactionListResponse[total=$total, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = total;
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [UnanchoredTransactionListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnanchoredTransactionListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UnanchoredTransactionListResponse(
        total: mapValueOfType<int>(json, r'total'),
        results: Object.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<UnanchoredTransactionListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnanchoredTransactionListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnanchoredTransactionListResponse>[];

  static Map<String, UnanchoredTransactionListResponse> mapFromJson(dynamic json) {
    final map = <String, UnanchoredTransactionListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UnanchoredTransactionListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnanchoredTransactionListResponse-objects as value to a dart map
  static Map<String, List<UnanchoredTransactionListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnanchoredTransactionListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UnanchoredTransactionListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

