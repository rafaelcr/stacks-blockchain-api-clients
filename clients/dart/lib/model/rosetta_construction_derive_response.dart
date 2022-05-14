//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionDeriveResponse {
  /// Returns a new [RosettaConstructionDeriveResponse] instance.
  RosettaConstructionDeriveResponse({
    this.address,
    this.accountIdentifier,
    this.metadata,
  });

  /// [DEPRECATED by account_identifier in v1.4.4] Address in network-specific format.
  String address;

  RosettaAccountIdentifier accountIdentifier;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionDeriveResponse &&
     other.address == address &&
     other.accountIdentifier == accountIdentifier &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (accountIdentifier == null ? 0 : accountIdentifier.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaConstructionDeriveResponse[address=$address, accountIdentifier=$accountIdentifier, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json[r'address'] = address;
    }
    if (accountIdentifier != null) {
      json[r'account_identifier'] = accountIdentifier;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionDeriveResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionDeriveResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionDeriveResponse(
        address: mapValueOfType<String>(json, r'address'),
        accountIdentifier: RosettaAccountIdentifier.fromJson(json[r'account_identifier']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaConstructionDeriveResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionDeriveResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionDeriveResponse>[];

  static Map<String, RosettaConstructionDeriveResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionDeriveResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionDeriveResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionDeriveResponse-objects as value to a dart map
  static Map<String, List<RosettaConstructionDeriveResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionDeriveResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionDeriveResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

