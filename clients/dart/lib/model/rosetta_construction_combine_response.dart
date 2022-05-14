//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionCombineResponse {
  /// Returns a new [RosettaConstructionCombineResponse] instance.
  RosettaConstructionCombineResponse({
    @required this.signedTransaction,
  });

  /// Signed transaction bytes in hex
  String signedTransaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionCombineResponse &&
     other.signedTransaction == signedTransaction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (signedTransaction == null ? 0 : signedTransaction.hashCode);

  @override
  String toString() => 'RosettaConstructionCombineResponse[signedTransaction=$signedTransaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'signed_transaction'] = signedTransaction;
    return json;
  }

  /// Returns a new [RosettaConstructionCombineResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionCombineResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionCombineResponse(
        signedTransaction: mapValueOfType<String>(json, r'signed_transaction'),
      );
    }
    return null;
  }

  static List<RosettaConstructionCombineResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionCombineResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionCombineResponse>[];

  static Map<String, RosettaConstructionCombineResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionCombineResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionCombineResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionCombineResponse-objects as value to a dart map
  static Map<String, List<RosettaConstructionCombineResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionCombineResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionCombineResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

