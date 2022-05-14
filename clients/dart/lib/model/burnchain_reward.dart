//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BurnchainReward {
  /// Returns a new [BurnchainReward] instance.
  BurnchainReward({
    @required this.canonical,
    @required this.burnBlockHash,
    @required this.burnBlockHeight,
    @required this.burnAmount,
    @required this.rewardRecipient,
    @required this.rewardAmount,
    @required this.rewardIndex,
  });

  /// Set to `true` if block corresponds to the canonical burchchain tip
  bool canonical;

  /// The hash representing the burnchain block
  String burnBlockHash;

  /// Height of the burnchain block
  int burnBlockHeight;

  /// The total amount of burnchain tokens burned for this burnchain block, in the smallest unit (e.g. satoshis for Bitcoin)
  String burnAmount;

  /// The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin)
  String rewardRecipient;

  /// The amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin)
  String rewardAmount;

  /// The index position of the reward entry, useful for ordering when there's more than one recipient per burnchain block
  int rewardIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BurnchainReward &&
     other.canonical == canonical &&
     other.burnBlockHash == burnBlockHash &&
     other.burnBlockHeight == burnBlockHeight &&
     other.burnAmount == burnAmount &&
     other.rewardRecipient == rewardRecipient &&
     other.rewardAmount == rewardAmount &&
     other.rewardIndex == rewardIndex;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (canonical == null ? 0 : canonical.hashCode) +
    (burnBlockHash == null ? 0 : burnBlockHash.hashCode) +
    (burnBlockHeight == null ? 0 : burnBlockHeight.hashCode) +
    (burnAmount == null ? 0 : burnAmount.hashCode) +
    (rewardRecipient == null ? 0 : rewardRecipient.hashCode) +
    (rewardAmount == null ? 0 : rewardAmount.hashCode) +
    (rewardIndex == null ? 0 : rewardIndex.hashCode);

  @override
  String toString() => 'BurnchainReward[canonical=$canonical, burnBlockHash=$burnBlockHash, burnBlockHeight=$burnBlockHeight, burnAmount=$burnAmount, rewardRecipient=$rewardRecipient, rewardAmount=$rewardAmount, rewardIndex=$rewardIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canonical'] = canonical;
      json[r'burn_block_hash'] = burnBlockHash;
      json[r'burn_block_height'] = burnBlockHeight;
      json[r'burn_amount'] = burnAmount;
      json[r'reward_recipient'] = rewardRecipient;
      json[r'reward_amount'] = rewardAmount;
      json[r'reward_index'] = rewardIndex;
    return json;
  }

  /// Returns a new [BurnchainReward] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BurnchainReward fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BurnchainReward(
        canonical: mapValueOfType<bool>(json, r'canonical'),
        burnBlockHash: mapValueOfType<String>(json, r'burn_block_hash'),
        burnBlockHeight: mapValueOfType<int>(json, r'burn_block_height'),
        burnAmount: mapValueOfType<String>(json, r'burn_amount'),
        rewardRecipient: mapValueOfType<String>(json, r'reward_recipient'),
        rewardAmount: mapValueOfType<String>(json, r'reward_amount'),
        rewardIndex: mapValueOfType<int>(json, r'reward_index'),
      );
    }
    return null;
  }

  static List<BurnchainReward> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BurnchainReward.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BurnchainReward>[];

  static Map<String, BurnchainReward> mapFromJson(dynamic json) {
    final map = <String, BurnchainReward>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BurnchainReward.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BurnchainReward-objects as value to a dart map
  static Map<String, List<BurnchainReward>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BurnchainReward>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BurnchainReward.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

