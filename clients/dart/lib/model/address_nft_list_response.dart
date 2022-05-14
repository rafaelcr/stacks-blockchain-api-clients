//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class AddressNftListResponse {
  /// Returns a new [AddressNftListResponse] instance.
  AddressNftListResponse({
    @required this.limit,
    @required this.offset,
    @required this.total,
    this.nftEvents = const [],
  });

  int limit;

  int offset;

  int total;

  List<NftEvent> nftEvents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressNftListResponse &&
     other.limit == limit &&
     other.offset == offset &&
     other.total == total &&
     other.nftEvents == nftEvents;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (total == null ? 0 : total.hashCode) +
    (nftEvents == null ? 0 : nftEvents.hashCode);

  @override
  String toString() => 'AddressNftListResponse[limit=$limit, offset=$offset, total=$total, nftEvents=$nftEvents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = limit;
      json[r'offset'] = offset;
      json[r'total'] = total;
      json[r'nft_events'] = nftEvents;
    return json;
  }

  /// Returns a new [AddressNftListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressNftListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AddressNftListResponse(
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        total: mapValueOfType<int>(json, r'total'),
        nftEvents: NftEvent.listFromJson(json[r'nft_events']),
      );
    }
    return null;
  }

  static List<AddressNftListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddressNftListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddressNftListResponse>[];

  static Map<String, AddressNftListResponse> mapFromJson(dynamic json) {
    final map = <String, AddressNftListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddressNftListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddressNftListResponse-objects as value to a dart map
  static Map<String, List<AddressNftListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddressNftListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddressNftListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

