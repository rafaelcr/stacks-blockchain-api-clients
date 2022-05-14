//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class RosettaOptions {
  /// Returns a new [RosettaOptions] instance.
  RosettaOptions({
    this.senderAddress,
    this.type,
    this.status,
    this.tokenTransferRecipientAddress,
    this.amount,
    this.symbol,
    this.decimals,
    this.gasLimit,
    this.gasPrice,
    this.suggestedFeeMultiplier,
    this.maxFee,
    this.fee,
    this.size,
    this.memo,
    this.numberOfCycles,
    this.contractAddress,
    this.contractName,
    this.burnBlockHeight,
    this.delegateTo,
    this.poxAddr,
  });

  /// sender's address 
  String senderAddress;

  /// Type of operation e.g transfer
  String type;

  /// This value indicates the state of the operations
  Object status;

  /// Recipient's address
  String tokenTransferRecipientAddress;

  /// Amount to be transfered.
  String amount;

  /// Currency symbol e.g STX
  String symbol;

  /// Number of decimal places
  int decimals;

  /// Maximum price a user is willing to pay.
  num gasLimit;

  /// Cost necessary to perform a transaction on the network
  num gasPrice;

  ///  A suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency.
  num suggestedFeeMultiplier;

  /// Maximum fee user is willing to pay
  String maxFee;

  /// Fee for this transaction
  String fee;

  /// Transaction approximative size (used to calculate total fee).
  int size;

  /// STX token transfer memo.
  String memo;

  /// Number of cycles when stacking.
  int numberOfCycles;

  /// Address of the contract to call.
  String contractAddress;

  /// Name of the contract to call.
  String contractName;

  /// Set the burnchain (BTC) block for stacking lock to start.
  int burnBlockHeight;

  /// Delegator address for when calling `delegate-stacking`.
  String delegateTo;

  /// The reward address for stacking transaction. It should be a valid Bitcoin address
  String poxAddr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RosettaOptions &&
     other.senderAddress == senderAddress &&
     other.type == type &&
     other.status == status &&
     other.tokenTransferRecipientAddress == tokenTransferRecipientAddress &&
     other.amount == amount &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.gasLimit == gasLimit &&
     other.gasPrice == gasPrice &&
     other.suggestedFeeMultiplier == suggestedFeeMultiplier &&
     other.maxFee == maxFee &&
     other.fee == fee &&
     other.size == size &&
     other.memo == memo &&
     other.numberOfCycles == numberOfCycles &&
     other.contractAddress == contractAddress &&
     other.contractName == contractName &&
     other.burnBlockHeight == burnBlockHeight &&
     other.delegateTo == delegateTo &&
     other.poxAddr == poxAddr;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (senderAddress == null ? 0 : senderAddress.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (tokenTransferRecipientAddress == null ? 0 : tokenTransferRecipientAddress.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (gasLimit == null ? 0 : gasLimit.hashCode) +
    (gasPrice == null ? 0 : gasPrice.hashCode) +
    (suggestedFeeMultiplier == null ? 0 : suggestedFeeMultiplier.hashCode) +
    (maxFee == null ? 0 : maxFee.hashCode) +
    (fee == null ? 0 : fee.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (memo == null ? 0 : memo.hashCode) +
    (numberOfCycles == null ? 0 : numberOfCycles.hashCode) +
    (contractAddress == null ? 0 : contractAddress.hashCode) +
    (contractName == null ? 0 : contractName.hashCode) +
    (burnBlockHeight == null ? 0 : burnBlockHeight.hashCode) +
    (delegateTo == null ? 0 : delegateTo.hashCode) +
    (poxAddr == null ? 0 : poxAddr.hashCode);

  @override
  String toString() => 'RosettaOptions[senderAddress=$senderAddress, type=$type, status=$status, tokenTransferRecipientAddress=$tokenTransferRecipientAddress, amount=$amount, symbol=$symbol, decimals=$decimals, gasLimit=$gasLimit, gasPrice=$gasPrice, suggestedFeeMultiplier=$suggestedFeeMultiplier, maxFee=$maxFee, fee=$fee, size=$size, memo=$memo, numberOfCycles=$numberOfCycles, contractAddress=$contractAddress, contractName=$contractName, burnBlockHeight=$burnBlockHeight, delegateTo=$delegateTo, poxAddr=$poxAddr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (senderAddress != null) {
      json[r'sender_address'] = senderAddress;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (tokenTransferRecipientAddress != null) {
      json[r'token_transfer_recipient_address'] = tokenTransferRecipientAddress;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    if (symbol != null) {
      json[r'symbol'] = symbol;
    }
    if (decimals != null) {
      json[r'decimals'] = decimals;
    }
    if (gasLimit != null) {
      json[r'gas_limit'] = gasLimit;
    }
    if (gasPrice != null) {
      json[r'gas_price'] = gasPrice;
    }
    if (suggestedFeeMultiplier != null) {
      json[r'suggested_fee_multiplier'] = suggestedFeeMultiplier;
    }
    if (maxFee != null) {
      json[r'max_fee'] = maxFee;
    }
    if (fee != null) {
      json[r'fee'] = fee;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (memo != null) {
      json[r'memo'] = memo;
    }
    if (numberOfCycles != null) {
      json[r'number_of_cycles'] = numberOfCycles;
    }
    if (contractAddress != null) {
      json[r'contract_address'] = contractAddress;
    }
    if (contractName != null) {
      json[r'contract_name'] = contractName;
    }
    if (burnBlockHeight != null) {
      json[r'burn_block_height'] = burnBlockHeight;
    }
    if (delegateTo != null) {
      json[r'delegate_to'] = delegateTo;
    }
    if (poxAddr != null) {
      json[r'pox_addr'] = poxAddr;
    }
    return json;
  }

  /// Returns a new [RosettaOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RosettaOptions fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RosettaOptions(
        senderAddress: mapValueOfType<String>(json, r'sender_address'),
        type: mapValueOfType<String>(json, r'type'),
        status: mapValueOfType<Object>(json, r'status'),
        tokenTransferRecipientAddress: mapValueOfType<String>(json, r'token_transfer_recipient_address'),
        amount: mapValueOfType<String>(json, r'amount'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        gasLimit: json[r'gas_limit'] == null
          ? null
          : num.parse(json[r'gas_limit'].toString()),
        gasPrice: json[r'gas_price'] == null
          ? null
          : num.parse(json[r'gas_price'].toString()),
        suggestedFeeMultiplier: json[r'suggested_fee_multiplier'] == null
          ? null
          : num.parse(json[r'suggested_fee_multiplier'].toString()),
        maxFee: mapValueOfType<String>(json, r'max_fee'),
        fee: mapValueOfType<String>(json, r'fee'),
        size: mapValueOfType<int>(json, r'size'),
        memo: mapValueOfType<String>(json, r'memo'),
        numberOfCycles: mapValueOfType<int>(json, r'number_of_cycles'),
        contractAddress: mapValueOfType<String>(json, r'contract_address'),
        contractName: mapValueOfType<String>(json, r'contract_name'),
        burnBlockHeight: mapValueOfType<int>(json, r'burn_block_height'),
        delegateTo: mapValueOfType<String>(json, r'delegate_to'),
        poxAddr: mapValueOfType<String>(json, r'pox_addr'),
      );
    }
    return null;
  }

  static List<RosettaOptions> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RosettaOptions.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RosettaOptions>[];

  static Map<String, RosettaOptions> mapFromJson(dynamic json) {
    final map = <String, RosettaOptions>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RosettaOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RosettaOptions-objects as value to a dart map
  static Map<String, List<RosettaOptions>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RosettaOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RosettaOptions.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

