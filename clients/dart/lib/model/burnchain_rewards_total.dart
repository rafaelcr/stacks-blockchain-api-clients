//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BurnchainRewardsTotal {
  /// Returns a new [BurnchainRewardsTotal] instance.
  BurnchainRewardsTotal({
    @required this.rewardRecipient,
    @required this.rewardAmount,
  });

  /// The recipient address that received the burnchain rewards, in the format native to the burnchain (e.g. B58 encoded for Bitcoin)
  String rewardRecipient;

  /// The total amount of burnchain tokens rewarded to the recipient, in the smallest unit (e.g. satoshis for Bitcoin)
  String rewardAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BurnchainRewardsTotal &&
     other.rewardRecipient == rewardRecipient &&
     other.rewardAmount == rewardAmount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (rewardRecipient == null ? 0 : rewardRecipient.hashCode) +
    (rewardAmount == null ? 0 : rewardAmount.hashCode);

  @override
  String toString() => 'BurnchainRewardsTotal[rewardRecipient=$rewardRecipient, rewardAmount=$rewardAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reward_recipient'] = rewardRecipient;
      json[r'reward_amount'] = rewardAmount;
    return json;
  }

  /// Returns a new [BurnchainRewardsTotal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BurnchainRewardsTotal fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BurnchainRewardsTotal(
        rewardRecipient: mapValueOfType<String>(json, r'reward_recipient'),
        rewardAmount: mapValueOfType<String>(json, r'reward_amount'),
      );
    }
    return null;
  }

  static List<BurnchainRewardsTotal> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BurnchainRewardsTotal.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BurnchainRewardsTotal>[];

  static Map<String, BurnchainRewardsTotal> mapFromJson(dynamic json) {
    final map = <String, BurnchainRewardsTotal>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BurnchainRewardsTotal.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BurnchainRewardsTotal-objects as value to a dart map
  static Map<String, List<BurnchainRewardsTotal>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BurnchainRewardsTotal>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BurnchainRewardsTotal.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

