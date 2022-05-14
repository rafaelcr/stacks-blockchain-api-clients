//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAccount {
  /// Returns a new [RosettaAccount] instance.
  RosettaAccount({
    @required this.address,
    this.subAccount,
    this.metadata,
  });

  /// The address may be a cryptographic public key (or some encoding of it) or a provided username.
  String address;

  RosettaSubAccount subAccount;

  /// Blockchains that utilize a username model (where the address is not a derivative of a cryptographic public key) should specify the public key(s) owned by the address in metadata.
  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAccount &&
     other.address == address &&
     other.subAccount == subAccount &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (subAccount == null ? 0 : subAccount.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaAccount[address=$address, subAccount=$subAccount, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'address'] = address;
    if (subAccount != null) {
      json[r'sub_account'] = subAccount;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAccount fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAccount(
        address: mapValueOfType<String>(json, r'address'),
        subAccount: RosettaSubAccount.fromJson(json[r'sub_account']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaAccount> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAccount.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAccount>[];

  static Map<String, RosettaAccount> mapFromJson(dynamic json) {
    final map = <String, RosettaAccount>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAccount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAccount-objects as value to a dart map
  static Map<String, List<RosettaAccount>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAccount>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAccount.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

