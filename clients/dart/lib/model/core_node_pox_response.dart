//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class CoreNodePoxResponse {
  /// Returns a new [CoreNodePoxResponse] instance.
  CoreNodePoxResponse({
    @required this.contractId,
    @required this.firstBurnchainBlockHeight,
    @required this.minAmountUstx,
    @required this.registrationWindowLength,
    @required this.rejectionFraction,
    @required this.rewardCycleId,
    @required this.rewardCycleLength,
    @required this.rejectionVotesLeftRequired,
    @required this.totalLiquidSupplyUstx,
  });

  String contractId;

  int firstBurnchainBlockHeight;

  int minAmountUstx;

  int registrationWindowLength;

  int rejectionFraction;

  int rewardCycleId;

  int rewardCycleLength;

  int rejectionVotesLeftRequired;

  int totalLiquidSupplyUstx;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreNodePoxResponse &&
     other.contractId == contractId &&
     other.firstBurnchainBlockHeight == firstBurnchainBlockHeight &&
     other.minAmountUstx == minAmountUstx &&
     other.registrationWindowLength == registrationWindowLength &&
     other.rejectionFraction == rejectionFraction &&
     other.rewardCycleId == rewardCycleId &&
     other.rewardCycleLength == rewardCycleLength &&
     other.rejectionVotesLeftRequired == rejectionVotesLeftRequired &&
     other.totalLiquidSupplyUstx == totalLiquidSupplyUstx;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (contractId == null ? 0 : contractId.hashCode) +
    (firstBurnchainBlockHeight == null ? 0 : firstBurnchainBlockHeight.hashCode) +
    (minAmountUstx == null ? 0 : minAmountUstx.hashCode) +
    (registrationWindowLength == null ? 0 : registrationWindowLength.hashCode) +
    (rejectionFraction == null ? 0 : rejectionFraction.hashCode) +
    (rewardCycleId == null ? 0 : rewardCycleId.hashCode) +
    (rewardCycleLength == null ? 0 : rewardCycleLength.hashCode) +
    (rejectionVotesLeftRequired == null ? 0 : rejectionVotesLeftRequired.hashCode) +
    (totalLiquidSupplyUstx == null ? 0 : totalLiquidSupplyUstx.hashCode);

  @override
  String toString() => 'CoreNodePoxResponse[contractId=$contractId, firstBurnchainBlockHeight=$firstBurnchainBlockHeight, minAmountUstx=$minAmountUstx, registrationWindowLength=$registrationWindowLength, rejectionFraction=$rejectionFraction, rewardCycleId=$rewardCycleId, rewardCycleLength=$rewardCycleLength, rejectionVotesLeftRequired=$rejectionVotesLeftRequired, totalLiquidSupplyUstx=$totalLiquidSupplyUstx]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contract_id'] = contractId;
      json[r'first_burnchain_block_height'] = firstBurnchainBlockHeight;
      json[r'min_amount_ustx'] = minAmountUstx;
      json[r'registration_window_length'] = registrationWindowLength;
      json[r'rejection_fraction'] = rejectionFraction;
      json[r'reward_cycle_id'] = rewardCycleId;
      json[r'reward_cycle_length'] = rewardCycleLength;
      json[r'rejection_votes_left_required'] = rejectionVotesLeftRequired;
      json[r'total_liquid_supply_ustx'] = totalLiquidSupplyUstx;
    return json;
  }

  /// Returns a new [CoreNodePoxResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoreNodePoxResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CoreNodePoxResponse(
        contractId: mapValueOfType<String>(json, r'contract_id'),
        firstBurnchainBlockHeight: mapValueOfType<int>(json, r'first_burnchain_block_height'),
        minAmountUstx: mapValueOfType<int>(json, r'min_amount_ustx'),
        registrationWindowLength: mapValueOfType<int>(json, r'registration_window_length'),
        rejectionFraction: mapValueOfType<int>(json, r'rejection_fraction'),
        rewardCycleId: mapValueOfType<int>(json, r'reward_cycle_id'),
        rewardCycleLength: mapValueOfType<int>(json, r'reward_cycle_length'),
        rejectionVotesLeftRequired: mapValueOfType<int>(json, r'rejection_votes_left_required'),
        totalLiquidSupplyUstx: mapValueOfType<int>(json, r'total_liquid_supply_ustx'),
      );
    }
    return null;
  }

  static List<CoreNodePoxResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CoreNodePoxResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CoreNodePoxResponse>[];

  static Map<String, CoreNodePoxResponse> mapFromJson(dynamic json) {
    final map = <String, CoreNodePoxResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CoreNodePoxResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CoreNodePoxResponse-objects as value to a dart map
  static Map<String, List<CoreNodePoxResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CoreNodePoxResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CoreNodePoxResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

