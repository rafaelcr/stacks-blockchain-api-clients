//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ContractSourceResponse {
  /// Returns a new [ContractSourceResponse] instance.
  ContractSourceResponse({
    @required this.source_,
    @required this.publishHeight,
    @required this.proof,
  });

  String source_;

  int publishHeight;

  String proof;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContractSourceResponse &&
     other.source_ == source_ &&
     other.publishHeight == publishHeight &&
     other.proof == proof;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (source_ == null ? 0 : source_.hashCode) +
    (publishHeight == null ? 0 : publishHeight.hashCode) +
    (proof == null ? 0 : proof.hashCode);

  @override
  String toString() => 'ContractSourceResponse[source_=$source_, publishHeight=$publishHeight, proof=$proof]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = source_;
      json[r'publish_height'] = publishHeight;
      json[r'proof'] = proof;
    return json;
  }

  /// Returns a new [ContractSourceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContractSourceResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ContractSourceResponse(
        source_: mapValueOfType<String>(json, r'source'),
        publishHeight: mapValueOfType<int>(json, r'publish_height'),
        proof: mapValueOfType<String>(json, r'proof'),
      );
    }
    return null;
  }

  static List<ContractSourceResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ContractSourceResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ContractSourceResponse>[];

  static Map<String, ContractSourceResponse> mapFromJson(dynamic json) {
    final map = <String, ContractSourceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ContractSourceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContractSourceResponse-objects as value to a dart map
  static Map<String, List<ContractSourceResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContractSourceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ContractSourceResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

