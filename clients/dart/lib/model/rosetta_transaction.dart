//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaTransaction {
  /// Returns a new [RosettaTransaction] instance.
  RosettaTransaction({
    @required this.transactionIdentifier,
    this.operations = const [],
    this.metadata,
  });

  Object transactionIdentifier;

  /// List of operations
  List<Object> operations;

  RosettaTransactionMetadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaTransaction &&
     other.transactionIdentifier == transactionIdentifier &&
     other.operations == operations &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionIdentifier == null ? 0 : transactionIdentifier.hashCode) +
    (operations == null ? 0 : operations.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaTransaction[transactionIdentifier=$transactionIdentifier, operations=$operations, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_identifier'] = transactionIdentifier;
      json[r'operations'] = operations;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaTransaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaTransaction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaTransaction(
        transactionIdentifier: Object.fromJson(json[r'transaction_identifier']),
        operations: Object.listFromJson(json[r'operations']),
        metadata: RosettaTransactionMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<RosettaTransaction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaTransaction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaTransaction>[];

  static Map<String, RosettaTransaction> mapFromJson(dynamic json) {
    final map = <String, RosettaTransaction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaTransaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaTransaction-objects as value to a dart map
  static Map<String, List<RosettaTransaction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaTransaction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaTransaction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

