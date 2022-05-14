//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaBlockRequest {
  /// Returns a new [RosettaBlockRequest] instance.
  RosettaBlockRequest({
    @required this.networkIdentifier,
    @required this.blockIdentifier,
  });

  Object networkIdentifier;

  Object blockIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaBlockRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.blockIdentifier == blockIdentifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (blockIdentifier == null ? 0 : blockIdentifier.hashCode);

  @override
  String toString() => 'RosettaBlockRequest[networkIdentifier=$networkIdentifier, blockIdentifier=$blockIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'block_identifier'] = blockIdentifier;
    return json;
  }

  /// Returns a new [RosettaBlockRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaBlockRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaBlockRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        blockIdentifier: Object.fromJson(json[r'block_identifier']),
      );
    }
    return null;
  }

  static List<RosettaBlockRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaBlockRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaBlockRequest>[];

  static Map<String, RosettaBlockRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaBlockRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaBlockRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaBlockRequest-objects as value to a dart map
  static Map<String, List<RosettaBlockRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaBlockRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaBlockRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

