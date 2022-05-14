//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressTransactionWithTransfers {
  /// Returns a new [AddressTransactionWithTransfers] instance.
  AddressTransactionWithTransfers({
    @required this.tx,
    @required this.stxSent,
    @required this.stxReceived,
    this.stxTransfers = const [],
    this.ftTransfers = const [],
    this.nftTransfers = const [],
  });

  Object tx;

  /// Total sent from the given address, including the tx fee, in micro-STX as an integer string.
  String stxSent;

  /// Total received by the given address in micro-STX as an integer string.
  String stxReceived;

  List<AddressTransactionWithTransfersStxTransfers> stxTransfers;

  List<AddressTransactionWithTransfersFtTransfers> ftTransfers;

  List<AddressTransactionWithTransfersNftTransfers> nftTransfers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressTransactionWithTransfers &&
     other.tx == tx &&
     other.stxSent == stxSent &&
     other.stxReceived == stxReceived &&
     other.stxTransfers == stxTransfers &&
     other.ftTransfers == ftTransfers &&
     other.nftTransfers == nftTransfers;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tx == null ? 0 : tx.hashCode) +
    (stxSent == null ? 0 : stxSent.hashCode) +
    (stxReceived == null ? 0 : stxReceived.hashCode) +
    (stxTransfers == null ? 0 : stxTransfers.hashCode) +
    (ftTransfers == null ? 0 : ftTransfers.hashCode) +
    (nftTransfers == null ? 0 : nftTransfers.hashCode);

  @override
  String toString() => 'AddressTransactionWithTransfers[tx=$tx, stxSent=$stxSent, stxReceived=$stxReceived, stxTransfers=$stxTransfers, ftTransfers=$ftTransfers, nftTransfers=$nftTransfers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tx'] = tx;
      json[r'stx_sent'] = stxSent;
      json[r'stx_received'] = stxReceived;
      json[r'stx_transfers'] = stxTransfers;
    if (ftTransfers != null) {
      json[r'ft_transfers'] = ftTransfers;
    }
    if (nftTransfers != null) {
      json[r'nft_transfers'] = nftTransfers;
    }
    return json;
  }

  /// Returns a new [AddressTransactionWithTransfers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressTransactionWithTransfers fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressTransactionWithTransfers(
        tx: Object.fromJson(json[r'tx']),
        stxSent: mapValueOfType<String>(json, r'stx_sent'),
        stxReceived: mapValueOfType<String>(json, r'stx_received'),
        stxTransfers: AddressTransactionWithTransfersStxTransfers.listFromJson(json[r'stx_transfers']),
        ftTransfers: AddressTransactionWithTransfersFtTransfers.listFromJson(json[r'ft_transfers']),
        nftTransfers: AddressTransactionWithTransfersNftTransfers.listFromJson(json[r'nft_transfers']),
      );
    }
    return null;
  }

  static List<AddressTransactionWithTransfers> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressTransactionWithTransfers.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressTransactionWithTransfers>[];

  static Map<String, AddressTransactionWithTransfers> mapFromJson(dynamic json) {
    final map = <String, AddressTransactionWithTransfers>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressTransactionWithTransfers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressTransactionWithTransfers-objects as value to a dart map
  static Map<String, List<AddressTransactionWithTransfers>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressTransactionWithTransfers>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressTransactionWithTransfers.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

