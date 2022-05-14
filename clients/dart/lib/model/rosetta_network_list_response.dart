//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaNetworkListResponse {
  /// Returns a new [RosettaNetworkListResponse] instance.
  RosettaNetworkListResponse({
    this.networkIdentifiers = const [],
  });

  /// The network_identifier specifies which network a particular object is associated with.
  List<NetworkIdentifier> networkIdentifiers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaNetworkListResponse &&
     other.networkIdentifiers == networkIdentifiers;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifiers == null ? 0 : networkIdentifiers.hashCode);

  @override
  String toString() => 'RosettaNetworkListResponse[networkIdentifiers=$networkIdentifiers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifiers'] = networkIdentifiers;
    return json;
  }

  /// Returns a new [RosettaNetworkListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaNetworkListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaNetworkListResponse(
        networkIdentifiers: NetworkIdentifier.listFromJson(json[r'network_identifiers']),
      );
    }
    return null;
  }

  static List<RosettaNetworkListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaNetworkListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaNetworkListResponse>[];

  static Map<String, RosettaNetworkListResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaNetworkListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaNetworkListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaNetworkListResponse-objects as value to a dart map
  static Map<String, List<RosettaNetworkListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaNetworkListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaNetworkListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

