//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaErrorNoDetails {
  /// Returns a new [RosettaErrorNoDetails] instance.
  RosettaErrorNoDetails({
    @required this.code,
    @required this.message,
    @required this.retriable,
  });

  /// Code is a network-specific error code. If desired, this code can be equivalent to an HTTP status code.
  int code;

  /// Message is a network-specific error message. The message MUST NOT change for a given code. In particular, this means that any contextual information should be included in the details field.
  String message;

  /// An error is retriable if the same request may succeed if submitted again.
  bool retriable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaErrorNoDetails &&
     other.code == code &&
     other.message == message &&
     other.retriable == retriable;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (retriable == null ? 0 : retriable.hashCode);

  @override
  String toString() => 'RosettaErrorNoDetails[code=$code, message=$message, retriable=$retriable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'message'] = message;
      json[r'retriable'] = retriable;
    return json;
  }

  /// Returns a new [RosettaErrorNoDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaErrorNoDetails fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaErrorNoDetails(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        retriable: mapValueOfType<bool>(json, r'retriable'),
      );
    }
    return null;
  }

  static List<RosettaErrorNoDetails> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaErrorNoDetails.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaErrorNoDetails>[];

  static Map<String, RosettaErrorNoDetails> mapFromJson(dynamic json) {
    final map = <String, RosettaErrorNoDetails>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaErrorNoDetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaErrorNoDetails-objects as value to a dart map
  static Map<String, List<RosettaErrorNoDetails>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaErrorNoDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaErrorNoDetails.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

