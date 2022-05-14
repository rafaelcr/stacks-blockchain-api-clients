//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionHashRequest {
  /// Returns a new [RosettaConstructionHashRequest] instance.
  RosettaConstructionHashRequest({
    @required this.networkIdentifier,
    @required this.signedTransaction,
  });

  Object networkIdentifier;

  /// Signed transaction
  String signedTransaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionHashRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.signedTransaction == signedTransaction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (signedTransaction == null ? 0 : signedTransaction.hashCode);

  @override
  String toString() => 'RosettaConstructionHashRequest[networkIdentifier=$networkIdentifier, signedTransaction=$signedTransaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'signed_transaction'] = signedTransaction;
    return json;
  }

  /// Returns a new [RosettaConstructionHashRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionHashRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionHashRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        signedTransaction: mapValueOfType<String>(json, r'signed_transaction'),
      );
    }
    return null;
  }

  static List<RosettaConstructionHashRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionHashRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionHashRequest>[];

  static Map<String, RosettaConstructionHashRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionHashRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionHashRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionHashRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionHashRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionHashRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionHashRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

