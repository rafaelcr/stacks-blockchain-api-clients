//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BurnchainRewardSlotHolder {
  /// Returns a new [BurnchainRewardSlotHolder] instance.
  BurnchainRewardSlotHolder({
    @required this.canonical,
    @required this.burnBlockHash,
    @required this.burnBlockHeight,
    @required this.address,
    @required this.slotIndex,
  });

  /// Set to `true` if block corresponds to the canonical burchchain tip
  bool canonical;

  /// The hash representing the burnchain block
  String burnBlockHash;

  /// Height of the burnchain block
  int burnBlockHeight;

  /// The recipient address that validly received PoX commitments, in the format native to the burnchain (e.g. B58 encoded for Bitcoin)
  String address;

  /// The index position of the reward entry, useful for ordering when there's more than one slot per burnchain block
  int slotIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BurnchainRewardSlotHolder &&
     other.canonical == canonical &&
     other.burnBlockHash == burnBlockHash &&
     other.burnBlockHeight == burnBlockHeight &&
     other.address == address &&
     other.slotIndex == slotIndex;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (canonical == null ? 0 : canonical.hashCode) +
    (burnBlockHash == null ? 0 : burnBlockHash.hashCode) +
    (burnBlockHeight == null ? 0 : burnBlockHeight.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (slotIndex == null ? 0 : slotIndex.hashCode);

  @override
  String toString() => 'BurnchainRewardSlotHolder[canonical=$canonical, burnBlockHash=$burnBlockHash, burnBlockHeight=$burnBlockHeight, address=$address, slotIndex=$slotIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canonical'] = canonical;
      json[r'burn_block_hash'] = burnBlockHash;
      json[r'burn_block_height'] = burnBlockHeight;
      json[r'address'] = address;
      json[r'slot_index'] = slotIndex;
    return json;
  }

  /// Returns a new [BurnchainRewardSlotHolder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BurnchainRewardSlotHolder fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BurnchainRewardSlotHolder(
        canonical: mapValueOfType<bool>(json, r'canonical'),
        burnBlockHash: mapValueOfType<String>(json, r'burn_block_hash'),
        burnBlockHeight: mapValueOfType<int>(json, r'burn_block_height'),
        address: mapValueOfType<String>(json, r'address'),
        slotIndex: mapValueOfType<int>(json, r'slot_index'),
      );
    }
    return null;
  }

  static List<BurnchainRewardSlotHolder> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BurnchainRewardSlotHolder.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BurnchainRewardSlotHolder>[];

  static Map<String, BurnchainRewardSlotHolder> mapFromJson(dynamic json) {
    final map = <String, BurnchainRewardSlotHolder>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BurnchainRewardSlotHolder.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BurnchainRewardSlotHolder-objects as value to a dart map
  static Map<String, List<BurnchainRewardSlotHolder>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BurnchainRewardSlotHolder>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BurnchainRewardSlotHolder.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

