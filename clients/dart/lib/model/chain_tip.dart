//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ChainTip {
  /// Returns a new [ChainTip] instance.
  ChainTip({
    @required this.blockHeight,
    @required this.blockHash,
    @required this.indexBlockHash,
    this.microblockHash,
    this.microblockSequence,
  });

  /// the current block height
  int blockHeight;

  /// the current block hash
  String blockHash;

  /// the current index block hash
  String indexBlockHash;

  /// the current microblock hash
  String microblockHash;

  /// the current microblock sequence number
  int microblockSequence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChainTip &&
     other.blockHeight == blockHeight &&
     other.blockHash == blockHash &&
     other.indexBlockHash == indexBlockHash &&
     other.microblockHash == microblockHash &&
     other.microblockSequence == microblockSequence;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (blockHeight == null ? 0 : blockHeight.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (indexBlockHash == null ? 0 : indexBlockHash.hashCode) +
    (microblockHash == null ? 0 : microblockHash.hashCode) +
    (microblockSequence == null ? 0 : microblockSequence.hashCode);

  @override
  String toString() => 'ChainTip[blockHeight=$blockHeight, blockHash=$blockHash, indexBlockHash=$indexBlockHash, microblockHash=$microblockHash, microblockSequence=$microblockSequence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'block_height'] = blockHeight;
      json[r'block_hash'] = blockHash;
      json[r'index_block_hash'] = indexBlockHash;
    if (microblockHash != null) {
      json[r'microblock_hash'] = microblockHash;
    }
    if (microblockSequence != null) {
      json[r'microblock_sequence'] = microblockSequence;
    }
    return json;
  }

  /// Returns a new [ChainTip] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChainTip fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ChainTip(
        blockHeight: mapValueOfType<int>(json, r'block_height'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        indexBlockHash: mapValueOfType<String>(json, r'index_block_hash'),
        microblockHash: mapValueOfType<String>(json, r'microblock_hash'),
        microblockSequence: mapValueOfType<int>(json, r'microblock_sequence'),
      );
    }
    return null;
  }

  static List<ChainTip> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ChainTip.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ChainTip>[];

  static Map<String, ChainTip> mapFromJson(dynamic json) {
    final map = <String, ChainTip>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ChainTip.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ChainTip-objects as value to a dart map
  static Map<String, List<ChainTip>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ChainTip>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ChainTip.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

