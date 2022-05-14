//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class FeeRateRequest {
  /// Returns a new [FeeRateRequest] instance.
  FeeRateRequest({
    @required this.transaction,
  });

  /// A serialized transaction
  String transaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeeRateRequest &&
     other.transaction == transaction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transaction == null ? 0 : transaction.hashCode);

  @override
  String toString() => 'FeeRateRequest[transaction=$transaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction'] = transaction;
    return json;
  }

  /// Returns a new [FeeRateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeeRateRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FeeRateRequest(
        transaction: mapValueOfType<String>(json, r'transaction'),
      );
    }
    return null;
  }

  static List<FeeRateRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FeeRateRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FeeRateRequest>[];

  static Map<String, FeeRateRequest> mapFromJson(dynamic json) {
    final map = <String, FeeRateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FeeRateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FeeRateRequest-objects as value to a dart map
  static Map<String, List<FeeRateRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FeeRateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FeeRateRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

