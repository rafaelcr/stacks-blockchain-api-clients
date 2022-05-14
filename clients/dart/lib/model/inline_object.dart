//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class InlineObject {
  /// Returns a new [InlineObject] instance.
  InlineObject({
    this.address,
    this.stacking,
  });

  /// STX testnet address
  String address;

  /// Use required number of tokens for stacking
  bool stacking;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject &&
     other.address == address &&
     other.stacking == stacking;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (stacking == null ? 0 : stacking.hashCode);

  @override
  String toString() => 'InlineObject[address=$address, stacking=$stacking]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json[r'address'] = address;
    }
    if (stacking != null) {
      json[r'stacking'] = stacking;
    }
    return json;
  }

  /// Returns a new [InlineObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineObject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineObject(
        address: mapValueOfType<String>(json, r'address'),
        stacking: mapValueOfType<bool>(json, r'stacking'),
      );
    }
    return null;
  }

  static List<InlineObject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineObject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineObject>[];

  static Map<String, InlineObject> mapFromJson(dynamic json) {
    final map = <String, InlineObject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineObject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

