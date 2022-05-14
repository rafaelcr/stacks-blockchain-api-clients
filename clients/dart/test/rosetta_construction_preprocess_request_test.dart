//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:stacks_blockchain_api_client/api.dart';
import 'package:test/test.dart';

// tests for RosettaConstructionPreprocessRequest
void main() {
  final instance = RosettaConstructionPreprocessRequest();

  group('test RosettaConstructionPreprocessRequest', () {
    // Object networkIdentifier
    test('to test the property `networkIdentifier`', () async {
      // TODO
    });

    // List<Object> operations (default value: const [])
    test('to test the property `operations`', () async {
      // TODO
    });

    // Object metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // List<RosettaMaxFeeAmount> maxFee (default value: const [])
    test('to test the property `maxFee`', () async {
      // TODO
    });

    //  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided).
    // int suggestedFeeMultiplier
    test('to test the property `suggestedFeeMultiplier`', () async {
      // TODO
    });


  });

}
