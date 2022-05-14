//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaMempoolResponse {
  /// Returns a new [RosettaMempoolResponse] instance.
  RosettaMempoolResponse({
    this.transactionIdentifiers = const [],
    this.metadata,
  });

  List<Object> transactionIdentifiers;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaMempoolResponse &&
     other.transactionIdentifiers == transactionIdentifiers &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionIdentifiers == null ? 0 : transactionIdentifiers.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaMempoolResponse[transactionIdentifiers=$transactionIdentifiers, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_identifiers'] = transactionIdentifiers;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaMempoolResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaMempoolResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaMempoolResponse(
        transactionIdentifiers: Object.listFromJson(json[r'transaction_identifiers']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaMempoolResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaMempoolResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaMempoolResponse>[];

  static Map<String, RosettaMempoolResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaMempoolResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaMempoolResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaMempoolResponse-objects as value to a dart map
  static Map<String, List<RosettaMempoolResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaMempoolResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaMempoolResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

