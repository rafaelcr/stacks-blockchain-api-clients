//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaMempoolRequest {
  /// Returns a new [RosettaMempoolRequest] instance.
  RosettaMempoolRequest({
    @required this.networkIdentifier,
    this.metadata,
  });

  Object networkIdentifier;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaMempoolRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaMempoolRequest[networkIdentifier=$networkIdentifier, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaMempoolRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaMempoolRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaMempoolRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaMempoolRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaMempoolRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaMempoolRequest>[];

  static Map<String, RosettaMempoolRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaMempoolRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaMempoolRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaMempoolRequest-objects as value to a dart map
  static Map<String, List<RosettaMempoolRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaMempoolRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaMempoolRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

