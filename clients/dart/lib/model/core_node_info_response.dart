//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class CoreNodeInfoResponse {
  /// Returns a new [CoreNodeInfoResponse] instance.
  CoreNodeInfoResponse({
    @required this.peerVersion,
    @required this.poxConsensus,
    @required this.burnBlockHeight,
    @required this.stablePoxConsensus,
    @required this.stableBurnBlockHeight,
    @required this.serverVersion,
    @required this.networkId,
    @required this.parentNetworkId,
    @required this.stacksTipHeight,
    @required this.stacksTip,
    @required this.stacksTipConsensusHash,
    @required this.unanchoredTip,
    @required this.exitAtBlockHeight,
  });

  /// identifies the version number for the networking communication, this should not change while a node is running, and will only change if there's an upgrade
  int peerVersion;

  /// is a hash used to identify the burnchain view for a node. it incorporates bitcoin chain information and PoX information. nodes that disagree on this value will appear to each other as forks. this value will change after every block
  String poxConsensus;

  /// latest bitcoin chain height
  int burnBlockHeight;

  /// same as burn_consensus, but evaluated at stable_burn_block_height
  String stablePoxConsensus;

  /// leftover from stacks 1.0, basically always burn_block_height - 1
  int stableBurnBlockHeight;

  /// is a version descriptor
  String serverVersion;

  /// is similar to peer_version and will be used to differentiate between different testnets. this value will be different between mainnet and testnet. once launched, this value will not change
  int networkId;

  /// same as network_id, but for bitcoin
  int parentNetworkId;

  /// the latest Stacks chain height. Stacks forks can occur independent of the Bitcoin chain, that height doesn't increase 1-to-1 with the Bitcoin height
  int stacksTipHeight;

  /// the best known block hash for the Stack chain (not including any pending microblocks)
  String stacksTip;

  /// the burn chain (i.e., bitcoin) consensus hash at the time that stacks_tip was mined
  String stacksTipConsensusHash;

  /// the latest microblock hash if any microblocks were processed. if no microblock has been processed for the current block, a 000.., hex array is returned
  String unanchoredTip;

  /// the block height at which the testnet network will be reset. not applicable for mainnet
  int exitAtBlockHeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreNodeInfoResponse &&
     other.peerVersion == peerVersion &&
     other.poxConsensus == poxConsensus &&
     other.burnBlockHeight == burnBlockHeight &&
     other.stablePoxConsensus == stablePoxConsensus &&
     other.stableBurnBlockHeight == stableBurnBlockHeight &&
     other.serverVersion == serverVersion &&
     other.networkId == networkId &&
     other.parentNetworkId == parentNetworkId &&
     other.stacksTipHeight == stacksTipHeight &&
     other.stacksTip == stacksTip &&
     other.stacksTipConsensusHash == stacksTipConsensusHash &&
     other.unanchoredTip == unanchoredTip &&
     other.exitAtBlockHeight == exitAtBlockHeight;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (peerVersion == null ? 0 : peerVersion.hashCode) +
    (poxConsensus == null ? 0 : poxConsensus.hashCode) +
    (burnBlockHeight == null ? 0 : burnBlockHeight.hashCode) +
    (stablePoxConsensus == null ? 0 : stablePoxConsensus.hashCode) +
    (stableBurnBlockHeight == null ? 0 : stableBurnBlockHeight.hashCode) +
    (serverVersion == null ? 0 : serverVersion.hashCode) +
    (networkId == null ? 0 : networkId.hashCode) +
    (parentNetworkId == null ? 0 : parentNetworkId.hashCode) +
    (stacksTipHeight == null ? 0 : stacksTipHeight.hashCode) +
    (stacksTip == null ? 0 : stacksTip.hashCode) +
    (stacksTipConsensusHash == null ? 0 : stacksTipConsensusHash.hashCode) +
    (unanchoredTip == null ? 0 : unanchoredTip.hashCode) +
    (exitAtBlockHeight == null ? 0 : exitAtBlockHeight.hashCode);

  @override
  String toString() => 'CoreNodeInfoResponse[peerVersion=$peerVersion, poxConsensus=$poxConsensus, burnBlockHeight=$burnBlockHeight, stablePoxConsensus=$stablePoxConsensus, stableBurnBlockHeight=$stableBurnBlockHeight, serverVersion=$serverVersion, networkId=$networkId, parentNetworkId=$parentNetworkId, stacksTipHeight=$stacksTipHeight, stacksTip=$stacksTip, stacksTipConsensusHash=$stacksTipConsensusHash, unanchoredTip=$unanchoredTip, exitAtBlockHeight=$exitAtBlockHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'peer_version'] = peerVersion;
      json[r'pox_consensus'] = poxConsensus;
      json[r'burn_block_height'] = burnBlockHeight;
      json[r'stable_pox_consensus'] = stablePoxConsensus;
      json[r'stable_burn_block_height'] = stableBurnBlockHeight;
      json[r'server_version'] = serverVersion;
      json[r'network_id'] = networkId;
      json[r'parent_network_id'] = parentNetworkId;
      json[r'stacks_tip_height'] = stacksTipHeight;
      json[r'stacks_tip'] = stacksTip;
      json[r'stacks_tip_consensus_hash'] = stacksTipConsensusHash;
      json[r'unanchored_tip'] = unanchoredTip;
      json[r'exit_at_block_height'] = exitAtBlockHeight;
    return json;
  }

  /// Returns a new [CoreNodeInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoreNodeInfoResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CoreNodeInfoResponse(
        peerVersion: mapValueOfType<int>(json, r'peer_version'),
        poxConsensus: mapValueOfType<String>(json, r'pox_consensus'),
        burnBlockHeight: mapValueOfType<int>(json, r'burn_block_height'),
        stablePoxConsensus: mapValueOfType<String>(json, r'stable_pox_consensus'),
        stableBurnBlockHeight: mapValueOfType<int>(json, r'stable_burn_block_height'),
        serverVersion: mapValueOfType<String>(json, r'server_version'),
        networkId: mapValueOfType<int>(json, r'network_id'),
        parentNetworkId: mapValueOfType<int>(json, r'parent_network_id'),
        stacksTipHeight: mapValueOfType<int>(json, r'stacks_tip_height'),
        stacksTip: mapValueOfType<String>(json, r'stacks_tip'),
        stacksTipConsensusHash: mapValueOfType<String>(json, r'stacks_tip_consensus_hash'),
        unanchoredTip: mapValueOfType<String>(json, r'unanchored_tip'),
        exitAtBlockHeight: mapValueOfType<int>(json, r'exit_at_block_height'),
      );
    }
    return null;
  }

  static List<CoreNodeInfoResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CoreNodeInfoResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CoreNodeInfoResponse>[];

  static Map<String, CoreNodeInfoResponse> mapFromJson(dynamic json) {
    final map = <String, CoreNodeInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CoreNodeInfoResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CoreNodeInfoResponse-objects as value to a dart map
  static Map<String, List<CoreNodeInfoResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CoreNodeInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CoreNodeInfoResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

