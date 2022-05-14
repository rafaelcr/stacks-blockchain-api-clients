//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaMempoolTransactionRequest {
  /// Returns a new [RosettaMempoolTransactionRequest] instance.
  RosettaMempoolTransactionRequest({
    @required this.networkIdentifier,
    @required this.transactionIdentifier,
  });

  Object networkIdentifier;

  Object transactionIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaMempoolTransactionRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.transactionIdentifier == transactionIdentifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (transactionIdentifier == null ? 0 : transactionIdentifier.hashCode);

  @override
  String toString() => 'RosettaMempoolTransactionRequest[networkIdentifier=$networkIdentifier, transactionIdentifier=$transactionIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'transaction_identifier'] = transactionIdentifier;
    return json;
  }

  /// Returns a new [RosettaMempoolTransactionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaMempoolTransactionRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaMempoolTransactionRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        transactionIdentifier: Object.fromJson(json[r'transaction_identifier']),
      );
    }
    return null;
  }

  static List<RosettaMempoolTransactionRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaMempoolTransactionRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaMempoolTransactionRequest>[];

  static Map<String, RosettaMempoolTransactionRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaMempoolTransactionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaMempoolTransactionRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaMempoolTransactionRequest-objects as value to a dart map
  static Map<String, List<RosettaMempoolTransactionRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaMempoolTransactionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaMempoolTransactionRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

