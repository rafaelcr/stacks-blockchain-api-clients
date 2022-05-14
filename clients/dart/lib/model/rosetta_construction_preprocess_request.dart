//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionPreprocessRequest {
  /// Returns a new [RosettaConstructionPreprocessRequest] instance.
  RosettaConstructionPreprocessRequest({
    @required this.networkIdentifier,
    this.operations = const [],
    this.metadata,
    this.maxFee = const [],
    this.suggestedFeeMultiplier,
  });

  Object networkIdentifier;

  List<Object> operations;

  Object metadata;

  List<RosettaMaxFeeAmount> maxFee;

  ///  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided).
  int suggestedFeeMultiplier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionPreprocessRequest &&
     other.networkIdentifier == networkIdentifier &&
     other.operations == operations &&
     other.metadata == metadata &&
     other.maxFee == maxFee &&
     other.suggestedFeeMultiplier == suggestedFeeMultiplier;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (networkIdentifier == null ? 0 : networkIdentifier.hashCode) +
    (operations == null ? 0 : operations.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (maxFee == null ? 0 : maxFee.hashCode) +
    (suggestedFeeMultiplier == null ? 0 : suggestedFeeMultiplier.hashCode);

  @override
  String toString() => 'RosettaConstructionPreprocessRequest[networkIdentifier=$networkIdentifier, operations=$operations, metadata=$metadata, maxFee=$maxFee, suggestedFeeMultiplier=$suggestedFeeMultiplier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'network_identifier'] = networkIdentifier;
      json[r'operations'] = operations;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (maxFee != null) {
      json[r'max_fee'] = maxFee;
    }
    if (suggestedFeeMultiplier != null) {
      json[r'suggested_fee_multiplier'] = suggestedFeeMultiplier;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionPreprocessRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionPreprocessRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionPreprocessRequest(
        networkIdentifier: Object.fromJson(json[r'network_identifier']),
        operations: Object.listFromJson(json[r'operations']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        maxFee: RosettaMaxFeeAmount.listFromJson(json[r'max_fee']),
        suggestedFeeMultiplier: mapValueOfType<int>(json, r'suggested_fee_multiplier'),
      );
    }
    return null;
  }

  static List<RosettaConstructionPreprocessRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionPreprocessRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionPreprocessRequest>[];

  static Map<String, RosettaConstructionPreprocessRequest> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionPreprocessRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionPreprocessRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionPreprocessRequest-objects as value to a dart map
  static Map<String, List<RosettaConstructionPreprocessRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionPreprocessRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionPreprocessRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

