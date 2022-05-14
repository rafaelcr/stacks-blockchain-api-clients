//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaNetworkOptionsResponseAllow {
  /// Returns a new [RosettaNetworkOptionsResponseAllow] instance.
  RosettaNetworkOptionsResponseAllow({
    this.operationStatuses = const [],
    this.operationTypes = const [],
    this.errors = const [],
    @required this.historicalBalanceLookup,
  });

  /// All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error.
  List<RosettaOperationStatus> operationStatuses;

  /// All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error.
  List<AnyOfstring> operationTypes;

  /// All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error.
  List<RosettaErrorNoDetails> errors;

  /// Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true.
  bool historicalBalanceLookup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaNetworkOptionsResponseAllow &&
     other.operationStatuses == operationStatuses &&
     other.operationTypes == operationTypes &&
     other.errors == errors &&
     other.historicalBalanceLookup == historicalBalanceLookup;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (operationStatuses == null ? 0 : operationStatuses.hashCode) +
    (operationTypes == null ? 0 : operationTypes.hashCode) +
    (errors == null ? 0 : errors.hashCode) +
    (historicalBalanceLookup == null ? 0 : historicalBalanceLookup.hashCode);

  @override
  String toString() => 'RosettaNetworkOptionsResponseAllow[operationStatuses=$operationStatuses, operationTypes=$operationTypes, errors=$errors, historicalBalanceLookup=$historicalBalanceLookup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operation_statuses'] = operationStatuses;
      json[r'operation_types'] = operationTypes;
      json[r'errors'] = errors;
      json[r'historical_balance_lookup'] = historicalBalanceLookup;
    return json;
  }

  /// Returns a new [RosettaNetworkOptionsResponseAllow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaNetworkOptionsResponseAllow fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaNetworkOptionsResponseAllow(
        operationStatuses: RosettaOperationStatus.listFromJson(json[r'operation_statuses']),
        operationTypes: AnyOfstring.listFromJson(json[r'operation_types']),
        errors: RosettaErrorNoDetails.listFromJson(json[r'errors']),
        historicalBalanceLookup: mapValueOfType<bool>(json, r'historical_balance_lookup'),
      );
    }
    return null;
  }

  static List<RosettaNetworkOptionsResponseAllow> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaNetworkOptionsResponseAllow.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaNetworkOptionsResponseAllow>[];

  static Map<String, RosettaNetworkOptionsResponseAllow> mapFromJson(dynamic json) {
    final map = <String, RosettaNetworkOptionsResponseAllow>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaNetworkOptionsResponseAllow.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaNetworkOptionsResponseAllow-objects as value to a dart map
  static Map<String, List<RosettaNetworkOptionsResponseAllow>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaNetworkOptionsResponseAllow>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaNetworkOptionsResponseAllow.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

