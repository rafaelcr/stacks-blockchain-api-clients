//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionDeriveRequest {
  /// Returns a new [RosettaConstructionDeriveRequest] instance.
  RosettaConstructionDeriveRequest({
    @required this.networkIdentifier,
    @required this.publicKey,
    this.metadata,
  });

  Object networkIdentifier;

  RosettaPublicKey publicKey;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionDeriveRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.publicKey == publicKey &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (publicKey == null ? 0 : publicKey.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaConstructionDeriveRequest[networkIdentifier=$networkIdentifier, publicKey=$publicKey, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'public_key'] = publicKey;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionDeriveRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionDeriveRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionDeriveRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        publicKey: RosettaPublicKey.fromJson(json[r'public_key']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaConstructionDeriveRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionDeriveRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionDeriveRequest>[];

  static Map<String, RosettaConstructionDeriveRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionDeriveRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionDeriveRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionDeriveRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionDeriveRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionDeriveRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionDeriveRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

