//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionHashResponse {
  /// Returns a new [RosettaConstructionHashResponse] instance.
  RosettaConstructionHashResponse({
    @required this.transactionIdentifier,
    this.metadata,
  });

  Object transactionIdentifier;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionHashResponse &&
     other.transactionIdentifier == transactionIdentifier &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionIdentifier == null ? 0 : transactionIdentifier.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaConstructionHashResponse[transactionIdentifier=$transactionIdentifier, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_identifier'] = transactionIdentifier;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionHashResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionHashResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionHashResponse(
        transactionIdentifier: Object.fromJson(json[r'transaction_identifier']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaConstructionHashResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionHashResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionHashResponse>[];

  static Map<String, RosettaConstructionHashResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionHashResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionHashResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionHashResponse-objects as value to a dart map
  static Map<String, List<RosettaConstructionHashResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionHashResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionHashResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

