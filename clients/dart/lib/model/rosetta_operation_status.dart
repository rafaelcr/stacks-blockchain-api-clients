//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaOperationStatus {
  /// Returns a new [RosettaOperationStatus] instance.
  RosettaOperationStatus({
    @required this.status,
    @required this.successful,
  });

  /// The status is the network-specific status of the operation.
  String status;

  /// An Operation is considered successful if the Operation.Amount should affect the Operation.Account. Some blockchains (like Bitcoin) only include successful operations in blocks but other blockchains (like Ethereum) include unsuccessful operations that incur a fee. To reconcile the computed balance from the stream of Operations, it is critical to understand which Operation.Status indicate an Operation is successful and should affect an Account.
  bool successful;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaOperationStatus &&
     other.status == status &&
     other.successful == successful;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (successful == null ? 0 : successful.hashCode);

  @override
  String toString() => 'RosettaOperationStatus[status=$status, successful=$successful]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'successful'] = successful;
    return json;
  }

  /// Returns a new [RosettaOperationStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaOperationStatus fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaOperationStatus(
        status: mapValueOfType<String>(json, r'status'),
        successful: mapValueOfType<bool>(json, r'successful'),
      );
    }
    return null;
  }

  static List<RosettaOperationStatus> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaOperationStatus.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaOperationStatus>[];

  static Map<String, RosettaOperationStatus> mapFromJson(dynamic json) {
    final map = <String, RosettaOperationStatus>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaOperationStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaOperationStatus-objects as value to a dart map
  static Map<String, List<RosettaOperationStatus>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaOperationStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaOperationStatus.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

