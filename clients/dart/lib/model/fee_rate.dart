//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class FeeRate {
  /// Returns a new [FeeRate] instance.
  FeeRate({
    @required this.feeRate,
  });

  int feeRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeeRate &&
     other.feeRate == feeRate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (feeRate == null ? 0 : feeRate.hashCode);

  @override
  String toString() => 'FeeRate[feeRate=$feeRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fee_rate'] = feeRate;
    return json;
  }

  /// Returns a new [FeeRate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeeRate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FeeRate(
        feeRate: mapValueOfType<int>(json, r'fee_rate'),
      );
    }
    return null;
  }

  static List<FeeRate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FeeRate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FeeRate>[];

  static Map<String, FeeRate> mapFromJson(dynamic json) {
    final map = <String, FeeRate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FeeRate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FeeRate-objects as value to a dart map
  static Map<String, List<FeeRate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FeeRate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FeeRate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

