//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaAccountBalanceResponse {
  /// Returns a new [RosettaAccountBalanceResponse] instance.
  RosettaAccountBalanceResponse({
    @required this.blockIdentifier,
    this.balances = const [],
    this.coins = const [],
    this.metadata,
  });

  Object blockIdentifier;

  /// A single account balance may have multiple currencies
  List<RosettaAmount> balances;

  /// If a blockchain is UTXO-based, all unspent Coins owned by an account_identifier should be returned alongside the balance. It is highly recommended to populate this field so that users of the Rosetta API implementation don't need to maintain their own indexer to track their UTXOs.
  List<RosettaCoin> coins;

  RosettaAccountBalanceResponseMetadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaAccountBalanceResponse &&
     other.blockIdentifier == blockIdentifier &&
     other.balances == balances &&
     other.coins == coins &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (blockIdentifier == null ? 0 : blockIdentifier.hashCode) +
    (balances == null ? 0 : balances.hashCode) +
    (coins == null ? 0 : coins.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaAccountBalanceResponse[blockIdentifier=$blockIdentifier, balances=$balances, coins=$coins, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'block_identifier'] = blockIdentifier;
      json[r'balances'] = balances;
    if (coins != null) {
      json[r'coins'] = coins;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaAccountBalanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaAccountBalanceResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaAccountBalanceResponse(
        blockIdentifier: Object.fromJson(json[r'block_identifier']),
        balances: RosettaAmount.listFromJson(json[r'balances']),
        coins: RosettaCoin.listFromJson(json[r'coins']),
        metadata: RosettaAccountBalanceResponseMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<RosettaAccountBalanceResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaAccountBalanceResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaAccountBalanceResponse>[];

  static Map<String, RosettaAccountBalanceResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaAccountBalanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaAccountBalanceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaAccountBalanceResponse-objects as value to a dart map
  static Map<String, List<RosettaAccountBalanceResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaAccountBalanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaAccountBalanceResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

