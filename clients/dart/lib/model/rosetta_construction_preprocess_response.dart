//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaConstructionPreprocessResponse {
  /// Returns a new [RosettaConstructionPreprocessResponse] instance.
  RosettaConstructionPreprocessResponse({
    this.options,
    this.requiredPublicKeys = const [],
  });

  Object options;

  List<Object> requiredPublicKeys;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaConstructionPreprocessResponse &&
     other.options == options &&
     other.requiredPublicKeys == requiredPublicKeys;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (options == null ? 0 : options.hashCode) +
    (requiredPublicKeys == null ? 0 : requiredPublicKeys.hashCode);

  @override
  String toString() => 'RosettaConstructionPreprocessResponse[options=$options, requiredPublicKeys=$requiredPublicKeys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (options != null) {
      json[r'options'] = options;
    }
    if (requiredPublicKeys != null) {
      json[r'required_public_keys'] = requiredPublicKeys;
    }
    return json;
  }

  /// Returns a new [RosettaConstructionPreprocessResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaConstructionPreprocessResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaConstructionPreprocessResponse(
        options: Object.fromJson(json[r'options']),
        requiredPublicKeys: Object.listFromJson(json[r'required_public_keys']),
      );
    }
    return null;
  }

  static List<RosettaConstructionPreprocessResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaConstructionPreprocessResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaConstructionPreprocessResponse>[];

  static Map<String, RosettaConstructionPreprocessResponse> mapFromJson(dynamic json) {
    final map = <String, RosettaConstructionPreprocessResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaConstructionPreprocessResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaConstructionPreprocessResponse-objects as value to a dart map
  static Map<String, List<RosettaConstructionPreprocessResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaConstructionPreprocessResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaConstructionPreprocessResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

