//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAccountBalanceRequest {
  /// Returns a new [RosettaAccountBalanceRequest] instance.
  RosettaAccountBalanceRequest({
    @required this.networkIdentifier,
    @required this.accountIdentifier,
    this.blockIdentifier,
  });

  Object networkIdentifier;

  RosettaAccount accountIdentifier;

  /// When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block.
  AnyOfobjectobject blockIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAccountBalanceRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.accountIdentifier == accountIdentifier &&
     other.blockIdentifier == blockIdentifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (accountIdentifier == null ? 0 : accountIdentifier.hashCode) +
    (blockIdentifier == null ? 0 : blockIdentifier.hashCode);

  @override
  String toString() => 'RosettaAccountBalanceRequest[networkIdentifier=$networkIdentifier, accountIdentifier=$accountIdentifier, blockIdentifier=$blockIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'account_identifier'] = accountIdentifier;
    if (blockIdentifier != null) {
      json[r'block_identifier'] = blockIdentifier;
    }
    return json;
  }

  /// Returns a new [RosettaAccountBalanceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAccountBalanceRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAccountBalanceRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        accountIdentifier: RosettaAccount.fromJson(json[r'account_identifier']),
        blockIdentifier: mapValueOfType<AnyOfobjectobject>(json, r'block_identifier'),
      );
    }
    return null;
  }

  static List<RosettaAccountBalanceRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAccountBalanceRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAccountBalanceRequest>[];

  static Map<String, RosettaAccountBalanceRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaAccountBalanceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAccountBalanceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAccountBalanceRequest-objects as value to a dart map
  static Map<String, List<RosettaAccountBalanceRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAccountBalanceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAccountBalanceRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

