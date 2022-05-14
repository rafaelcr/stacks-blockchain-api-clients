//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of stacks_blockchain_api_client.api;

class ContractInterfaceResponse {
  /// Returns a new [ContractInterfaceResponse] instance.
  ContractInterfaceResponse({
    this.functions = const [],
    this.variables = const [],
    this.maps = const [],
    this.fungibleTokens = const [],
    this.nonFungibleTokens = const [],
  });

  /// List of defined methods
  List<Object> functions;

  /// List of defined variables
  List<Object> variables;

  /// List of defined data-maps
  List<Object> maps;

  /// List of fungible tokens in the contract
  List<Object> fungibleTokens;

  /// List of non-fungible tokens in the contract
  List<Object> nonFungibleTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContractInterfaceResponse &&
     other.functions == functions &&
     other.variables == variables &&
     other.maps == maps &&
     other.fungibleTokens == fungibleTokens &&
     other.nonFungibleTokens == nonFungibleTokens;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (functions == null ? 0 : functions.hashCode) +
    (variables == null ? 0 : variables.hashCode) +
    (maps == null ? 0 : maps.hashCode) +
    (fungibleTokens == null ? 0 : fungibleTokens.hashCode) +
    (nonFungibleTokens == null ? 0 : nonFungibleTokens.hashCode);

  @override
  String toString() => 'ContractInterfaceResponse[functions=$functions, variables=$variables, maps=$maps, fungibleTokens=$fungibleTokens, nonFungibleTokens=$nonFungibleTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'functions'] = functions;
      json[r'variables'] = variables;
      json[r'maps'] = maps;
      json[r'fungible_tokens'] = fungibleTokens;
      json[r'non_fungible_tokens'] = nonFungibleTokens;
    return json;
  }

  /// Returns a new [ContractInterfaceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContractInterfaceResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ContractInterfaceResponse(
        functions: Object.listFromJson(json[r'functions']),
        variables: Object.listFromJson(json[r'variables']),
        maps: Object.listFromJson(json[r'maps']),
        fungibleTokens: Object.listFromJson(json[r'fungible_tokens']),
        nonFungibleTokens: Object.listFromJson(json[r'non_fungible_tokens']),
      );
    }
    return null;
  }

  static List<ContractInterfaceResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ContractInterfaceResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ContractInterfaceResponse>[];

  static Map<String, ContractInterfaceResponse> mapFromJson(dynamic json) {
    final map = <String, ContractInterfaceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ContractInterfaceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContractInterfaceResponse-objects as value to a dart map
  static Map<String, List<ContractInterfaceResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContractInterfaceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ContractInterfaceResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

