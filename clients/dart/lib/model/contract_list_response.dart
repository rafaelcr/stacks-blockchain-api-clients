//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ContractListResponse {
  /// Returns a new [ContractListResponse] instance.
  ContractListResponse({
    @required this.limit,
    this.offset = 0,
    this.results = const [],
  });

  /// The number of contracts to return
  int limit;

  /// The number to contracts to skip (starting at `0`)
  int offset;

  List<SmartContract> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContractListResponse &&
     other.limit == limit &&
     other.offset == offset &&
     other.results == results;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ContractListResponse[limit=$limit, offset=$offset, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = limit;
      json[r'offset'] = offset;
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ContractListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContractListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ContractListResponse(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: SmartContract.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<ContractListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ContractListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ContractListResponse>[];

  static Map<String, ContractListResponse> mapFromJson(dynamic json) {
    final map = <String, ContractListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ContractListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContractListResponse-objects as value to a dart map
  static Map<String, List<ContractListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContractListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ContractListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

