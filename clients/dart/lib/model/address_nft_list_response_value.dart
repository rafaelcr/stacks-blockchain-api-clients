//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressNftListResponseValue {
  /// Returns a new [AddressNftListResponseValue] instance.
  AddressNftListResponseValue({
    @required this.hex,
    @required this.repr,
  });

  /// Hex string representing the identifier of the NFT
  String hex;

  /// Readable string of the NFT identifier
  String repr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressNftListResponseValue &&
     other.hex == hex &&
     other.repr == repr;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (hex == null ? 0 : hex.hashCode) +
    (repr == null ? 0 : repr.hashCode);

  @override
  String toString() => 'AddressNftListResponseValue[hex=$hex, repr=$repr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hex'] = hex;
      json[r'repr'] = repr;
    return json;
  }

  /// Returns a new [AddressNftListResponseValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressNftListResponseValue fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressNftListResponseValue(
        hex: mapValueOfType<String>(json, r'hex'),
        repr: mapValueOfType<String>(json, r'repr'),
      );
    }
    return null;
  }

  static List<AddressNftListResponseValue> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressNftListResponseValue.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressNftListResponseValue>[];

  static Map<String, AddressNftListResponseValue> mapFromJson(dynamic json) {
    final map = <String, AddressNftListResponseValue>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressNftListResponseValue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressNftListResponseValue-objects as value to a dart map
  static Map<String, List<AddressNftListResponseValue>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressNftListResponseValue>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressNftListResponseValue.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

