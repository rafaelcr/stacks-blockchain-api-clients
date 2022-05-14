//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaBlock {
  /// Returns a new [RosettaBlock] instance.
  RosettaBlock({
    @required this.blockIdentifier,
    @required this.parentBlockIdentifier,
    @required this.timestamp,
    this.transactions = const [],
    this.metadata,
  });

  Object blockIdentifier;

  RosettaParentBlockIdentifier parentBlockIdentifier;

  /// The timestamp of the block in milliseconds since the Unix Epoch. The timestamp is stored in milliseconds because some blockchains produce blocks more often than once a second.
  int timestamp;

  /// All the transactions in the block
  List<Object> transactions;

  RosettaBlockMetadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaBlock &&
     other.blockIdentifier == blockIdentifier &&
     other.parentBlockIdentifier == parentBlockIdentifier &&
     other.timestamp == timestamp &&
     other.transactions == transactions &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (blockIdentifier == null ? 0 : blockIdentifier.hashCode) +
    (parentBlockIdentifier == null ? 0 : parentBlockIdentifier.hashCode) +
    (timestamp == null ? 0 : timestamp.hashCode) +
    (transactions == null ? 0 : transactions.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaBlock[blockIdentifier=$blockIdentifier, parentBlockIdentifier=$parentBlockIdentifier, timestamp=$timestamp, transactions=$transactions, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'block_identifier'] = blockIdentifier;
      json[r'parent_block_identifier'] = parentBlockIdentifier;
      json[r'timestamp'] = timestamp;
      json[r'transactions'] = transactions;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaBlock fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaBlock(
        blockIdentifier: Object.fromJson(json[r'block_identifier']),
        parentBlockIdentifier: RosettaParentBlockIdentifier.fromJson(json[r'parent_block_identifier']),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        transactions: Object.listFromJson(json[r'transactions']),
        metadata: RosettaBlockMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<RosettaBlock> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaBlock.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaBlock>[];

  static Map<String, RosettaBlock> mapFromJson(dynamic json) {
    final map = <String, RosettaBlock>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaBlock.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaBlock-objects as value to a dart map
  static Map<String, List<RosettaBlock>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaBlock>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaBlock.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

