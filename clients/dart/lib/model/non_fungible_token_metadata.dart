//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class NonFungibleTokenMetadata {
  /// Returns a new [NonFungibleTokenMetadata] instance.
  NonFungibleTokenMetadata({
    @required this.tokenUri,
    @required this.name,
    @required this.description,
    @required this.imageUri,
    @required this.imageCanonicalUri,
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

  /// Tx id that deployed the contract
  String txId;

  /// principle that deployed the contract
  String senderAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NonFungibleTokenMetadata &&
     other.tokenUri == tokenUri &&
     other.name == name &&
     other.description == description &&
     other.imageUri == imageUri &&
     other.imageCanonicalUri == imageCanonicalUri &&
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
    (txId == null ? 0 : txId.hashCode) +
    (senderAddress == null ? 0 : senderAddress.hashCode);

  @override
  String toString() => 'NonFungibleTokenMetadata[tokenUri=$tokenUri, name=$name, description=$description, imageUri=$imageUri, imageCanonicalUri=$imageCanonicalUri, txId=$txId, senderAddress=$senderAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token_uri'] = tokenUri;
      json[r'name'] = name;
      json[r'description'] = description;
      json[r'image_uri'] = imageUri;
      json[r'image_canonical_uri'] = imageCanonicalUri;
      json[r'tx_id'] = txId;
      json[r'sender_address'] = senderAddress;
    return json;
  }

  /// Returns a new [NonFungibleTokenMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NonFungibleTokenMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NonFungibleTokenMetadata(
        tokenUri: mapValueOfType<String>(json, r'token_uri'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        imageUri: mapValueOfType<String>(json, r'image_uri'),
        imageCanonicalUri: mapValueOfType<String>(json, r'image_canonical_uri'),
        txId: mapValueOfType<String>(json, r'tx_id'),
        senderAddress: mapValueOfType<String>(json, r'sender_address'),
      );
    }
    return null;
  }

  static List<NonFungibleTokenMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NonFungibleTokenMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NonFungibleTokenMetadata>[];

  static Map<String, NonFungibleTokenMetadata> mapFromJson(dynamic json) {
    final map = <String, NonFungibleTokenMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NonFungibleTokenMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NonFungibleTokenMetadata-objects as value to a dart map
  static Map<String, List<NonFungibleTokenMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NonFungibleTokenMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NonFungibleTokenMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

