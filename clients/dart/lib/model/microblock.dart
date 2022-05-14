//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class Microblock {
  /// Returns a new [Microblock] instance.
  Microblock({
    @required this.canonical,
    @required this.microblockCanonical,
    @required this.microblockHash,
    @required this.microblockSequence,
    @required this.microblockParentHash,
    @required this.blockHeight,
    @required this.parentBlockHeight,
    @required this.parentBlockHash,
    @required this.parentBurnBlockHash,
    @required this.parentBurnBlockTime,
    @required this.parentBurnBlockTimeIso,
    @required this.parentBurnBlockHeight,
    this.blockHash,
    this.txs = const [],
  });

  /// Set to `true` if the microblock corresponds to the canonical chain tip.
  bool canonical;

  /// Set to `true` if the microblock was not orphaned in a following anchor block. Defaults to `true` if the following anchor block has not yet been created.
  bool microblockCanonical;

  /// The SHA512/256 hash of this microblock.
  String microblockHash;

  /// A hint to describe how to order a set of microblocks. Starts at 0.
  int microblockSequence;

  /// The SHA512/256 hash of the previous signed microblock in this stream.
  String microblockParentHash;

  /// The anchor block height that confirmed this microblock.
  int blockHeight;

  /// The height of the anchor block that preceded this microblock.
  int parentBlockHeight;

  /// The hash of the anchor block that preceded this microblock.
  String parentBlockHash;

  /// The hash of the Bitcoin block that preceded this microblock.
  String parentBurnBlockHash;

  /// The block timestamp of the Bitcoin block that preceded this microblock.
  int parentBurnBlockTime;

  /// The ISO 8601 (YYYY-MM-DDTHH:mm:ss.sssZ) formatted block time of the bitcoin block that preceded this microblock.
  String parentBurnBlockTimeIso;

  /// The height of the Bitcoin block that preceded this microblock.
  int parentBurnBlockHeight;

  /// The hash of the anchor block that confirmed this microblock. This wil be empty for unanchored microblocks
  String blockHash;

  /// List of transactions included in the microblock
  List<String> txs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Microblock &&
     other.canonical == canonical &&
     other.microblockCanonical == microblockCanonical &&
     other.microblockHash == microblockHash &&
     other.microblockSequence == microblockSequence &&
     other.microblockParentHash == microblockParentHash &&
     other.blockHeight == blockHeight &&
     other.parentBlockHeight == parentBlockHeight &&
     other.parentBlockHash == parentBlockHash &&
     other.parentBurnBlockHash == parentBurnBlockHash &&
     other.parentBurnBlockTime == parentBurnBlockTime &&
     other.parentBurnBlockTimeIso == parentBurnBlockTimeIso &&
     other.parentBurnBlockHeight == parentBurnBlockHeight &&
     other.blockHash == blockHash &&
     other.txs == txs;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (canonical == null ? 0 : canonical.hashCode) +
    (microblockCanonical == null ? 0 : microblockCanonical.hashCode) +
    (microblockHash == null ? 0 : microblockHash.hashCode) +
    (microblockSequence == null ? 0 : microblockSequence.hashCode) +
    (microblockParentHash == null ? 0 : microblockParentHash.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode) +
    (parentBlockHeight == null ? 0 : parentBlockHeight.hashCode) +
    (parentBlockHash == null ? 0 : parentBlockHash.hashCode) +
    (parentBurnBlockHash == null ? 0 : parentBurnBlockHash.hashCode) +
    (parentBurnBlockTime == null ? 0 : parentBurnBlockTime.hashCode) +
    (parentBurnBlockTimeIso == null ? 0 : parentBurnBlockTimeIso.hashCode) +
    (parentBurnBlockHeight == null ? 0 : parentBurnBlockHeight.hashCode) +
    (blockHash == null ? 0 : blockHash.hashCode) +
    (txs == null ? 0 : txs.hashCode);

  @override
  String toString() => 'Microblock[canonical=$canonical, microblockCanonical=$microblockCanonical, microblockHash=$microblockHash, microblockSequence=$microblockSequence, microblockParentHash=$microblockParentHash, blockHeight=$blockHeight, parentBlockHeight=$parentBlockHeight, parentBlockHash=$parentBlockHash, parentBurnBlockHash=$parentBurnBlockHash, parentBurnBlockTime=$parentBurnBlockTime, parentBurnBlockTimeIso=$parentBurnBlockTimeIso, parentBurnBlockHeight=$parentBurnBlockHeight, blockHash=$blockHash, txs=$txs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canonical'] = canonical;
      json[r'microblock_canonical'] = microblockCanonical;
      json[r'microblock_hash'] = microblockHash;
      json[r'microblock_sequence'] = microblockSequence;
      json[r'microblock_parent_hash'] = microblockParentHash;
      json[r'block_height'] = blockHeight;
      json[r'parent_block_height'] = parentBlockHeight;
      json[r'parent_block_hash'] = parentBlockHash;
      json[r'parent_burn_block_hash'] = parentBurnBlockHash;
      json[r'parent_burn_block_time'] = parentBurnBlockTime;
      json[r'parent_burn_block_time_iso'] = parentBurnBlockTimeIso;
      json[r'parent_burn_block_height'] = parentBurnBlockHeight;
      json[r'block_hash'] = blockHash == null ? null : blockHash;
      json[r'txs'] = txs;
    return json;
  }

  /// Returns a new [Microblock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Microblock fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Microblock(
        canonical: mapValueOfType<bool>(json, r'canonical'),
        microblockCanonical: mapValueOfType<bool>(json, r'microblock_canonical'),
        microblockHash: mapValueOfType<String>(json, r'microblock_hash'),
        microblockSequence: mapValueOfType<int>(json, r'microblock_sequence'),
        microblockParentHash: mapValueOfType<String>(json, r'microblock_parent_hash'),
        blockHeight: mapValueOfType<int>(json, r'block_height'),
        parentBlockHeight: mapValueOfType<int>(json, r'parent_block_height'),
        parentBlockHash: mapValueOfType<String>(json, r'parent_block_hash'),
        parentBurnBlockHash: mapValueOfType<String>(json, r'parent_burn_block_hash'),
        parentBurnBlockTime: mapValueOfType<int>(json, r'parent_burn_block_time'),
        parentBurnBlockTimeIso: mapValueOfType<String>(json, r'parent_burn_block_time_iso'),
        parentBurnBlockHeight: mapValueOfType<int>(json, r'parent_burn_block_height'),
        blockHash: mapValueOfType<String>(json, r'block_hash'),
        txs: json[r'txs'] is List
          ? (json[r'txs'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<Microblock> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Microblock.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Microblock>[];

  static Map<String, Microblock> mapFromJson(dynamic json) {
    final map = <String, Microblock>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Microblock.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Microblock-objects as value to a dart map
  static Map<String, List<Microblock>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Microblock>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Microblock.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

