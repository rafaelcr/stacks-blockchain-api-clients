//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library stacks_blockchain_api_client.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/accounts_api.dart';
part 'api/blocks_api.dart';
part 'api/faucets_api.dart';
part 'api/fees_api.dart';
part 'api/fungible_tokens_api.dart';
part 'api/info_api.dart';
part 'api/microblocks_api.dart';
part 'api/names_api.dart';
part 'api/non_fungible_tokens_api.dart';
part 'api/rosetta_api.dart';
part 'api/search_api.dart';
part 'api/smart_contracts_api.dart';
part 'api/stacking_rewards_api.dart';
part 'api/transactions_api.dart';

part 'model/account_data_response.dart';
part 'model/address_assets_list_response.dart';
part 'model/address_balance_response.dart';
part 'model/address_balance_response_stx.dart';
part 'model/address_nft_list_response.dart';
part 'model/address_nft_list_response_value.dart';
part 'model/address_nonces.dart';
part 'model/address_stx_inbound_list_response.dart';
part 'model/address_token_offering_locked.dart';
part 'model/address_transaction_with_transfers.dart';
part 'model/address_transaction_with_transfers_ft_transfers.dart';
part 'model/address_transaction_with_transfers_nft_transfers.dart';
part 'model/address_transaction_with_transfers_stx_transfers.dart';
part 'model/address_transaction_with_transfers_value.dart';
part 'model/address_transactions_list_response.dart';
part 'model/address_transactions_with_transfers_list_response.dart';
part 'model/address_unlock_schedule.dart';
part 'model/block.dart';
part 'model/block_list_response.dart';
part 'model/bns_error.dart';
part 'model/bns_get_all_namespaces_response.dart';
part 'model/bns_get_name_info_response.dart';
part 'model/bns_get_name_price_response.dart';
part 'model/bns_get_namespace_price_response.dart';
part 'model/bns_names_own_by_address_response.dart';
part 'model/burnchain_reward.dart';
part 'model/burnchain_reward_list_response.dart';
part 'model/burnchain_reward_slot_holder.dart';
part 'model/burnchain_reward_slot_holder_list_response.dart';
part 'model/burnchain_rewards_total.dart';
part 'model/chain_tip.dart';
part 'model/contract_interface_response.dart';
part 'model/contract_list_response.dart';
part 'model/contract_source_response.dart';
part 'model/core_node_info_response.dart';
part 'model/core_node_pox_response.dart';
part 'model/fee_rate.dart';
part 'model/fee_rate_request.dart';
part 'model/fungible_token_metadata.dart';
part 'model/fungible_tokens_metadata_list.dart';
part 'model/get_raw_transaction_result.dart';
part 'model/get_stx_supply_legacy_format_response.dart';
part 'model/get_stx_supply_response.dart';
part 'model/inbound_stx_transfer.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/map_entry_response.dart';
part 'model/mempool_transaction_list_response.dart';
part 'model/microblock.dart';
part 'model/microblock_list_response.dart';
part 'model/network_block_times_response.dart';
part 'model/network_block_times_response_mainnet.dart';
part 'model/network_identifier.dart';
part 'model/nft_event.dart';
part 'model/non_fungible_token_history_event_list.dart';
part 'model/non_fungible_token_holdings_list.dart';
part 'model/non_fungible_token_metadata.dart';
part 'model/non_fungible_token_mint_list.dart';
part 'model/non_fungible_tokens_metadata_list.dart';
part 'model/other_transaction_identifier.dart';
part 'model/post_core_node_transactions_error.dart';
part 'model/read_only_function_args.dart';
part 'model/read_only_function_success_response.dart';
part 'model/rosetta_account.dart';
part 'model/rosetta_account_balance_request.dart';
part 'model/rosetta_account_balance_response.dart';
part 'model/rosetta_account_balance_response_coin_identifier.dart';
part 'model/rosetta_account_balance_response_metadata.dart';
part 'model/rosetta_account_identifier.dart';
part 'model/rosetta_amount.dart';
part 'model/rosetta_block.dart';
part 'model/rosetta_block_metadata.dart';
part 'model/rosetta_block_request.dart';
part 'model/rosetta_block_response.dart';
part 'model/rosetta_block_transaction_request.dart';
part 'model/rosetta_block_transaction_response.dart';
part 'model/rosetta_coin.dart';
part 'model/rosetta_coin_change.dart';
part 'model/rosetta_construction_combine_request.dart';
part 'model/rosetta_construction_combine_response.dart';
part 'model/rosetta_construction_derive_request.dart';
part 'model/rosetta_construction_derive_response.dart';
part 'model/rosetta_construction_hash_request.dart';
part 'model/rosetta_construction_hash_response.dart';
part 'model/rosetta_construction_metadata_request.dart';
part 'model/rosetta_construction_metadata_response.dart';
part 'model/rosetta_construction_metadata_response_metadata.dart';
part 'model/rosetta_construction_parse_request.dart';
part 'model/rosetta_construction_parse_response.dart';
part 'model/rosetta_construction_payload_response.dart';
part 'model/rosetta_construction_payloads_request.dart';
part 'model/rosetta_construction_preprocess_request.dart';
part 'model/rosetta_construction_preprocess_response.dart';
part 'model/rosetta_construction_submit_request.dart';
part 'model/rosetta_construction_submit_response.dart';
part 'model/rosetta_currency.dart';
part 'model/rosetta_error.dart';
part 'model/rosetta_error_details.dart';
part 'model/rosetta_error_no_details.dart';
part 'model/rosetta_max_fee_amount.dart';
part 'model/rosetta_mempool_request.dart';
part 'model/rosetta_mempool_response.dart';
part 'model/rosetta_mempool_transaction_request.dart';
part 'model/rosetta_mempool_transaction_response.dart';
part 'model/rosetta_network_list_response.dart';
part 'model/rosetta_network_list_response_sub_network_identifier.dart';
part 'model/rosetta_network_list_response_sub_network_identifier_metadata.dart';
part 'model/rosetta_network_options_response.dart';
part 'model/rosetta_network_options_response_allow.dart';
part 'model/rosetta_network_options_response_version.dart';
part 'model/rosetta_operation.dart';
part 'model/rosetta_operation_identifier.dart';
part 'model/rosetta_operation_status.dart';
part 'model/rosetta_options.dart';
part 'model/rosetta_options_request.dart';
part 'model/rosetta_parent_block_identifier.dart';
part 'model/rosetta_public_key.dart';
part 'model/rosetta_related_operation.dart';
part 'model/rosetta_signature.dart';
part 'model/rosetta_status_request.dart';
part 'model/rosetta_sub_account.dart';
part 'model/rosetta_transaction.dart';
part 'model/rosetta_transaction_metadata.dart';
part 'model/run_faucet_response.dart';
part 'model/server_status_response.dart';
part 'model/signing_payload.dart';
part 'model/smart_contract.dart';
part 'model/transaction_identifier.dart';
part 'model/transaction_results.dart';
part 'model/unanchored_transaction_list_response.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
