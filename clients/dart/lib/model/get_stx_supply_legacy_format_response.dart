//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class GetStxSupplyLegacyFormatResponse {
  /// Returns a new [GetStxSupplyLegacyFormatResponse] instance.
  GetStxSupplyLegacyFormatResponse({
    @required this.unlockedPercent,
    @required this.totalStacks,
    @required this.totalStacksFormatted,
    @required this.unlockedSupply,
    @required this.unlockedSupplyFormatted,
    @required this.blockHeight,
  });

  /// String quoted decimal number of the percentage of STX that have unlocked
  String unlockedPercent;

  /// String quoted decimal number of the total possible number of STX
  String totalStacks;

  /// Same as `totalStacks` but formatted with comma thousands separators
  String totalStacksFormatted;

  /// String quoted decimal number of the STX that have been mined or unlocked
  String unlockedSupply;

  /// Same as `unlockedSupply` but formatted with comma thousands separators
  String unlockedSupplyFormatted;

  /// The block height at which this information was queried
  String blockHeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetStxSupplyLegacyFormatResponse &&
     other.unlockedPercent == unlockedPercent &&
     other.totalStacks == totalStacks &&
     other.totalStacksFormatted == totalStacksFormatted &&
     other.unlockedSupply == unlockedSupply &&
     other.unlockedSupplyFormatted == unlockedSupplyFormatted &&
     other.blockHeight == blockHeight;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (unlockedPercent == null ? 0 : unlockedPercent.hashCode) +
    (totalStacks == null ? 0 : totalStacks.hashCode) +
    (totalStacksFormatted == null ? 0 : totalStacksFormatted.hashCode) +
    (unlockedSupply == null ? 0 : unlockedSupply.hashCode) +
    (unlockedSupplyFormatted == null ? 0 : unlockedSupplyFormatted.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode);

  @override
  String toString() => 'GetStxSupplyLegacyFormatResponse[unlockedPercent=$unlockedPercent, totalStacks=$totalStacks, totalStacksFormatted=$totalStacksFormatted, unlockedSupply=$unlockedSupply, unlockedSupplyFormatted=$unlockedSupplyFormatted, blockHeight=$blockHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'unlockedPercent'] = unlockedPercent;
      json[r'totalStacks'] = totalStacks;
      json[r'totalStacksFormatted'] = totalStacksFormatted;
      json[r'unlockedSupply'] = unlockedSupply;
      json[r'unlockedSupplyFormatted'] = unlockedSupplyFormatted;
      json[r'blockHeight'] = blockHeight;
    return json;
  }

  /// Returns a new [GetStxSupplyLegacyFormatResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetStxSupplyLegacyFormatResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetStxSupplyLegacyFormatResponse(
        unlockedPercent: mapValueOfType<String>(json, r'unlockedPercent'),
        totalStacks: mapValueOfType<String>(json, r'totalStacks'),
        totalStacksFormatted: mapValueOfType<String>(json, r'totalStacksFormatted'),
        unlockedSupply: mapValueOfType<String>(json, r'unlockedSupply'),
        unlockedSupplyFormatted: mapValueOfType<String>(json, r'unlockedSupplyFormatted'),
        blockHeight: mapValueOfType<String>(json, r'blockHeight'),
      );
    }
    return null;
  }

  static List<GetStxSupplyLegacyFormatResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetStxSupplyLegacyFormatResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetStxSupplyLegacyFormatResponse>[];

  static Map<String, GetStxSupplyLegacyFormatResponse> mapFromJson(dynamic json) {
    final map = <String, GetStxSupplyLegacyFormatResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetStxSupplyLegacyFormatResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetStxSupplyLegacyFormatResponse-objects as value to a dart map
  static Map<String, List<GetStxSupplyLegacyFormatResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetStxSupplyLegacyFormatResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetStxSupplyLegacyFormatResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

