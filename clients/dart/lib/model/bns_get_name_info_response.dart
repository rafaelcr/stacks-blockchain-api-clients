//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class BnsGetNameInfoResponse {
  /// Returns a new [BnsGetNameInfoResponse] instance.
  BnsGetNameInfoResponse({
    @required this.address,
    @required this.blockchain,
    this.expireBlock,
    this.gracePeriod,
    @required this.lastTxid,
    this.resolver,
    @required this.status,
    @required this.zonefile,
    @required this.zonefileHash,
  });

  String address;

  String blockchain;

  // minimum: 0
  int expireBlock;

  // minimum: 0
  int gracePeriod;

  String lastTxid;

  String resolver;

  String status;

  String zonefile;

  String zonefileHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BnsGetNameInfoResponse &&
     other.address == address &&
     other.blockchain == blockchain &&
     other.expireBlock == expireBlock &&
     other.gracePeriod == gracePeriod &&
     other.lastTxid == lastTxid &&
     other.resolver == resolver &&
     other.status == status &&
     other.zonefile == zonefile &&
     other.zonefileHash == zonefileHash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (blockchain == null ? 0 : blockchain.hashCode) +
    (expireBlock == null ? 0 : expireBlock.hashCode) +
    (gracePeriod == null ? 0 : gracePeriod.hashCode) +
    (lastTxid == null ? 0 : lastTxid.hashCode) +
    (resolver == null ? 0 : resolver.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (zonefile == null ? 0 : zonefile.hashCode) +
    (zonefileHash == null ? 0 : zonefileHash.hashCode);

  @override
  String toString() => 'BnsGetNameInfoResponse[address=$address, blockchain=$blockchain, expireBlock=$expireBlock, gracePeriod=$gracePeriod, lastTxid=$lastTxid, resolver=$resolver, status=$status, zonefile=$zonefile, zonefileHash=$zonefileHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'address'] = address;
      json[r'blockchain'] = blockchain;
    if (expireBlock != null) {
      json[r'expire_block'] = expireBlock;
    }
    if (gracePeriod != null) {
      json[r'grace_period'] = gracePeriod;
    }
      json[r'last_txid'] = lastTxid;
    if (resolver != null) {
      json[r'resolver'] = resolver;
    }
      json[r'status'] = status;
      json[r'zonefile'] = zonefile;
      json[r'zonefile_hash'] = zonefileHash;
    return json;
  }

  /// Returns a new [BnsGetNameInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BnsGetNameInfoResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BnsGetNameInfoResponse(
        address: mapValueOfType<String>(json, r'address'),
        blockchain: mapValueOfType<String>(json, r'blockchain'),
        expireBlock: mapValueOfType<int>(json, r'expire_block'),
        gracePeriod: mapValueOfType<int>(json, r'grace_period'),
        lastTxid: mapValueOfType<String>(json, r'last_txid'),
        resolver: mapValueOfType<String>(json, r'resolver'),
        status: mapValueOfType<String>(json, r'status'),
        zonefile: mapValueOfType<String>(json, r'zonefile'),
        zonefileHash: mapValueOfType<String>(json, r'zonefile_hash'),
      );
    }
    return null;
  }

  static List<BnsGetNameInfoResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BnsGetNameInfoResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BnsGetNameInfoResponse>[];

  static Map<String, BnsGetNameInfoResponse> mapFromJson(dynamic json) {
    final map = <String, BnsGetNameInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BnsGetNameInfoResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BnsGetNameInfoResponse-objects as value to a dart map
  static Map<String, List<BnsGetNameInfoResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BnsGetNameInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BnsGetNameInfoResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

