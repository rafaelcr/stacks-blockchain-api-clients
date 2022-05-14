//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressTransactionWithTransfersFtTransfers {
  /// Returns a new [AddressTransactionWithTransfersFtTransfers] instance.
  AddressTransactionWithTransfersFtTransfers({
    @required this.assetIdentifier,
    @required this.amount,
    this.sender,
    this.recipient,
  });

  /// Fungible Token asset identifier.
  String assetIdentifier;

  /// Amount transferred as an integer string. This balance does not factor in possible SIP-010 decimals.
  String amount;

  /// Principal that sent the asset.
  String sender;

  /// Principal that received the asset.
  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressTransactionWithTransfersFtTransfers &&
     other.assetIdentifier == assetIdentifier &&
     other.amount == amount &&
     other.sender == sender &&
     other.recipient == recipient;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (assetIdentifier == null ? 0 : assetIdentifier.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (recipient == null ? 0 : recipient.hashCode);

  @override
  String toString() => 'AddressTransactionWithTransfersFtTransfers[assetIdentifier=$assetIdentifier, amount=$amount, sender=$sender, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_identifier'] = assetIdentifier;
      json[r'amount'] = amount;
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    return json;
  }

  /// Returns a new [AddressTransactionWithTransfersFtTransfers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressTransactionWithTransfersFtTransfers fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressTransactionWithTransfersFtTransfers(
        assetIdentifier: mapValueOfType<String>(json, r'asset_identifier'),
        amount: mapValueOfType<String>(json, r'amount'),
        sender: mapValueOfType<String>(json, r'sender'),
        recipient: mapValueOfType<String>(json, r'recipient'),
      );
    }
    return null;
  }

  static List<AddressTransactionWithTransfersFtTransfers> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressTransactionWithTransfersFtTransfers.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressTransactionWithTransfersFtTransfers>[];

  static Map<String, AddressTransactionWithTransfersFtTransfers> mapFromJson(dynamic json) {
    final map = <String, AddressTransactionWithTransfersFtTransfers>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressTransactionWithTransfersFtTransfers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressTransactionWithTransfersFtTransfers-objects as value to a dart map
  static Map<String, List<AddressTransactionWithTransfersFtTransfers>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressTransactionWithTransfersFtTransfers>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressTransactionWithTransfersFtTransfers.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

