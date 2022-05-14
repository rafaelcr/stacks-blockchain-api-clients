//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaParentBlockIdentifier {
  /// Returns a new [RosettaParentBlockIdentifier] instance.
  RosettaParentBlockIdentifier({
    @required this.index,
    @required this.hash,
  });

  /// This is also known as the block height.
  int index;

  /// Block hash
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaParentBlockIdentifier &&
     other.index == index &&
     other.hash == hash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (index == null ? 0 : index.hashCode) +
    (hash == null ? 0 : hash.hashCode);

  @override
  String toString() => 'RosettaParentBlockIdentifier[index=$index, hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'index'] = index;
      json[r'hash'] = hash;
    return json;
  }

  /// Returns a new [RosettaParentBlockIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaParentBlockIdentifier fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaParentBlockIdentifier(
        index: mapValueOfType<int>(json, r'index'),
        hash: mapValueOfType<String>(json, r'hash'),
      );
    }
    return null;
  }

  static List<RosettaParentBlockIdentifier> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaParentBlockIdentifier.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaParentBlockIdentifier>[];

  static Map<String, RosettaParentBlockIdentifier> mapFromJson(dynamic json) {
    final map = <String, RosettaParentBlockIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaParentBlockIdentifier.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaParentBlockIdentifier-objects as value to a dart map
  static Map<String, List<RosettaParentBlockIdentifier>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaParentBlockIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaParentBlockIdentifier.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

