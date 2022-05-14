//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionParseResponse {
  /// Returns a new [RosettaConstructionParseResponse] instance.
  RosettaConstructionParseResponse({
    this.operations = const [],
    this.signers = const [],
    this.accountIdentifierSigners = const [],
    this.metadata,
  });

  List<RosettaOperation> operations;

  /// [DEPRECATED by account_identifier_signers in v1.4.4] All signers (addresses) of a particular transaction. If the transaction is unsigned, it should be empty.
  List<AnyOfstring> signers;

  List<Object> accountIdentifierSigners;

  Object metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionParseResponse &&
     other.operations == operations &&
     other.signers == signers &&
     other.accountIdentifierSigners == accountIdentifierSigners &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (operations == null ? 0 : operations.hashCode) +
    (signers == null ? 0 : signers.hashCode) +
    (accountIdentifierSigners == null ? 0 : accountIdentifierSigners.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'RosettaConstructionParseResponse[operations=$operations, signers=$signers, accountIdentifierSigners=$accountIdentifierSigners, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operations'] = operations;
    if (signers != null) {
      json[r'signers'] = signers;
    }
    if (accountIdentifierSigners != null) {
      json[r'account_identifier_signers'] = accountIdentifierSigners;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionParseResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionParseResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionParseResponse(
        operations: RosettaOperation.listFromJson(json[r'operations']),
        signers: AnyOfstring.listFromJson(json[r'signers']),
        accountIdentifierSigners: Object.listFromJson(json[r'account_identifier_signers']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<RosettaConstructionParseResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionParseResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionParseResponse>[];

  static Map<String, RosettaConstructionParseResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionParseResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionParseResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionParseResponse-objects as value to a dart map
  static Map<String, List<RosettaConstructionParseResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionParseResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionParseResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

