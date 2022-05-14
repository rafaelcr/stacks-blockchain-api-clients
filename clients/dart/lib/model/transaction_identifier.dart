//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class TransactionIdentifier {
  /// Returns a new [TransactionIdentifier] instance.
  TransactionIdentifier({
    @required this.hash,
  });

  /// Any transactions that are attributable only to a block (ex: a block event) should use the hash of the block as the identifier.
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionIdentifier &&
     other.hash == hash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (hash == null ? 0 : hash.hashCode);

  @override
  String toString() => 'TransactionIdentifier[hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hash'] = hash;
    return json;
  }

  /// Returns a new [TransactionIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionIdentifier fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionIdentifier(
        hash: mapValueOfType<String>(json, r'hash'),
      );
    }
    return null;
  }

  static List<TransactionIdentifier> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionIdentifier.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionIdentifier>[];

  static Map<String, TransactionIdentifier> mapFromJson(dynamic json) {
    final map = <String, TransactionIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionIdentifier.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionIdentifier-objects as value to a dart map
  static Map<String, List<TransactionIdentifier>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionIdentifier.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

