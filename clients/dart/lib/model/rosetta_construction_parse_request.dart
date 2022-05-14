//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionParseRequest {
  /// Returns a new [RosettaConstructionParseRequest] instance.
  RosettaConstructionParseRequest({
    @required this.networkIdentifier,
    @required this.signed,
    @required this.transaction,
  });

  Object networkIdentifier;

  /// Signed is a boolean indicating whether the transaction is signed.
  bool signed;

  /// This must be either the unsigned transaction blob returned by /construction/payloads or the signed transaction blob returned by /construction/combine.
  String transaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionParseRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.signed == signed &&
     other.transaction == transaction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (signed == null ? 0 : signed.hashCode) +
    (transaction == null ? 0 : transaction.hashCode);

  @override
  String toString() => 'RosettaConstructionParseRequest[networkIdentifier=$networkIdentifier, signed=$signed, transaction=$transaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'signed'] = signed;
      json[r'transaction'] = transaction;
    return json;
  }

  /// Returns a new [RosettaConstructionParseRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionParseRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionParseRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        signed: mapValueOfType<bool>(json, r'signed'),
        transaction: mapValueOfType<String>(json, r'transaction'),
      );
    }
    return null;
  }

  static List<RosettaConstructionParseRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionParseRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionParseRequest>[];

  static Map<String, RosettaConstructionParseRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionParseRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionParseRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionParseRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionParseRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionParseRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionParseRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

