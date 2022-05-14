//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RunFaucetResponse {
  /// Returns a new [RunFaucetResponse] instance.
  RunFaucetResponse({
    @required this.success,
    this.txId,
    this.txRaw,
  });

  /// Indicates if the faucet call was successful
  bool success;

  /// The transaction ID for the faucet call
  String txId;

  /// Raw transaction in hex string representation
  String txRaw;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunFaucetResponse &&
     other.success == success &&
     other.txId == txId &&
     other.txRaw == txRaw;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (success == null ? 0 : success.hashCode) +
    (txId == null ? 0 : txId.hashCode) +
    (txRaw == null ? 0 : txRaw.hashCode);

  @override
  String toString() => 'RunFaucetResponse[success=$success, txId=$txId, txRaw=$txRaw]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = success;
    if (txId != null) {
      json[r'txId'] = txId;
    }
    if (txRaw != null) {
      json[r'txRaw'] = txRaw;
    }
    return json;
  }

  /// Returns a new [RunFaucetResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunFaucetResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RunFaucetResponse(
        success: mapValueOfType<bool>(json, r'success'),
        txId: mapValueOfType<String>(json, r'txId'),
        txRaw: mapValueOfType<String>(json, r'txRaw'),
      );
    }
    return null;
  }

  static List<RunFaucetResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RunFaucetResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RunFaucetResponse>[];

  static Map<String, RunFaucetResponse> mapFromJson(dynamic json) {
    final map = <String, RunFaucetResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RunFaucetResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunFaucetResponse-objects as value to a dart map
  static Map<String, List<RunFaucetResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RunFaucetResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RunFaucetResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

