//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressTokenOfferingLocked {
  /// Returns a new [AddressTokenOfferingLocked] instance.
  AddressTokenOfferingLocked({
    @required this.totalLocked,
    @required this.totalUnlocked,
    this.unlockSchedule = const [],
  });

  /// Micro-STX amount still locked at current block height.
  String totalLocked;

  /// Micro-STX amount unlocked at current block height.
  String totalUnlocked;

  List<AddressUnlockSchedule> unlockSchedule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressTokenOfferingLocked &&
     other.totalLocked == totalLocked &&
     other.totalUnlocked == totalUnlocked &&
     other.unlockSchedule == unlockSchedule;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (totalLocked == null ? 0 : totalLocked.hashCode) +
    (totalUnlocked == null ? 0 : totalUnlocked.hashCode) +
    (unlockSchedule == null ? 0 : unlockSchedule.hashCode);

  @override
  String toString() => 'AddressTokenOfferingLocked[totalLocked=$totalLocked, totalUnlocked=$totalUnlocked, unlockSchedule=$unlockSchedule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total_locked'] = totalLocked;
      json[r'total_unlocked'] = totalUnlocked;
      json[r'unlock_schedule'] = unlockSchedule;
    return json;
  }

  /// Returns a new [AddressTokenOfferingLocked] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressTokenOfferingLocked fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressTokenOfferingLocked(
        totalLocked: mapValueOfType<String>(json, r'total_locked'),
        totalUnlocked: mapValueOfType<String>(json, r'total_unlocked'),
        unlockSchedule: AddressUnlockSchedule.listFromJson(json[r'unlock_schedule']),
      );
    }
    return null;
  }

  static List<AddressTokenOfferingLocked> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressTokenOfferingLocked.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressTokenOfferingLocked>[];

  static Map<String, AddressTokenOfferingLocked> mapFromJson(dynamic json) {
    final map = <String, AddressTokenOfferingLocked>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressTokenOfferingLocked.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressTokenOfferingLocked-objects as value to a dart map
  static Map<String, List<AddressTokenOfferingLocked>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressTokenOfferingLocked>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressTokenOfferingLocked.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

