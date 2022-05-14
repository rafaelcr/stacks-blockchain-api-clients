//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class FungibleTokenMetadata {
  /// Returns a new [FungibleTokenMetadata] instance.
  FungibleTokenMetadata({
    @required this.tokenUri,
    @required this.name,
    @required this.description,
    @required this.imageUri,
    @required this.imageCanonicalUri,
    @required this.symbol,
    @required this.decimals,
    @required this.txId,
    @required this.senderAddress,
  });

  /// An optional string that is a valid URI which resolves to this token's metadata. Can be empty.
  String tokenUri;

  /// Identifies the asset to which this token represents
  String name;

  /// Describes the asset to which this token represents
  String description;

  /// A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI.
  String imageUri;

  /// The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive.
  String imageCanonicalUri;

  /// A shorter representation of a token. This is sometimes referred to as a \"ticker\". Examples: \"STX\", \"COOL\", etc. Typically, a token could be referred to as $SYMBOL when referencing it in writing.
  String symbol;

  /// The number of decimal places in a token.
  num decimals;

  /// Tx id that deployed the contract
  String txId;

  /// principle that deployed the contract
  String senderAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FungibleTokenMetadata &&
     other.tokenUri == tokenUri &&
     other.name == name &&
     other.description == description &&
     other.imageUri == imageUri &&
     other.imageCanonicalUri == imageCanonicalUri &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.txId == txId &&
     other.senderAddress == senderAddress;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tokenUri == null ? 0 : tokenUri.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (imageUri == null ? 0 : imageUri.hashCode) +
    (imageCanonicalUri == null ? 0 : imageCanonicalUri.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (txId == null ? 0 : txId.hashCode) +
    (senderAddress == null ? 0 : senderAddress.hashCode);

  @override
  String toString() => 'FungibleTokenMetadata[tokenUri=$tokenUri, name=$name, description=$description, imageUri=$imageUri, imageCanonicalUri=$imageCanonicalUri, symbol=$symbol, decimals=$decimals, txId=$txId, senderAddress=$senderAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_uri'] = tokenUri;
      json[r'name'] = name;
      json[r'description'] = description;
      json[r'image_uri'] = imageUri;
      json[r'image_canonical_uri'] = imageCanonicalUri;
      json[r'symbol'] = symbol;
      json[r'decimals'] = decimals;
      json[r'tx_id'] = txId;
      json[r'sender_address'] = senderAddress;
    return json;
  }

  /// Returns a new [FungibleTokenMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FungibleTokenMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FungibleTokenMetadata(
        tokenUri: mapValueOfType<String>(json, r'token_uri'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        imageUri: mapValueOfType<String>(json, r'image_uri'),
        imageCanonicalUri: mapValueOfType<String>(json, r'image_canonical_uri'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: json[r'decimals'] == null
          ? null
          : num.parse(json[r'decimals'].toString()),
        txId: mapValueOfType<String>(json, r'tx_id'),
        senderAddress: mapValueOfType<String>(json, r'sender_address'),
      );
    }
    return null;
  }

  static List<FungibleTokenMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FungibleTokenMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FungibleTokenMetadata>[];

  static Map<String, FungibleTokenMetadata> mapFromJson(dynamic json) {
    final map = <String, FungibleTokenMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FungibleTokenMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FungibleTokenMetadata-objects as value to a dart map
  static Map<String, List<FungibleTokenMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FungibleTokenMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FungibleTokenMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

