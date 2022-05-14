//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionMetadataResponseMetadata {
  /// Returns a new [RosettaConstructionMetadataResponseMetadata] instance.
  RosettaConstructionMetadataResponseMetadata({
    this.accountSequence,
    this.recentBlockHash,
  });

  int accountSequence;

  String recentBlockHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionMetadataResponseMetadata &&
     other.accountSequence == accountSequence &&
     other.recentBlockHash == recentBlockHash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (accountSequence == null ? 0 : accountSequence.hashCode) +
    (recentBlockHash == null ? 0 : recentBlockHash.hashCode);

  @override
  String toString() => 'RosettaConstructionMetadataResponseMetadata[accountSequence=$accountSequence, recentBlockHash=$recentBlockHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (accountSequence != null) {
      json[r'account_sequence'] = accountSequence;
    }
    if (recentBlockHash != null) {
      json[r'recent_block_hash'] = recentBlockHash;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionMetadataResponseMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionMetadataResponseMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionMetadataResponseMetadata(
        accountSequence: mapValueOfType<int>(json, r'account_sequence'),
        recentBlockHash: mapValueOfType<String>(json, r'recent_block_hash'),
      );
    }
    return null;
  }

  static List<RosettaConstructionMetadataResponseMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionMetadataResponseMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionMetadataResponseMetadata>[];

  static Map<String, RosettaConstructionMetadataResponseMetadata> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionMetadataResponseMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionMetadataResponseMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionMetadataResponseMetadata-objects as value to a dart map
  static Map<String, List<RosettaConstructionMetadataResponseMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionMetadataResponseMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionMetadataResponseMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

