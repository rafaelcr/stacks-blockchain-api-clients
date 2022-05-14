//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaBlockMetadata {
  /// Returns a new [RosettaBlockMetadata] instance.
  RosettaBlockMetadata({
    @required this.transactionsRoot,
    @required this.difficulty,
  });

  String transactionsRoot;

  String difficulty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaBlockMetadata &&
     other.transactionsRoot == transactionsRoot &&
     other.difficulty == difficulty;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionsRoot == null ? 0 : transactionsRoot.hashCode) +
    (difficulty == null ? 0 : difficulty.hashCode);

  @override
  String toString() => 'RosettaBlockMetadata[transactionsRoot=$transactionsRoot, difficulty=$difficulty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transactions_root'] = transactionsRoot;
      json[r'difficulty'] = difficulty;
    return json;
  }

  /// Returns a new [RosettaBlockMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaBlockMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaBlockMetadata(
        transactionsRoot: mapValueOfType<String>(json, r'transactions_root'),
        difficulty: mapValueOfType<String>(json, r'difficulty'),
      );
    }
    return null;
  }

  static List<RosettaBlockMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaBlockMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaBlockMetadata>[];

  static Map<String, RosettaBlockMetadata> mapFromJson(dynamic json) {
    final map = <String, RosettaBlockMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaBlockMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaBlockMetadata-objects as value to a dart map
  static Map<String, List<RosettaBlockMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaBlockMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaBlockMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

