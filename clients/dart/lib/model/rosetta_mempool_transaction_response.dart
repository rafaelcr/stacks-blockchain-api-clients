//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaMempoolTransactionResponse {
  /// Returns a new [RosettaMempoolTransactionResponse] instance.
  RosettaMempoolTransactionResponse({
    @required this.transaction,
    this.metadata,
  });

  Object transaction;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaMempoolTransactionResponse &&
     other.transaction == transaction &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transaction == null ? 0 : transaction.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaMempoolTransactionResponse[transaction=$transaction, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction'] = transaction;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaMempoolTransactionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaMempoolTransactionResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaMempoolTransactionResponse(
        transaction: Object.fromJson(json[r'transaction']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaMempoolTransactionResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaMempoolTransactionResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaMempoolTransactionResponse>[];

  static Map<String, RosettaMempoolTransactionResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaMempoolTransactionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaMempoolTransactionResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaMempoolTransactionResponse-objects as value to a dart map
  static Map<String, List<RosettaMempoolTransactionResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaMempoolTransactionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaMempoolTransactionResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

