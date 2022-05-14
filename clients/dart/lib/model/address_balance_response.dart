//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressBalanceResponse {
  /// Returns a new [AddressBalanceResponse] instance.
  AddressBalanceResponse({
    @required this.stx,
    @required this.fungibleTokens,
    @required this.nonFungibleTokens,
    this.tokenOfferingLocked,
  });

  AddressBalanceResponseStx stx;

  Object fungibleTokens;

  Object nonFungibleTokens;

  AddressTokenOfferingLocked tokenOfferingLocked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressBalanceResponse &&
     other.stx == stx &&
     other.fungibleTokens == fungibleTokens &&
     other.nonFungibleTokens == nonFungibleTokens &&
     other.tokenOfferingLocked == tokenOfferingLocked;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (stx == null ? 0 : stx.hashCode) +
    (fungibleTokens == null ? 0 : fungibleTokens.hashCode) +
    (nonFungibleTokens == null ? 0 : nonFungibleTokens.hashCode) +
    (tokenOfferingLocked == null ? 0 : tokenOfferingLocked.hashCode);

  @override
  String toString() => 'AddressBalanceResponse[stx=$stx, fungibleTokens=$fungibleTokens, nonFungibleTokens=$nonFungibleTokens, tokenOfferingLocked=$tokenOfferingLocked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stx'] = stx;
      json[r'fungible_tokens'] = fungibleTokens;
      json[r'non_fungible_tokens'] = nonFungibleTokens;
    if (tokenOfferingLocked != null) {
      json[r'token_offering_locked'] = tokenOfferingLocked;
    }
    return json;
  }

  /// Returns a new [AddressBalanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressBalanceResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressBalanceResponse(
        stx: AddressBalanceResponseStx.fromJson(json[r'stx']),
        fungibleTokens: mapValueOfType<Object>(json, r'fungible_tokens'),
        nonFungibleTokens: mapValueOfType<Object>(json, r'non_fungible_tokens'),
        tokenOfferingLocked: AddressTokenOfferingLocked.fromJson(json[r'token_offering_locked']),
      );
    }
    return null;
  }

  static List<AddressBalanceResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressBalanceResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressBalanceResponse>[];

  static Map<String, AddressBalanceResponse> mapFromJson(dynamic json) {
    final map = <String, AddressBalanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressBalanceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressBalanceResponse-objects as value to a dart map
  static Map<String, List<AddressBalanceResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressBalanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressBalanceResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

