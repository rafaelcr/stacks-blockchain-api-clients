//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaNetworkOptionsResponse {
  /// Returns a new [RosettaNetworkOptionsResponse] instance.
  RosettaNetworkOptionsResponse({
    @required this.version,
    @required this.allow,
  });

  RosettaNetworkOptionsResponseVersion version;

  RosettaNetworkOptionsResponseAllow allow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaNetworkOptionsResponse &&
     other.version == version &&
     other.allow == allow;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (version == null ? 0 : version.hashCode) +
    (allow == null ? 0 : allow.hashCode);

  @override
  String toString() => 'RosettaNetworkOptionsResponse[version=$version, allow=$allow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = version;
      json[r'allow'] = allow;
    return json;
  }

  /// Returns a new [RosettaNetworkOptionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaNetworkOptionsResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaNetworkOptionsResponse(
        version: RosettaNetworkOptionsResponseVersion.fromJson(json[r'version']),
        allow: RosettaNetworkOptionsResponseAllow.fromJson(json[r'allow']),
      );
    }
    return null;
  }

  static List<RosettaNetworkOptionsResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaNetworkOptionsResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaNetworkOptionsResponse>[];

  static Map<String, RosettaNetworkOptionsResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaNetworkOptionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaNetworkOptionsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaNetworkOptionsResponse-objects as value to a dart map
  static Map<String, List<RosettaNetworkOptionsResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaNetworkOptionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaNetworkOptionsResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

