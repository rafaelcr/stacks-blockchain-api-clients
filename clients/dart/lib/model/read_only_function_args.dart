//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ReadOnlyFunctionArgs {
  /// Returns a new [ReadOnlyFunctionArgs] instance.
  ReadOnlyFunctionArgs({
    @required this.sender,
    this.arguments = const [],
  });

  /// The simulated tx-sender
  String sender;

  /// An array of hex serialized Clarity values
  List<String> arguments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReadOnlyFunctionArgs &&
     other.sender == sender &&
     other.arguments == arguments;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sender == null ? 0 : sender.hashCode) +
    (arguments == null ? 0 : arguments.hashCode);

  @override
  String toString() => 'ReadOnlyFunctionArgs[sender=$sender, arguments=$arguments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sender'] = sender;
      json[r'arguments'] = arguments;
    return json;
  }

  /// Returns a new [ReadOnlyFunctionArgs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReadOnlyFunctionArgs fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReadOnlyFunctionArgs(
        sender: mapValueOfType<String>(json, r'sender'),
        arguments: json[r'arguments'] is List
          ? (json[r'arguments'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<ReadOnlyFunctionArgs> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReadOnlyFunctionArgs.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReadOnlyFunctionArgs>[];

  static Map<String, ReadOnlyFunctionArgs> mapFromJson(dynamic json) {
    final map = <String, ReadOnlyFunctionArgs>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReadOnlyFunctionArgs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReadOnlyFunctionArgs-objects as value to a dart map
  static Map<String, List<ReadOnlyFunctionArgs>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReadOnlyFunctionArgs>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReadOnlyFunctionArgs.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

