//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressNonces {
  /// Returns a new [AddressNonces] instance.
  AddressNonces({
    this.lastMempoolTxNonce,
    this.lastExecutedTxNonce,
    @required this.possibleNextNonce,
    this.detectedMissingNonces = const [],
  });

  /// The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address.
  int lastMempoolTxNonce;

  /// The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address.
  int lastExecutedTxNonce;

  /// The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called.
  int possibleNextNonce;

  /// Nonces that appear to be missing and likely causing a mempool transaction to be stuck.
  List<int> detectedMissingNonces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressNonces &&
     other.lastMempoolTxNonce == lastMempoolTxNonce &&
     other.lastExecutedTxNonce == lastExecutedTxNonce &&
     other.possibleNextNonce == possibleNextNonce &&
     other.detectedMissingNonces == detectedMissingNonces;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (lastMempoolTxNonce == null ? 0 : lastMempoolTxNonce.hashCode) +
    (lastExecutedTxNonce == null ? 0 : lastExecutedTxNonce.hashCode) +
    (possibleNextNonce == null ? 0 : possibleNextNonce.hashCode) +
    (detectedMissingNonces == null ? 0 : detectedMissingNonces.hashCode);

  @override
  String toString() => 'AddressNonces[lastMempoolTxNonce=$lastMempoolTxNonce, lastExecutedTxNonce=$lastExecutedTxNonce, possibleNextNonce=$possibleNextNonce, detectedMissingNonces=$detectedMissingNonces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'last_mempool_tx_nonce'] = lastMempoolTxNonce == null ? null : lastMempoolTxNonce;
      json[r'last_executed_tx_nonce'] = lastExecutedTxNonce == null ? null : lastExecutedTxNonce;
      json[r'possible_next_nonce'] = possibleNextNonce;
      json[r'detected_missing_nonces'] = detectedMissingNonces;
    return json;
  }

  /// Returns a new [AddressNonces] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressNonces fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressNonces(
        lastMempoolTxNonce: mapValueOfType<int>(json, r'last_mempool_tx_nonce'),
        lastExecutedTxNonce: mapValueOfType<int>(json, r'last_executed_tx_nonce'),
        possibleNextNonce: mapValueOfType<int>(json, r'possible_next_nonce'),
        detectedMissingNonces: json[r'detected_missing_nonces'] is List
          ? (json[r'detected_missing_nonces'] as List).cast<int>()
          : null,
      );
    }
    return null;
  }

  static List<AddressNonces> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressNonces.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressNonces>[];

  static Map<String, AddressNonces> mapFromJson(dynamic json) {
    final map = <String, AddressNonces>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressNonces.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressNonces-objects as value to a dart map
  static Map<String, List<AddressNonces>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressNonces>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressNonces.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

