//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionCombineRequest {
  /// Returns a new [RosettaConstructionCombineRequest] instance.
  RosettaConstructionCombineRequest({
    @required this.networkIdentifier,
    @required this.unsignedTransaction,
    this.signatures = const [],
  });

  Object networkIdentifier;

  String unsignedTransaction;

  List<RosettaSignature> signatures;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionCombineRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.unsignedTransaction == unsignedTransaction &&
     other.signatures == signatures;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (unsignedTransaction == null ? 0 : unsignedTransaction.hashCode) +
    (signatures == null ? 0 : signatures.hashCode);

  @override
  String toString() => 'RosettaConstructionCombineRequest[networkIdentifier=$networkIdentifier, unsignedTransaction=$unsignedTransaction, signatures=$signatures]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'unsigned_transaction'] = unsignedTransaction;
      json[r'signatures'] = signatures;
    return json;
  }

  /// Returns a new [RosettaConstructionCombineRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionCombineRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionCombineRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        unsignedTransaction: mapValueOfType<String>(json, r'unsigned_transaction'),
        signatures: RosettaSignature.listFromJson(json[r'signatures']),
      );
    }
    return null;
  }

  static List<RosettaConstructionCombineRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionCombineRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionCombineRequest>[];

  static Map<String, RosettaConstructionCombineRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionCombineRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionCombineRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionCombineRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionCombineRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionCombineRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionCombineRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

