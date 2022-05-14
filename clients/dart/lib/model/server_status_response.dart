//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ServerStatusResponse {
  /// Returns a new [ServerStatusResponse] instance.
  ServerStatusResponse({
    this.serverVersion,
    @required this.status,
    this.chainTip,
  });

  /// the server version that is currently running
  String serverVersion;

  /// the current server status
  String status;

  ChainTip chainTip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerStatusResponse &&
     other.serverVersion == serverVersion &&
     other.status == status &&
     other.chainTip == chainTip;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (serverVersion == null ? 0 : serverVersion.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (chainTip == null ? 0 : chainTip.hashCode);

  @override
  String toString() => 'ServerStatusResponse[serverVersion=$serverVersion, status=$status, chainTip=$chainTip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serverVersion != null) {
      json[r'server_version'] = serverVersion;
    }
      json[r'status'] = status;
    if (chainTip != null) {
      json[r'chain_tip'] = chainTip;
    }
    return json;
  }

  /// Returns a new [ServerStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerStatusResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ServerStatusResponse(
        serverVersion: mapValueOfType<String>(json, r'server_version'),
        status: mapValueOfType<String>(json, r'status'),
        chainTip: ChainTip.fromJson(json[r'chain_tip']),
      );
    }
    return null;
  }

  static List<ServerStatusResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ServerStatusResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ServerStatusResponse>[];

  static Map<String, ServerStatusResponse> mapFromJson(dynamic json) {
    final map = <String, ServerStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ServerStatusResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServerStatusResponse-objects as value to a dart map
  static Map<String, List<ServerStatusResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ServerStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ServerStatusResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

