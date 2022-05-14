//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaTransactionMetadata {
  /// Returns a new [RosettaTransactionMetadata] instance.
  RosettaTransactionMetadata({
    this.memo,
    this.size,
    this.lockTime,
  });

  /// STX token transfer memo.
  String memo;

  /// The Size
  int size;

  /// The locktime
  int lockTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaTransactionMetadata &&
     other.memo == memo &&
     other.size == size &&
     other.lockTime == lockTime;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (memo == null ? 0 : memo.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (lockTime == null ? 0 : lockTime.hashCode);

  @override
  String toString() => 'RosettaTransactionMetadata[memo=$memo, size=$size, lockTime=$lockTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (memo != null) {
      json[r'memo'] = memo;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (lockTime != null) {
      json[r'lockTime'] = lockTime;
    }
    return json;
  }

  /// Returns a new [RosettaTransactionMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaTransactionMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaTransactionMetadata(
        memo: mapValueOfType<String>(json, r'memo'),
        size: mapValueOfType<int>(json, r'size'),
        lockTime: mapValueOfType<int>(json, r'lockTime'),
      );
    }
    return null;
  }

  static List<RosettaTransactionMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaTransactionMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaTransactionMetadata>[];

  static Map<String, RosettaTransactionMetadata> mapFromJson(dynamic json) {
    final map = <String, RosettaTransactionMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaTransactionMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaTransactionMetadata-objects as value to a dart map
  static Map<String, List<RosettaTransactionMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaTransactionMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaTransactionMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

