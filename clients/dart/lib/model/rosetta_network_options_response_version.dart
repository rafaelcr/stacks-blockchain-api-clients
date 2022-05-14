//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaNetworkOptionsResponseVersion {
  /// Returns a new [RosettaNetworkOptionsResponseVersion] instance.
  RosettaNetworkOptionsResponseVersion({
    @required this.rosettaVersion,
    @required this.nodeVersion,
    this.middlewareVersion,
    this.metadata,
  });

  /// The rosetta_version is the version of the Rosetta interface the implementation adheres to. This can be useful for clients looking to reliably parse responses.
  String rosettaVersion;

  /// The node_version is the canonical version of the node runtime. This can help clients manage deployments.
  String nodeVersion;

  /// When a middleware server is used to adhere to the Rosetta interface, it should return its version here. This can help clients manage deployments.
  String middlewareVersion;

  /// Any other information that may be useful about versioning of dependent services should be returned here.
  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaNetworkOptionsResponseVersion &&
     other.rosettaVersion == rosettaVersion &&
     other.nodeVersion == nodeVersion &&
     other.middlewareVersion == middlewareVersion &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (rosettaVersion == null ? 0 : rosettaVersion.hashCode) +
    (nodeVersion == null ? 0 : nodeVersion.hashCode) +
    (middlewareVersion == null ? 0 : middlewareVersion.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaNetworkOptionsResponseVersion[rosettaVersion=$rosettaVersion, nodeVersion=$nodeVersion, middlewareVersion=$middlewareVersion, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rosetta_version'] = rosettaVersion;
      json[r'node_version'] = nodeVersion;
    if (middlewareVersion != null) {
      json[r'middleware_version'] = middlewareVersion;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaNetworkOptionsResponseVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaNetworkOptionsResponseVersion fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaNetworkOptionsResponseVersion(
        rosettaVersion: mapValueOfType<String>(json, r'rosetta_version'),
        nodeVersion: mapValueOfType<String>(json, r'node_version'),
        middlewareVersion: mapValueOfType<String>(json, r'middleware_version'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaNetworkOptionsResponseVersion> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaNetworkOptionsResponseVersion.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaNetworkOptionsResponseVersion>[];

  static Map<String, RosettaNetworkOptionsResponseVersion> mapFromJson(dynamic json) {
    final map = <String, RosettaNetworkOptionsResponseVersion>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaNetworkOptionsResponseVersion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaNetworkOptionsResponseVersion-objects as value to a dart map
  static Map<String, List<RosettaNetworkOptionsResponseVersion>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaNetworkOptionsResponseVersion>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaNetworkOptionsResponseVersion.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

