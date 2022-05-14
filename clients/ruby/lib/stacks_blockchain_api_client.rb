=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'stacks_blockchain_api_client/api_client'
require 'stacks_blockchain_api_client/api_error'
require 'stacks_blockchain_api_client/version'
require 'stacks_blockchain_api_client/configuration'

# Models
require 'stacks_blockchain_api_client/models/account_data_response'
require 'stacks_blockchain_api_client/models/address_assets_list_response'
require 'stacks_blockchain_api_client/models/address_balance_response'
require 'stacks_blockchain_api_client/models/address_balance_response_stx'
require 'stacks_blockchain_api_client/models/address_nft_list_response'
require 'stacks_blockchain_api_client/models/address_nft_list_response_value'
require 'stacks_blockchain_api_client/models/address_nonces'
require 'stacks_blockchain_api_client/models/address_stx_inbound_list_response'
require 'stacks_blockchain_api_client/models/address_token_offering_locked'
require 'stacks_blockchain_api_client/models/address_transaction_with_transfers'
require 'stacks_blockchain_api_client/models/address_transaction_with_transfers_ft_transfers'
require 'stacks_blockchain_api_client/models/address_transaction_with_transfers_nft_transfers'
require 'stacks_blockchain_api_client/models/address_transaction_with_transfers_stx_transfers'
require 'stacks_blockchain_api_client/models/address_transaction_with_transfers_value'
require 'stacks_blockchain_api_client/models/address_transactions_list_response'
require 'stacks_blockchain_api_client/models/address_transactions_with_transfers_list_response'
require 'stacks_blockchain_api_client/models/address_unlock_schedule'
require 'stacks_blockchain_api_client/models/block'
require 'stacks_blockchain_api_client/models/block_list_response'
require 'stacks_blockchain_api_client/models/bns_error'
require 'stacks_blockchain_api_client/models/bns_get_all_namespaces_response'
require 'stacks_blockchain_api_client/models/bns_get_name_info_response'
require 'stacks_blockchain_api_client/models/bns_get_name_price_response'
require 'stacks_blockchain_api_client/models/bns_get_namespace_price_response'
require 'stacks_blockchain_api_client/models/bns_names_own_by_address_response'
require 'stacks_blockchain_api_client/models/burnchain_reward'
require 'stacks_blockchain_api_client/models/burnchain_reward_list_response'
require 'stacks_blockchain_api_client/models/burnchain_reward_slot_holder'
require 'stacks_blockchain_api_client/models/burnchain_reward_slot_holder_list_response'
require 'stacks_blockchain_api_client/models/burnchain_rewards_total'
require 'stacks_blockchain_api_client/models/chain_tip'
require 'stacks_blockchain_api_client/models/contract_interface_response'
require 'stacks_blockchain_api_client/models/contract_list_response'
require 'stacks_blockchain_api_client/models/contract_source_response'
require 'stacks_blockchain_api_client/models/core_node_info_response'
require 'stacks_blockchain_api_client/models/core_node_pox_response'
require 'stacks_blockchain_api_client/models/fee_rate'
require 'stacks_blockchain_api_client/models/fee_rate_request'
require 'stacks_blockchain_api_client/models/fungible_token_metadata'
require 'stacks_blockchain_api_client/models/fungible_tokens_metadata_list'
require 'stacks_blockchain_api_client/models/get_raw_transaction_result'
require 'stacks_blockchain_api_client/models/get_stx_supply_legacy_format_response'
require 'stacks_blockchain_api_client/models/get_stx_supply_response'
require 'stacks_blockchain_api_client/models/inbound_stx_transfer'
require 'stacks_blockchain_api_client/models/inline_object'
require 'stacks_blockchain_api_client/models/inline_object1'
require 'stacks_blockchain_api_client/models/map_entry_response'
require 'stacks_blockchain_api_client/models/mempool_transaction_list_response'
require 'stacks_blockchain_api_client/models/microblock'
require 'stacks_blockchain_api_client/models/microblock_list_response'
require 'stacks_blockchain_api_client/models/network_block_times_response'
require 'stacks_blockchain_api_client/models/network_block_times_response_mainnet'
require 'stacks_blockchain_api_client/models/network_identifier'
require 'stacks_blockchain_api_client/models/nft_event'
require 'stacks_blockchain_api_client/models/non_fungible_token_history_event_list'
require 'stacks_blockchain_api_client/models/non_fungible_token_holdings_list'
require 'stacks_blockchain_api_client/models/non_fungible_token_metadata'
require 'stacks_blockchain_api_client/models/non_fungible_token_mint_list'
require 'stacks_blockchain_api_client/models/non_fungible_tokens_metadata_list'
require 'stacks_blockchain_api_client/models/other_transaction_identifier'
require 'stacks_blockchain_api_client/models/post_core_node_transactions_error'
require 'stacks_blockchain_api_client/models/read_only_function_args'
require 'stacks_blockchain_api_client/models/read_only_function_success_response'
require 'stacks_blockchain_api_client/models/rosetta_account'
require 'stacks_blockchain_api_client/models/rosetta_account_balance_request'
require 'stacks_blockchain_api_client/models/rosetta_account_balance_response'
require 'stacks_blockchain_api_client/models/rosetta_account_balance_response_coin_identifier'
require 'stacks_blockchain_api_client/models/rosetta_account_balance_response_metadata'
require 'stacks_blockchain_api_client/models/rosetta_account_identifier'
require 'stacks_blockchain_api_client/models/rosetta_amount'
require 'stacks_blockchain_api_client/models/rosetta_block'
require 'stacks_blockchain_api_client/models/rosetta_block_metadata'
require 'stacks_blockchain_api_client/models/rosetta_block_request'
require 'stacks_blockchain_api_client/models/rosetta_block_response'
require 'stacks_blockchain_api_client/models/rosetta_block_transaction_request'
require 'stacks_blockchain_api_client/models/rosetta_block_transaction_response'
require 'stacks_blockchain_api_client/models/rosetta_coin'
require 'stacks_blockchain_api_client/models/rosetta_coin_change'
require 'stacks_blockchain_api_client/models/rosetta_construction_combine_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_combine_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_derive_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_derive_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_hash_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_hash_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_metadata_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_metadata_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_metadata_response_metadata'
require 'stacks_blockchain_api_client/models/rosetta_construction_parse_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_parse_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_payload_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_payloads_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_preprocess_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_preprocess_response'
require 'stacks_blockchain_api_client/models/rosetta_construction_submit_request'
require 'stacks_blockchain_api_client/models/rosetta_construction_submit_response'
require 'stacks_blockchain_api_client/models/rosetta_currency'
require 'stacks_blockchain_api_client/models/rosetta_error'
require 'stacks_blockchain_api_client/models/rosetta_error_details'
require 'stacks_blockchain_api_client/models/rosetta_error_no_details'
require 'stacks_blockchain_api_client/models/rosetta_max_fee_amount'
require 'stacks_blockchain_api_client/models/rosetta_mempool_request'
require 'stacks_blockchain_api_client/models/rosetta_mempool_response'
require 'stacks_blockchain_api_client/models/rosetta_mempool_transaction_request'
require 'stacks_blockchain_api_client/models/rosetta_mempool_transaction_response'
require 'stacks_blockchain_api_client/models/rosetta_network_list_response'
require 'stacks_blockchain_api_client/models/rosetta_network_list_response_sub_network_identifier'
require 'stacks_blockchain_api_client/models/rosetta_network_list_response_sub_network_identifier_metadata'
require 'stacks_blockchain_api_client/models/rosetta_network_options_response'
require 'stacks_blockchain_api_client/models/rosetta_network_options_response_allow'
require 'stacks_blockchain_api_client/models/rosetta_network_options_response_version'
require 'stacks_blockchain_api_client/models/rosetta_operation'
require 'stacks_blockchain_api_client/models/rosetta_operation_identifier'
require 'stacks_blockchain_api_client/models/rosetta_operation_status'
require 'stacks_blockchain_api_client/models/rosetta_options'
require 'stacks_blockchain_api_client/models/rosetta_options_request'
require 'stacks_blockchain_api_client/models/rosetta_parent_block_identifier'
require 'stacks_blockchain_api_client/models/rosetta_public_key'
require 'stacks_blockchain_api_client/models/rosetta_related_operation'
require 'stacks_blockchain_api_client/models/rosetta_signature'
require 'stacks_blockchain_api_client/models/rosetta_status_request'
require 'stacks_blockchain_api_client/models/rosetta_sub_account'
require 'stacks_blockchain_api_client/models/rosetta_transaction'
require 'stacks_blockchain_api_client/models/rosetta_transaction_metadata'
require 'stacks_blockchain_api_client/models/run_faucet_response'
require 'stacks_blockchain_api_client/models/server_status_response'
require 'stacks_blockchain_api_client/models/signing_payload'
require 'stacks_blockchain_api_client/models/smart_contract'
require 'stacks_blockchain_api_client/models/transaction_identifier'
require 'stacks_blockchain_api_client/models/transaction_results'
require 'stacks_blockchain_api_client/models/unanchored_transaction_list_response'

# APIs
require 'stacks_blockchain_api_client/api/accounts_api'
require 'stacks_blockchain_api_client/api/blocks_api'
require 'stacks_blockchain_api_client/api/faucets_api'
require 'stacks_blockchain_api_client/api/fees_api'
require 'stacks_blockchain_api_client/api/fungible_tokens_api'
require 'stacks_blockchain_api_client/api/info_api'
require 'stacks_blockchain_api_client/api/microblocks_api'
require 'stacks_blockchain_api_client/api/names_api'
require 'stacks_blockchain_api_client/api/non_fungible_tokens_api'
require 'stacks_blockchain_api_client/api/rosetta_api'
require 'stacks_blockchain_api_client/api/search_api'
require 'stacks_blockchain_api_client/api/smart_contracts_api'
require 'stacks_blockchain_api_client/api/stacking_rewards_api'
require 'stacks_blockchain_api_client/api/transactions_api'

module StacksBlockchainApi
  class << self
    # Customize default settings for the SDK using block.
    #   StacksBlockchainApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
