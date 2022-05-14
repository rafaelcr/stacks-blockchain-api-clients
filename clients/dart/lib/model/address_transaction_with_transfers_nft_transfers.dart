//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressTransactionWithTransfersNftTransfers {
  /// Returns a new [AddressTransactionWithTransfersNftTransfers] instance.
  AddressTransactionWithTransfersNftTransfers({
    @required this.assetIdentifier,
    @required this.value,
    this.sender,
    this.recipient,
  });

  /// Non Fungible Token asset identifier.
  String assetIdentifier;

  AddressTransactionWithTransfersValue value;

  /// Principal that sent the asset.
  String sender;

  /// Principal that received the asset.
  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressTransactionWithTransfersNftTransfers &&
     other.assetIdentifier == assetIdentifier &&
     other.value == value &&
     other.sender == sender &&
     other.recipient == recipient;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (assetIdentifier == null ? 0 : assetIdentifier.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (recipient == null ? 0 : recipient.hashCode);

  @override
  String toString() => 'AddressTransactionWithTransfersNftTransfers[assetIdentifier=$assetIdentifier, value=$value, sender=$sender, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'asset_identifier'] = assetIdentifier;
      json[r'value'] = value;
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    return json;
  }

  /// Returns a new [AddressTransactionWithTransfersNftTransfers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressTransactionWithTransfersNftTransfers fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressTransactionWithTransfersNftTransfers(
        assetIdentifier: mapValueOfType<String>(json, r'asset_identifier'),
        value: AddressTransactionWithTransfersValue.fromJson(json[r'value']),
        sender: mapValueOfType<String>(json, r'sender'),
        recipient: mapValueOfType<String>(json, r'recipient'),
      );
    }
    return null;
  }

  static List<AddressTransactionWithTransfersNftTransfers> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressTransactionWithTransfersNftTransfers.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressTransactionWithTransfersNftTransfers>[];

  static Map<String, AddressTransactionWithTransfersNftTransfers> mapFromJson(dynamic json) {
    final map = <String, AddressTransactionWithTransfersNftTransfers>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressTransactionWithTransfersNftTransfers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressTransactionWithTransfersNftTransfers-objects as value to a dart map
  static Map<String, List<AddressTransactionWithTransfersNftTransfers>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressTransactionWithTransfersNftTransfers>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressTransactionWithTransfersNftTransfers.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

