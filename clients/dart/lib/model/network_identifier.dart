//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class NetworkIdentifier {
  /// Returns a new [NetworkIdentifier] instance.
  NetworkIdentifier({
    @required this.blockchain,
    @required this.network,
    this.subNetworkIdentifier,
  });

  /// Blockchain name
  String blockchain;

  /// If a blockchain has a specific chain-id or network identifier, it should go in this field. It is up to the client to determine which network-specific identifier is mainnet or testnet.
  String network;

  RosettaNetworkListResponseSubNetworkIdentifier subNetworkIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkIdentifier &&
     other.blockchain == blockchain &&
     other.network == network &&
     other.subNetworkIdentifier == subNetworkIdentifier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (blockchain == null ? 0 : blockchain.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (subNetworkIdentifier == null ? 0 : subNetworkIdentifier.hashCode);

  @override
  String toString() => 'NetworkIdentifier[blockchain=$blockchain, network=$network, subNetworkIdentifier=$subNetworkIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'blockchain'] = blockchain;
      json[r'network'] = network;
    if (subNetworkIdentifier != null) {
      json[r'sub_network_identifier'] = subNetworkIdentifier;
    }
    return json;
  }

  /// Returns a new [NetworkIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkIdentifier fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NetworkIdentifier(
        blockchain: mapValueOfType<String>(json, r'blockchain'),
        network: mapValueOfType<String>(json, r'network'),
        subNetworkIdentifier: RosettaNetworkListResponseSubNetworkIdentifier.fromJson(json[r'sub_network_identifier']),
      );
    }
    return null;
  }

  static List<NetworkIdentifier> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NetworkIdentifier.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NetworkIdentifier>[];

  static Map<String, NetworkIdentifier> mapFromJson(dynamic json) {
    final map = <String, NetworkIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NetworkIdentifier.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkIdentifier-objects as value to a dart map
  static Map<String, List<NetworkIdentifier>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NetworkIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NetworkIdentifier.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

