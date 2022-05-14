//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class NftEvent {
  /// Returns a new [NftEvent] instance.
  NftEvent({
    @required this.sender,
    @required this.recipient,
    @required this.assetIdentifier,
    @required this.value,
    @required this.txId,
    @required this.blockHeight,
  });

  String sender;

  String recipient;

  String assetIdentifier;

  AddressNftListResponseValue value;

  String txId;

  num blockHeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NftEvent &&
     other.sender == sender &&
     other.recipient == recipient &&
     other.assetIdentifier == assetIdentifier &&
     other.value == value &&
     other.txId == txId &&
     other.blockHeight == blockHeight;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sender == null ? 0 : sender.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (assetIdentifier == null ? 0 : assetIdentifier.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (txId == null ? 0 : txId.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode);

  @override
  String toString() => 'NftEvent[sender=$sender, recipient=$recipient, assetIdentifier=$assetIdentifier, value=$value, txId=$txId, blockHeight=$blockHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sender'] = sender;
      json[r'recipient'] = recipient;
      json[r'asset_identifier'] = assetIdentifier;
      json[r'value'] = value;
      json[r'tx_id'] = txId;
      json[r'block_height'] = blockHeight;
    return json;
  }

  /// Returns a new [NftEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NftEvent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NftEvent(
        sender: mapValueOfType<String>(json, r'sender'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        assetIdentifier: mapValueOfType<String>(json, r'asset_identifier'),
        value: AddressNftListResponseValue.fromJson(json[r'value']),
        txId: mapValueOfType<String>(json, r'tx_id'),
        blockHeight: json[r'block_height'] == null
          ? null
          : num.parse(json[r'block_height'].toString()),
      );
    }
    return null;
  }

  static List<NftEvent> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NftEvent.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NftEvent>[];

  static Map<String, NftEvent> mapFromJson(dynamic json) {
    final map = <String, NftEvent>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NftEvent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NftEvent-objects as value to a dart map
  static Map<String, List<NftEvent>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NftEvent>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NftEvent.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

