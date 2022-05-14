//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressBalanceResponseStx {
  /// Returns a new [AddressBalanceResponseStx] instance.
  AddressBalanceResponseStx({
    @required this.balance,
    @required this.totalSent,
    @required this.totalReceived,
    @required this.totalFeesSent,
    @required this.totalMinerRewardsReceived,
    @required this.lockTxId,
    @required this.locked,
    @required this.lockHeight,
    @required this.burnchainLockHeight,
    @required this.burnchainUnlockHeight,
  });

  String balance;

  String totalSent;

  String totalReceived;

  String totalFeesSent;

  String totalMinerRewardsReceived;

  /// The transaction where the lock event occurred. Empty if no tokens are locked.
  String lockTxId;

  /// The amount of locked STX, as string quoted micro-STX. Zero if no tokens are locked.
  String locked;

  /// The STX chain block height of when the lock event occurred. Zero if no tokens are locked.
  int lockHeight;

  /// The burnchain block height of when the lock event occurred. Zero if no tokens are locked.
  int burnchainLockHeight;

  /// The burnchain block height of when the tokens unlock. Zero if no tokens are locked.
  int burnchainUnlockHeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressBalanceResponseStx &&
     other.balance == balance &&
     other.totalSent == totalSent &&
     other.totalReceived == totalReceived &&
     other.totalFeesSent == totalFeesSent &&
     other.totalMinerRewardsReceived == totalMinerRewardsReceived &&
     other.lockTxId == lockTxId &&
     other.locked == locked &&
     other.lockHeight == lockHeight &&
     other.burnchainLockHeight == burnchainLockHeight &&
     other.burnchainUnlockHeight == burnchainUnlockHeight;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance.hashCode) +
    (totalSent == null ? 0 : totalSent.hashCode) +
    (totalReceived == null ? 0 : totalReceived.hashCode) +
    (totalFeesSent == null ? 0 : totalFeesSent.hashCode) +
    (totalMinerRewardsReceived == null ? 0 : totalMinerRewardsReceived.hashCode) +
    (lockTxId == null ? 0 : lockTxId.hashCode) +
    (locked == null ? 0 : locked.hashCode) +
    (lockHeight == null ? 0 : lockHeight.hashCode) +
    (burnchainLockHeight == null ? 0 : burnchainLockHeight.hashCode) +
    (burnchainUnlockHeight == null ? 0 : burnchainUnlockHeight.hashCode);

  @override
  String toString() => 'AddressBalanceResponseStx[balance=$balance, totalSent=$totalSent, totalReceived=$totalReceived, totalFeesSent=$totalFeesSent, totalMinerRewardsReceived=$totalMinerRewardsReceived, lockTxId=$lockTxId, locked=$locked, lockHeight=$lockHeight, burnchainLockHeight=$burnchainLockHeight, burnchainUnlockHeight=$burnchainUnlockHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balance'] = balance;
      json[r'total_sent'] = totalSent;
      json[r'total_received'] = totalReceived;
      json[r'total_fees_sent'] = totalFeesSent;
      json[r'total_miner_rewards_received'] = totalMinerRewardsReceived;
      json[r'lock_tx_id'] = lockTxId;
      json[r'locked'] = locked;
      json[r'lock_height'] = lockHeight;
      json[r'burnchain_lock_height'] = burnchainLockHeight;
      json[r'burnchain_unlock_height'] = burnchainUnlockHeight;
    return json;
  }

  /// Returns a new [AddressBalanceResponseStx] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressBalanceResponseStx fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressBalanceResponseStx(
        balance: mapValueOfType<String>(json, r'balance'),
        totalSent: mapValueOfType<String>(json, r'total_sent'),
        totalReceived: mapValueOfType<String>(json, r'total_received'),
        totalFeesSent: mapValueOfType<String>(json, r'total_fees_sent'),
        totalMinerRewardsReceived: mapValueOfType<String>(json, r'total_miner_rewards_received'),
        lockTxId: mapValueOfType<String>(json, r'lock_tx_id'),
        locked: mapValueOfType<String>(json, r'locked'),
        lockHeight: mapValueOfType<int>(json, r'lock_height'),
        burnchainLockHeight: mapValueOfType<int>(json, r'burnchain_lock_height'),
        burnchainUnlockHeight: mapValueOfType<int>(json, r'burnchain_unlock_height'),
      );
    }
    return null;
  }

  static List<AddressBalanceResponseStx> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressBalanceResponseStx.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressBalanceResponseStx>[];

  static Map<String, AddressBalanceResponseStx> mapFromJson(dynamic json) {
    final map = <String, AddressBalanceResponseStx>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressBalanceResponseStx.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressBalanceResponseStx-objects as value to a dart map
  static Map<String, List<AddressBalanceResponseStx>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressBalanceResponseStx>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressBalanceResponseStx.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

