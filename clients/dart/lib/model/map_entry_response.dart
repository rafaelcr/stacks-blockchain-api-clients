//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class MapEntryResponse {
  /// Returns a new [MapEntryResponse] instance.
  MapEntryResponse({
    @required this.data,
    this.proof,
  });

  /// Hex-encoded string of clarity value. It is always an optional tuple.
  String data;

  /// Hex-encoded string of the MARF proof for the data
  String proof;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapEntryResponse &&
     other.data == data &&
     other.proof == proof;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode) +
    (proof == null ? 0 : proof.hashCode);

  @override
  String toString() => 'MapEntryResponse[data=$data, proof=$proof]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = data;
    if (proof != null) {
      json[r'proof'] = proof;
    }
    return json;
  }

  /// Returns a new [MapEntryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapEntryResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MapEntryResponse(
        data: mapValueOfType<String>(json, r'data'),
        proof: mapValueOfType<String>(json, r'proof'),
      );
    }
    return null;
  }

  static List<MapEntryResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MapEntryResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MapEntryResponse>[];

  static Map<String, MapEntryResponse> mapFromJson(dynamic json) {
    final map = <String, MapEntryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MapEntryResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MapEntryResponse-objects as value to a dart map
  static Map<String, List<MapEntryResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MapEntryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MapEntryResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

