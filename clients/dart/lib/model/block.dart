//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class Block {
  /// Returns a new [Block] instance.
  Block({
    @required this.canonical,
    @required this.height,
    @required this.hash,
    @required this.parentBlockHash,
    @required this.burnBlockTime,
    @required this.burnBlockTimeIso,
    @required this.burnBlockHash,
    @required this.burnBlockHeight,
    @required this.minerTxid,
    @required this.parentMicroblockHash,
    @required this.parentMicroblockSequence,
    this.txs = const [],
    this.microblocksAccepted = const [],
    this.microblocksStreamed = const [],
    @required this.executionCostReadCount,
    @required this.executionCostReadLength,
    @required this.executionCostRuntime,
    @required this.executionCostWriteCount,
    @required this.executionCostWriteLength,
  });

  /// Set to `true` if block corresponds to the canonical chain tip
  bool canonical;

  /// Height of the block
  int height;

  /// Hash representing the block
  String hash;

  /// Hash of the parent block
  String parentBlockHash;

  /// Unix timestamp (in seconds) indicating when this block was mined.
  num burnBlockTime;

  /// An ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) indicating when this block was mined.
  String burnBlockTimeIso;

  /// Hash of the anchor chain block
  String burnBlockHash;

  /// Height of the anchor chain block
  int burnBlockHeight;

  /// Anchor chain transaction ID
  String minerTxid;

  /// The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1.
  String parentMicroblockHash;

  /// The hash of the last streamed block that precedes this block to which this block is to be appended. Not every anchored block will have a parent microblock stream. An anchored block that does not have a parent microblock stream has the parent microblock hash set to an empty string, and the parent microblock sequence number set to -1.
  int parentMicroblockSequence;

  /// List of transactions included in the block
  List<String> txs;

  /// List of microblocks that were accepted in this anchor block. Not every anchored block will have a accepted all (or any) of the previously streamed microblocks. Microblocks that were orphaned are not included in this list.
  List<String> microblocksAccepted;

  /// List of microblocks that were streamed/produced by this anchor block's miner. This list only includes microblocks that were accepted in the following anchor block. Microblocks that were orphaned are not included in this list.
  List<String> microblocksStreamed;

  /// Execution cost read count.
  int executionCostReadCount;

  /// Execution cost read length.
  int executionCostReadLength;

  /// Execution cost runtime.
  int executionCostRuntime;

  /// Execution cost write count.
  int executionCostWriteCount;

  /// Execution cost write length.
  int executionCostWriteLength;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Block &&
     other.canonical == canonical &&
     other.height == height &&
     other.hash == hash &&
     other.parentBlockHash == parentBlockHash &&
     other.burnBlockTime == burnBlockTime &&
     other.burnBlockTimeIso == burnBlockTimeIso &&
     other.burnBlockHash == burnBlockHash &&
     other.burnBlockHeight == burnBlockHeight &&
     other.minerTxid == minerTxid &&
     other.parentMicroblockHash == parentMicroblockHash &&
     other.parentMicroblockSequence == parentMicroblockSequence &&
     other.txs == txs &&
     other.microblocksAccepted == microblocksAccepted &&
     other.microblocksStreamed == microblocksStreamed &&
     other.executionCostReadCount == executionCostReadCount &&
     other.executionCostReadLength == executionCostReadLength &&
     other.executionCostRuntime == executionCostRuntime &&
     other.executionCostWriteCount == executionCostWriteCount &&
     other.executionCostWriteLength == executionCostWriteLength;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (canonical == null ? 0 : canonical.hashCode) +
    (height == null ? 0 : height.hashCode) +
    (hash == null ? 0 : hash.hashCode) +
    (parentBlockHash == null ? 0 : parentBlockHash.hashCode) +
    (burnBlockTime == null ? 0 : burnBlockTime.hashCode) +
    (burnBlockTimeIso == null ? 0 : burnBlockTimeIso.hashCode) +
    (burnBlockHash == null ? 0 : burnBlockHash.hashCode) +
    (burnBlockHeight == null ? 0 : burnBlockHeight.hashCode) +
    (minerTxid == null ? 0 : minerTxid.hashCode) +
    (parentMicroblockHash == null ? 0 : parentMicroblockHash.hashCode) +
    (parentMicroblockSequence == null ? 0 : parentMicroblockSequence.hashCode) +
    (txs == null ? 0 : txs.hashCode) +
    (microblocksAccepted == null ? 0 : microblocksAccepted.hashCode) +
    (microblocksStreamed == null ? 0 : microblocksStreamed.hashCode) +
    (executionCostReadCount == null ? 0 : executionCostReadCount.hashCode) +
    (executionCostReadLength == null ? 0 : executionCostReadLength.hashCode) +
    (executionCostRuntime == null ? 0 : executionCostRuntime.hashCode) +
    (executionCostWriteCount == null ? 0 : executionCostWriteCount.hashCode) +
    (executionCostWriteLength == null ? 0 : executionCostWriteLength.hashCode);

  @override
  String toString() => 'Block[canonical=$canonical, height=$height, hash=$hash, parentBlockHash=$parentBlockHash, burnBlockTime=$burnBlockTime, burnBlockTimeIso=$burnBlockTimeIso, burnBlockHash=$burnBlockHash, burnBlockHeight=$burnBlockHeight, minerTxid=$minerTxid, parentMicroblockHash=$parentMicroblockHash, parentMicroblockSequence=$parentMicroblockSequence, txs=$txs, microblocksAccepted=$microblocksAccepted, microblocksStreamed=$microblocksStreamed, executionCostReadCount=$executionCostReadCount, executionCostReadLength=$executionCostReadLength, executionCostRuntime=$executionCostRuntime, executionCostWriteCount=$executionCostWriteCount, executionCostWriteLength=$executionCostWriteLength]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canonical'] = canonical;
      json[r'height'] = height;
      json[r'hash'] = hash;
      json[r'parent_block_hash'] = parentBlockHash;
      json[r'burn_block_time'] = burnBlockTime;
      json[r'burn_block_time_iso'] = burnBlockTimeIso;
      json[r'burn_block_hash'] = burnBlockHash;
      json[r'burn_block_height'] = burnBlockHeight;
      json[r'miner_txid'] = minerTxid;
      json[r'parent_microblock_hash'] = parentMicroblockHash;
      json[r'parent_microblock_sequence'] = parentMicroblockSequence;
      json[r'txs'] = txs;
      json[r'microblocks_accepted'] = microblocksAccepted;
      json[r'microblocks_streamed'] = microblocksStreamed;
      json[r'execution_cost_read_count'] = executionCostReadCount;
      json[r'execution_cost_read_length'] = executionCostReadLength;
      json[r'execution_cost_runtime'] = executionCostRuntime;
      json[r'execution_cost_write_count'] = executionCostWriteCount;
      json[r'execution_cost_write_length'] = executionCostWriteLength;
    return json;
  }

  /// Returns a new [Block] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Block fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Block(
        canonical: mapValueOfType<bool>(json, r'canonical'),
        height: mapValueOfType<int>(json, r'height'),
        hash: mapValueOfType<String>(json, r'hash'),
        parentBlockHash: mapValueOfType<String>(json, r'parent_block_hash'),
        burnBlockTime: json[r'burn_block_time'] == null
          ? null
          : num.parse(json[r'burn_block_time'].toString()),
        burnBlockTimeIso: mapValueOfType<String>(json, r'burn_block_time_iso'),
        burnBlockHash: mapValueOfType<String>(json, r'burn_block_hash'),
        burnBlockHeight: mapValueOfType<int>(json, r'burn_block_height'),
        minerTxid: mapValueOfType<String>(json, r'miner_txid'),
        parentMicroblockHash: mapValueOfType<String>(json, r'parent_microblock_hash'),
        parentMicroblockSequence: mapValueOfType<int>(json, r'parent_microblock_sequence'),
        txs: json[r'txs'] is List
          ? (json[r'txs'] as List).cast<String>()
          : null,
        microblocksAccepted: json[r'microblocks_accepted'] is List
          ? (json[r'microblocks_accepted'] as List).cast<String>()
          : null,
        microblocksStreamed: json[r'microblocks_streamed'] is List
          ? (json[r'microblocks_streamed'] as List).cast<String>()
          : null,
        executionCostReadCount: mapValueOfType<int>(json, r'execution_cost_read_count'),
        executionCostReadLength: mapValueOfType<int>(json, r'execution_cost_read_length'),
        executionCostRuntime: mapValueOfType<int>(json, r'execution_cost_runtime'),
        executionCostWriteCount: mapValueOfType<int>(json, r'execution_cost_write_count'),
        executionCostWriteLength: mapValueOfType<int>(json, r'execution_cost_write_length'),
      );
    }
    return null;
  }

  static List<Block> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Block.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Block>[];

  static Map<String, Block> mapFromJson(dynamic json) {
    final map = <String, Block>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Block.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Block-objects as value to a dart map
  static Map<String, List<Block>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Block>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Block.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

