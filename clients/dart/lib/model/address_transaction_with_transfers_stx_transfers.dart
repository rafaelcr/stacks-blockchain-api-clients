//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressTransactionWithTransfersStxTransfers {
  /// Returns a new [AddressTransactionWithTransfersStxTransfers] instance.
  AddressTransactionWithTransfersStxTransfers({
    @required this.amount,
    this.sender,
    this.recipient,
  });

  /// Amount transferred in micro-STX as an integer string.
  String amount;

  /// Principal that sent STX. This is unspecified if the STX were minted.
  String sender;

  /// Principal that received STX. This is unspecified if the STX were burned.
  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressTransactionWithTransfersStxTransfers &&
     other.amount == amount &&
     other.sender == sender &&
     other.recipient == recipient;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (recipient == null ? 0 : recipient.hashCode);

  @override
  String toString() => 'AddressTransactionWithTransfersStxTransfers[amount=$amount, sender=$sender, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'amount'] = amount;
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    return json;
  }

  /// Returns a new [AddressTransactionWithTransfersStxTransfers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressTransactionWithTransfersStxTransfers fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressTransactionWithTransfersStxTransfers(
        amount: mapValueOfType<String>(json, r'amount'),
        sender: mapValueOfType<String>(json, r'sender'),
        recipient: mapValueOfType<String>(json, r'recipient'),
      );
    }
    return null;
  }

  static List<AddressTransactionWithTransfersStxTransfers> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressTransactionWithTransfersStxTransfers.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressTransactionWithTransfersStxTransfers>[];

  static Map<String, AddressTransactionWithTransfersStxTransfers> mapFromJson(dynamic json) {
    final map = <String, AddressTransactionWithTransfersStxTransfers>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressTransactionWithTransfersStxTransfers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressTransactionWithTransfersStxTransfers-objects as value to a dart map
  static Map<String, List<AddressTransactionWithTransfersStxTransfers>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressTransactionWithTransfersStxTransfers>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressTransactionWithTransfersStxTransfers.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

