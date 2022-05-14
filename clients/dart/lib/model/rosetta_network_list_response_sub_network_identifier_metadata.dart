//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaNetworkListResponseSubNetworkIdentifierMetadata {
  /// Returns a new [RosettaNetworkListResponseSubNetworkIdentifierMetadata] instance.
  RosettaNetworkListResponseSubNetworkIdentifierMetadata({
    @required this.producer,
  });

  /// producer
  String producer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaNetworkListResponseSubNetworkIdentifierMetadata &&
     other.producer == producer;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (producer == null ? 0 : producer.hashCode);

  @override
  String toString() => 'RosettaNetworkListResponseSubNetworkIdentifierMetadata[producer=$producer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'producer'] = producer;
    return json;
  }

  /// Returns a new [RosettaNetworkListResponseSubNetworkIdentifierMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaNetworkListResponseSubNetworkIdentifierMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaNetworkListResponseSubNetworkIdentifierMetadata(
        producer: mapValueOfType<String>(json, r'producer'),
      );
    }
    return null;
  }

  static List<RosettaNetworkListResponseSubNetworkIdentifierMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaNetworkListResponseSubNetworkIdentifierMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaNetworkListResponseSubNetworkIdentifierMetadata>[];

  static Map<String, RosettaNetworkListResponseSubNetworkIdentifierMetadata> mapFromJson(dynamic json) {
    final map = <String, RosettaNetworkListResponseSubNetworkIdentifierMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaNetworkListResponseSubNetworkIdentifierMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaNetworkListResponseSubNetworkIdentifierMetadata-objects as value to a dart map
  static Map<String, List<RosettaNetworkListResponseSubNetworkIdentifierMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaNetworkListResponseSubNetworkIdentifierMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaNetworkListResponseSubNetworkIdentifierMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

