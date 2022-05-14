//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaOperation {
  /// Returns a new [RosettaOperation] instance.
  RosettaOperation({
    @required this.operationIdentifier,
    this.relatedOperations = const [],
    @required this.type,
    this.status,
    this.account,
    this.amount,
    this.coinChange,
    this.metadata,
  });

  RosettaOperationIdentifier operationIdentifier;

  /// Restrict referenced related_operations to identifier indexes < the current operation_identifier.index. This ensures there exists a clear DAG-structure of relations. Since operations are one-sided, one could imagine relating operations in a single transfer or linking operations in a call tree.
  List<RosettaRelatedOperation> relatedOperations;

  /// The network-specific type of the operation. Ensure that any type that can be returned here is also specified in the NetworkStatus. This can be very useful to downstream consumers that parse all block data.
  String type;

  /// The network-specific status of the operation. Status is not defined on the transaction object because blockchains with smart contracts may have transactions that partially apply. Blockchains with atomic transactions (all operations succeed or all operations fail) will have the same status for each operation.
  String status;

  Object account;

  Object amount;

  RosettaCoinChange coinChange;

  /// Operations Meta Data
  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaOperation &&
     other.operationIdentifier == operationIdentifier &&
     other.relatedOperations == relatedOperations &&
     other.type == type &&
     other.status == status &&
     other.account == account &&
     other.amount == amount &&
     other.coinChange == coinChange &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (operationIdentifier == null ? 0 : operationIdentifier.hashCode) +
    (relatedOperations == null ? 0 : relatedOperations.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (account == null ? 0 : account.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (coinChange == null ? 0 : coinChange.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaOperation[operationIdentifier=$operationIdentifier, relatedOperations=$relatedOperations, type=$type, status=$status, account=$account, amount=$amount, coinChange=$coinChange, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operation_identifier'] = operationIdentifier;
    if (relatedOperations != null) {
      json[r'related_operations'] = relatedOperations;
    }
      json[r'type'] = type;
    if (status != null) {
      json[r'status'] = status;
    }
    if (account != null) {
      json[r'account'] = account;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    if (coinChange != null) {
      json[r'coin_change'] = coinChange;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaOperation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaOperation fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaOperation(
        operationIdentifier: RosettaOperationIdentifier.fromJson(json[r'operation_identifier']),
        relatedOperations: RosettaRelatedOperation.listFromJson(json[r'related_operations']),
        type: mapValueOfType<String>(json, r'type'),
        status: mapValueOfType<String>(json, r'status'),
        account: Object.fromJson(json[r'account']),
        amount: Object.fromJson(json[r'amount']),
        coinChange: RosettaCoinChange.fromJson(json[r'coin_change']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaOperation> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaOperation.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaOperation>[];

  static Map<String, RosettaOperation> mapFromJson(dynamic json) {
    final map = <String, RosettaOperation>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaOperation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaOperation-objects as value to a dart map
  static Map<String, List<RosettaOperation>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaOperation>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaOperation.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

