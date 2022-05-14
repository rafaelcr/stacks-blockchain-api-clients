//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class SmartContract {
  /// Returns a new [SmartContract] instance.
  SmartContract({
    @required this.txId,
    @required this.canonical,
    @required this.blockHeight,
    @required this.sourceCode,
    @required this.abi,
  });

  String txId;

  bool canonical;

  int blockHeight;

  String sourceCode;

  String abi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmartContract &&
     other.txId == txId &&
     other.canonical == canonical &&
     other.blockHeight == blockHeight &&
     other.sourceCode == sourceCode &&
     other.abi == abi;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (txId == null ? 0 : txId.hashCode) +
    (canonical == null ? 0 : canonical.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode) +
    (sourceCode == null ? 0 : sourceCode.hashCode) +
    (abi == null ? 0 : abi.hashCode);

  @override
  String toString() => 'SmartContract[txId=$txId, canonical=$canonical, blockHeight=$blockHeight, sourceCode=$sourceCode, abi=$abi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tx_id'] = txId;
      json[r'canonical'] = canonical;
      json[r'block_height'] = blockHeight;
      json[r'source_code'] = sourceCode;
      json[r'abi'] = abi;
    return json;
  }

  /// Returns a new [SmartContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmartContract fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SmartContract(
        txId: mapValueOfType<String>(json, r'tx_id'),
        canonical: mapValueOfType<bool>(json, r'canonical'),
        blockHeight: mapValueOfType<int>(json, r'block_height'),
        sourceCode: mapValueOfType<String>(json, r'source_code'),
        abi: mapValueOfType<String>(json, r'abi'),
      );
    }
    return null;
  }

  static List<SmartContract> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SmartContract.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SmartContract>[];

  static Map<String, SmartContract> mapFromJson(dynamic json) {
    final map = <String, SmartContract>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SmartContract.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SmartContract-objects as value to a dart map
  static Map<String, List<SmartContract>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SmartContract>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SmartContract.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

