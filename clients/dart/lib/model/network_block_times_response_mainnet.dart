//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class NetworkBlockTimesResponseMainnet {
  /// Returns a new [NetworkBlockTimesResponseMainnet] instance.
  NetworkBlockTimesResponseMainnet({
    @required this.targetBlockTime,
  });

  int targetBlockTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkBlockTimesResponseMainnet &&
     other.targetBlockTime == targetBlockTime;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (targetBlockTime == null ? 0 : targetBlockTime.hashCode);

  @override
  String toString() => 'NetworkBlockTimesResponseMainnet[targetBlockTime=$targetBlockTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'target_block_time'] = targetBlockTime;
    return json;
  }

  /// Returns a new [NetworkBlockTimesResponseMainnet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkBlockTimesResponseMainnet fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NetworkBlockTimesResponseMainnet(
        targetBlockTime: mapValueOfType<int>(json, r'target_block_time'),
      );
    }
    return null;
  }

  static List<NetworkBlockTimesResponseMainnet> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NetworkBlockTimesResponseMainnet.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NetworkBlockTimesResponseMainnet>[];

  static Map<String, NetworkBlockTimesResponseMainnet> mapFromJson(dynamic json) {
    final map = <String, NetworkBlockTimesResponseMainnet>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NetworkBlockTimesResponseMainnet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkBlockTimesResponseMainnet-objects as value to a dart map
  static Map<String, List<NetworkBlockTimesResponseMainnet>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NetworkBlockTimesResponseMainnet>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NetworkBlockTimesResponseMainnet.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

