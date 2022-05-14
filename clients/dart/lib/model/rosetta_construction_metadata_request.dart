//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionMetadataRequest {
  /// Returns a new [RosettaConstructionMetadataRequest] instance.
  RosettaConstructionMetadataRequest({
    @required this.networkIdentifier,
    @required this.options,
    this.publicKeys = const [],
  });

  Object networkIdentifier;

  RosettaOptions options;

  List<Object> publicKeys;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionMetadataRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.options == options &&
     other.publicKeys == publicKeys;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (options == null ? 0 : options.hashCode) +
    (publicKeys == null ? 0 : publicKeys.hashCode);

  @override
  String toString() => 'RosettaConstructionMetadataRequest[networkIdentifier=$networkIdentifier, options=$options, publicKeys=$publicKeys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'options'] = options;
    if (publicKeys != null) {
      json[r'public_keys'] = publicKeys;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionMetadataRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionMetadataRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionMetadataRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        options: RosettaOptions.fromJson(json[r'options']),
        publicKeys: Object.listFromJson(json[r'public_keys']),
      );
    }
    return null;
  }

  static List<RosettaConstructionMetadataRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionMetadataRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionMetadataRequest>[];

  static Map<String, RosettaConstructionMetadataRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionMetadataRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionMetadataRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionMetadataRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionMetadataRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionMetadataRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionMetadataRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

