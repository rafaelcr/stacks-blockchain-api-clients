//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaError {
  /// Returns a new [RosettaError] instance.
  RosettaError({
    @required this.code,
    @required this.message,
    @required this.retriable,
    this.details,
  });

  /// Code is a network-specific error code. If desired, this code can be equivalent to an HTTP status code.
  int code;

  /// Message is a network-specific error message. The message MUST NOT change for a given code. In particular, this means that any contextual information should be included in the details field.
  String message;

  /// An error is retriable if the same request may succeed if submitted again.
  bool retriable;

  RosettaErrorDetails details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaError &&
     other.code == code &&
     other.message == message &&
     other.retriable == retriable &&
     other.details == details;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (retriable == null ? 0 : retriable.hashCode) +
    (details == null ? 0 : details.hashCode);

  @override
  String toString() => 'RosettaError[code=$code, message=$message, retriable=$retriable, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'message'] = message;
      json[r'retriable'] = retriable;
    if (details != null) {
      json[r'details'] = details;
    }
    return json;
  }

  /// Returns a new [RosettaError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaError fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaError(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        retriable: mapValueOfType<bool>(json, r'retriable'),
        details: RosettaErrorDetails.fromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<RosettaError> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaError.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaError>[];

  static Map<String, RosettaError> mapFromJson(dynamic json) {
    final map = <String, RosettaError>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaError-objects as value to a dart map
  static Map<String, List<RosettaError>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaError>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaError.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

