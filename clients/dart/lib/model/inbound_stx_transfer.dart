//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class InboundStxTransfer {
  /// Returns a new [InboundStxTransfer] instance.
  InboundStxTransfer({
    @required this.sender,
    @required this.amount,
    @required this.memo,
    @required this.blockHeight,
    @required this.txId,
    @required this.transferType,
    @required this.txIndex,
  });

  /// Principal that sent this transfer
  String sender;

  /// Transfer amount in micro-STX as integer string
  String amount;

  /// Hex encoded memo bytes associated with the transfer
  String memo;

  /// Block height at which this transfer occurred
  num blockHeight;

  /// The transaction ID in which this transfer occurred
  String txId;

  /// Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction
  InboundStxTransferTransferTypeEnum transferType;

  /// Index of the transaction within a block
  num txIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboundStxTransfer &&
     other.sender == sender &&
     other.amount == amount &&
     other.memo == memo &&
     other.blockHeight == blockHeight &&
     other.txId == txId &&
     other.transferType == transferType &&
     other.txIndex == txIndex;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sender == null ? 0 : sender.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (memo == null ? 0 : memo.hashCode) +
    (blockHeight == null ? 0 : blockHeight.hashCode) +
    (txId == null ? 0 : txId.hashCode) +
    (transferType == null ? 0 : transferType.hashCode) +
    (txIndex == null ? 0 : txIndex.hashCode);

  @override
  String toString() => 'InboundStxTransfer[sender=$sender, amount=$amount, memo=$memo, blockHeight=$blockHeight, txId=$txId, transferType=$transferType, txIndex=$txIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sender'] = sender;
      json[r'amount'] = amount;
      json[r'memo'] = memo;
      json[r'block_height'] = blockHeight;
      json[r'tx_id'] = txId;
      json[r'transfer_type'] = transferType;
      json[r'tx_index'] = txIndex;
    return json;
  }

  /// Returns a new [InboundStxTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboundStxTransfer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InboundStxTransfer(
        sender: mapValueOfType<String>(json, r'sender'),
        amount: mapValueOfType<String>(json, r'amount'),
        memo: mapValueOfType<String>(json, r'memo'),
        blockHeight: json[r'block_height'] == null
          ? null
          : num.parse(json[r'block_height'].toString()),
        txId: mapValueOfType<String>(json, r'tx_id'),
        transferType: InboundStxTransferTransferTypeEnum.fromJson(json[r'transfer_type']),
        txIndex: json[r'tx_index'] == null
          ? null
          : num.parse(json[r'tx_index'].toString()),
      );
    }
    return null;
  }

  static List<InboundStxTransfer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InboundStxTransfer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InboundStxTransfer>[];

  static Map<String, InboundStxTransfer> mapFromJson(dynamic json) {
    final map = <String, InboundStxTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InboundStxTransfer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InboundStxTransfer-objects as value to a dart map
  static Map<String, List<InboundStxTransfer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboundStxTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InboundStxTransfer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction
class InboundStxTransferTransferTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboundStxTransferTransferTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const bulkSend = InboundStxTransferTransferTypeEnum._(r'bulk-send');
  static const stxTransfer = InboundStxTransferTransferTypeEnum._(r'stx-transfer');

  /// List of all possible values in this [enum][InboundStxTransferTransferTypeEnum].
  static const values = <InboundStxTransferTransferTypeEnum>[
    bulkSend,
    stxTransfer,
  ];

  static InboundStxTransferTransferTypeEnum fromJson(dynamic value) =>
    InboundStxTransferTransferTypeEnumTypeTransformer().decode(value);

  static List<InboundStxTransferTransferTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InboundStxTransferTransferTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InboundStxTransferTransferTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [InboundStxTransferTransferTypeEnum] to String,
/// and [decode] dynamic data back to [InboundStxTransferTransferTypeEnum].
class InboundStxTransferTransferTypeEnumTypeTransformer {
  factory InboundStxTransferTransferTypeEnumTypeTransformer() => _instance ??= const InboundStxTransferTransferTypeEnumTypeTransformer._();

  const InboundStxTransferTransferTypeEnumTypeTransformer._();

  String encode(InboundStxTransferTransferTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboundStxTransferTransferTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboundStxTransferTransferTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'bulk-send': return InboundStxTransferTransferTypeEnum.bulkSend;
        case r'stx-transfer': return InboundStxTransferTransferTypeEnum.stxTransfer;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboundStxTransferTransferTypeEnumTypeTransformer] instance.
  static InboundStxTransferTransferTypeEnumTypeTransformer _instance;
}


