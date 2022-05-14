//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ReadOnlyFunctionSuccessResponse {
  /// Returns a new [ReadOnlyFunctionSuccessResponse] instance.
  ReadOnlyFunctionSuccessResponse({
    @required this.okay,
    this.result,
    this.cause,
  });

  bool okay;

  String result;

  String cause;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReadOnlyFunctionSuccessResponse &&
     other.okay == okay &&
     other.result == result &&
     other.cause == cause;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (okay == null ? 0 : okay.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (cause == null ? 0 : cause.hashCode);

  @override
  String toString() => 'ReadOnlyFunctionSuccessResponse[okay=$okay, result=$result, cause=$cause]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'okay'] = okay;
    if (result != null) {
      json[r'result'] = result;
    }
    if (cause != null) {
      json[r'cause'] = cause;
    }
    return json;
  }

  /// Returns a new [ReadOnlyFunctionSuccessResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReadOnlyFunctionSuccessResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReadOnlyFunctionSuccessResponse(
        okay: mapValueOfType<bool>(json, r'okay'),
        result: mapValueOfType<String>(json, r'result'),
        cause: mapValueOfType<String>(json, r'cause'),
      );
    }
    return null;
  }

  static List<ReadOnlyFunctionSuccessResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReadOnlyFunctionSuccessResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReadOnlyFunctionSuccessResponse>[];

  static Map<String, ReadOnlyFunctionSuccessResponse> mapFromJson(dynamic json) {
    final map = <String, ReadOnlyFunctionSuccessResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReadOnlyFunctionSuccessResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReadOnlyFunctionSuccessResponse-objects as value to a dart map
  static Map<String, List<ReadOnlyFunctionSuccessResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReadOnlyFunctionSuccessResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReadOnlyFunctionSuccessResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

