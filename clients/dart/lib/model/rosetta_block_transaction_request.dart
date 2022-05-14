//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaBlockTransactionRequest {
  /// Returns a new [RosettaBlockTransactionRequest] instance.
  RosettaBlockTransactionRequest({
    @required this.networkIdentifier,
    @required this.blockIdentifier,
    @required this.transactionIdentifier,
  });

  Object networkIdentifier;

  Object blockIdentifier;

  TransactionIdentifier transactionIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaBlockTransactionRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.blockIdentifier == blockIdentifier &&
     other.transactionIdentifier == transactionIdentifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (blockIdentifier == null ? 0 : blockIdentifier.hashCode) +
    (transactionIdentifier == null ? 0 : transactionIdentifier.hashCode);

  @override
  String toString() => 'RosettaBlockTransactionRequest[networkIdentifier=$networkIdentifier, blockIdentifier=$blockIdentifier, transactionIdentifier=$transactionIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'block_identifier'] = blockIdentifier;
      json[r'transaction_identifier'] = transactionIdentifier;
    return json;
  }

  /// Returns a new [RosettaBlockTransactionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaBlockTransactionRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaBlockTransactionRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        blockIdentifier: Object.fromJson(json[r'block_identifier']),
        transactionIdentifier: TransactionIdentifier.fromJson(json[r'transaction_identifier']),
      );
    }
    return null;
  }

  static List<RosettaBlockTransactionRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaBlockTransactionRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaBlockTransactionRequest>[];

  static Map<String, RosettaBlockTransactionRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaBlockTransactionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaBlockTransactionRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaBlockTransactionRequest-objects as value to a dart map
  static Map<String, List<RosettaBlockTransactionRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaBlockTransactionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaBlockTransactionRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

