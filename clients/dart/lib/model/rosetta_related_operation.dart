//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaRelatedOperation {
  /// Returns a new [RosettaRelatedOperation] instance.
  RosettaRelatedOperation({
    @required this.index,
    this.networkIndex,
  });

  /// Describes the index of related operation.
  int index;

  /// Some blockchains specify an operation index that is essential for client use. network_index should not be populated if there is no notion of an operation index in a blockchain (typically most account-based blockchains).
  int networkIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaRelatedOperation &&
     other.index == index &&
     other.networkIndex == networkIndex;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (index == null ? 0 : index.hashCode) +
    (networkIndex == null ? 0 : networkIndex.hashCode);

  @override
  String toString() => 'RosettaRelatedOperation[index=$index, networkIndex=$networkIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'index'] = index;
    if (networkIndex != null) {
      json[r'network_index'] = networkIndex;
    }
    return json;
  }

  /// Returns a new [RosettaRelatedOperation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaRelatedOperation fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaRelatedOperation(
        index: mapValueOfType<int>(json, r'index'),
        networkIndex: mapValueOfType<int>(json, r'network_index'),
      );
    }
    return null;
  }

  static List<RosettaRelatedOperation> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaRelatedOperation.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaRelatedOperation>[];

  static Map<String, RosettaRelatedOperation> mapFromJson(dynamic json) {
    final map = <String, RosettaRelatedOperation>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaRelatedOperation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaRelatedOperation-objects as value to a dart map
  static Map<String, List<RosettaRelatedOperation>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaRelatedOperation>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaRelatedOperation.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

