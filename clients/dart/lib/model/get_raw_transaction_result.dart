//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class GetRawTransactionResult {
  /// Returns a new [GetRawTransactionResult] instance.
  GetRawTransactionResult({
    @required this.rawTx,
  });

  /// A hex encoded serialized transaction
  String rawTx;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRawTransactionResult &&
     other.rawTx == rawTx;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (rawTx == null ? 0 : rawTx.hashCode);

  @override
  String toString() => 'GetRawTransactionResult[rawTx=$rawTx]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'raw_tx'] = rawTx;
    return json;
  }

  /// Returns a new [GetRawTransactionResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRawTransactionResult fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetRawTransactionResult(
        rawTx: mapValueOfType<String>(json, r'raw_tx'),
      );
    }
    return null;
  }

  static List<GetRawTransactionResult> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetRawTransactionResult.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetRawTransactionResult>[];

  static Map<String, GetRawTransactionResult> mapFromJson(dynamic json) {
    final map = <String, GetRawTransactionResult>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetRawTransactionResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetRawTransactionResult-objects as value to a dart map
  static Map<String, List<GetRawTransactionResult>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetRawTransactionResult>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetRawTransactionResult.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

