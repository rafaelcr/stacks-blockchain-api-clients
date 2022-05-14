//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class GetStxSupplyResponse {
  /// Returns a new [GetStxSupplyResponse] instance.
  GetStxSupplyResponse({
    @required this.unlockedPercent,
    @required this.totalStx,
    @required this.unlockedStx,
    @required this.blockHeight,
  });

  /// String quoted decimal number of the percentage of STX that have unlocked
  String unlockedPercent;

  /// String quoted decimal number of the total possible number of STX
  String totalStx;

  /// String quoted decimal number of the STX that have been mined or unlocked
  String unlockedStx;

  /// The block height at which this information was queried
  int blockHeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetStxSupplyResponse &&
     other.unlockedPercent == unlockedPercent &&
     other.totalStx == totalStx &&
     other.unlockedStx == unlockedStx &&
     other.blockHeight == blockHeight;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (unlockedPercent == null ? 0 : unlockedPercent.hashCode) +
    (totalStx == null ? 0 : totalStx.hashCode) +
    (unlockedStx == null ? 0 : unlockedStx.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode);

  @override
  String toString() => 'GetStxSupplyResponse[unlockedPercent=$unlockedPercent, totalStx=$totalStx, unlockedStx=$unlockedStx, blockHeight=$blockHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'unlocked_percent'] = unlockedPercent;
      json[r'total_stx'] = totalStx;
      json[r'unlocked_stx'] = unlockedStx;
      json[r'block_height'] = blockHeight;
    return json;
  }

  /// Returns a new [GetStxSupplyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetStxSupplyResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetStxSupplyResponse(
        unlockedPercent: mapValueOfType<String>(json, r'unlocked_percent'),
        totalStx: mapValueOfType<String>(json, r'total_stx'),
        unlockedStx: mapValueOfType<String>(json, r'unlocked_stx'),
        blockHeight: mapValueOfType<int>(json, r'block_height'),
      );
    }
    return null;
  }

  static List<GetStxSupplyResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetStxSupplyResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetStxSupplyResponse>[];

  static Map<String, GetStxSupplyResponse> mapFromJson(dynamic json) {
    final map = <String, GetStxSupplyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetStxSupplyResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetStxSupplyResponse-objects as value to a dart map
  static Map<String, List<GetStxSupplyResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetStxSupplyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetStxSupplyResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

