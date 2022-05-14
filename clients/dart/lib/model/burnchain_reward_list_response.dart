//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BurnchainRewardListResponse {
  /// Returns a new [BurnchainRewardListResponse] instance.
  BurnchainRewardListResponse({
    @required this.limit,
    this.offset = 0,
    this.results = const [],
  });

  /// The number of burnchain rewards to return
  // maximum: 30
  int limit;

  /// The number to burnchain rewards to skip (starting at `0`)
  int offset;

  List<BurnchainReward> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BurnchainRewardListResponse &&
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
  String toString() => 'BurnchainRewardListResponse[limit=$limit, offset=$offset, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = limit;
      json[r'offset'] = offset;
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [BurnchainRewardListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BurnchainRewardListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BurnchainRewardListResponse(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: BurnchainReward.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<BurnchainRewardListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BurnchainRewardListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BurnchainRewardListResponse>[];

  static Map<String, BurnchainRewardListResponse> mapFromJson(dynamic json) {
    final map = <String, BurnchainRewardListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BurnchainRewardListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BurnchainRewardListResponse-objects as value to a dart map
  static Map<String, List<BurnchainRewardListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BurnchainRewardListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BurnchainRewardListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

