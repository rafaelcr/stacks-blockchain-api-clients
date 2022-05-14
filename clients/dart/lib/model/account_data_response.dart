//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AccountDataResponse {
  /// Returns a new [AccountDataResponse] instance.
  AccountDataResponse({
    @required this.balance,
    @required this.locked,
    @required this.unlockHeight,
    @required this.nonce,
    @required this.balanceProof,
    @required this.nonceProof,
  });

  String balance;

  String locked;

  int unlockHeight;

  int nonce;

  String balanceProof;

  String nonceProof;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountDataResponse &&
     other.balance == balance &&
     other.locked == locked &&
     other.unlockHeight == unlockHeight &&
     other.nonce == nonce &&
     other.balanceProof == balanceProof &&
     other.nonceProof == nonceProof;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance.hashCode) +
    (locked == null ? 0 : locked.hashCode) +
    (unlockHeight == null ? 0 : unlockHeight.hashCode) +
    (nonce == null ? 0 : nonce.hashCode) +
    (balanceProof == null ? 0 : balanceProof.hashCode) +
    (nonceProof == null ? 0 : nonceProof.hashCode);

  @override
  String toString() => 'AccountDataResponse[balance=$balance, locked=$locked, unlockHeight=$unlockHeight, nonce=$nonce, balanceProof=$balanceProof, nonceProof=$nonceProof]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balance'] = balance;
      json[r'locked'] = locked;
      json[r'unlock_height'] = unlockHeight;
      json[r'nonce'] = nonce;
      json[r'balance_proof'] = balanceProof;
      json[r'nonce_proof'] = nonceProof;
    return json;
  }

  /// Returns a new [AccountDataResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountDataResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountDataResponse(
        balance: mapValueOfType<String>(json, r'balance'),
        locked: mapValueOfType<String>(json, r'locked'),
        unlockHeight: mapValueOfType<int>(json, r'unlock_height'),
        nonce: mapValueOfType<int>(json, r'nonce'),
        balanceProof: mapValueOfType<String>(json, r'balance_proof'),
        nonceProof: mapValueOfType<String>(json, r'nonce_proof'),
      );
    }
    return null;
  }

  static List<AccountDataResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountDataResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountDataResponse>[];

  static Map<String, AccountDataResponse> mapFromJson(dynamic json) {
    final map = <String, AccountDataResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountDataResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountDataResponse-objects as value to a dart map
  static Map<String, List<AccountDataResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountDataResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountDataResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

