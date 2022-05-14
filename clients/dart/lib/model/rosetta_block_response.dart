//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaBlockResponse {
  /// Returns a new [RosettaBlockResponse] instance.
  RosettaBlockResponse({
    this.block,
    this.otherTransactions = const [],
  });

  RosettaBlock block;

  /// Some blockchains may require additional transactions to be fetched that weren't returned in the block response (ex: block only returns transaction hashes). For blockchains with a lot of transactions in each block, this can be very useful as consumers can concurrently fetch all transactions returned.
  List<OtherTransactionIdentifier> otherTransactions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaBlockResponse &&
     other.block == block &&
     other.otherTransactions == otherTransactions;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (block == null ? 0 : block.hashCode) +
    (otherTransactions == null ? 0 : otherTransactions.hashCode);

  @override
  String toString() => 'RosettaBlockResponse[block=$block, otherTransactions=$otherTransactions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (block != null) {
      json[r'block'] = block;
    }
    if (otherTransactions != null) {
      json[r'other_transactions'] = otherTransactions;
    }
    return json;
  }

  /// Returns a new [RosettaBlockResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaBlockResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaBlockResponse(
        block: RosettaBlock.fromJson(json[r'block']),
        otherTransactions: OtherTransactionIdentifier.listFromJson(json[r'other_transactions']),
      );
    }
    return null;
  }

  static List<RosettaBlockResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaBlockResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaBlockResponse>[];

  static Map<String, RosettaBlockResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaBlockResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaBlockResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaBlockResponse-objects as value to a dart map
  static Map<String, List<RosettaBlockResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaBlockResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaBlockResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

