//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaStatusRequest {
  /// Returns a new [RosettaStatusRequest] instance.
  RosettaStatusRequest({
    @required this.networkIdentifier,
    this.metadata,
  });

  Object networkIdentifier;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaStatusRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaStatusRequest[networkIdentifier=$networkIdentifier, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaStatusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaStatusRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaStatusRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaStatusRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaStatusRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaStatusRequest>[];

  static Map<String, RosettaStatusRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaStatusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaStatusRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaStatusRequest-objects as value to a dart map
  static Map<String, List<RosettaStatusRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaStatusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaStatusRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

