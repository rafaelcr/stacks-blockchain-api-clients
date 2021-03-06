=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for StacksBlockchainApi::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = StacksBlockchainApi::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(StacksBlockchainApi::AccountsApi)
    end
  end

  # unit tests for get_account_assets
  # Get account assets
  # Retrieves a list of all assets events associated with an account or a Contract Identifier. This includes Transfers, Mints.
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit max number of account assets to fetch
  # @option opts [Integer] :offset index of first account assets to fetch
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state at that point in time, rather than the current block.
  # @return [AddressAssetsListResponse]
  describe 'get_account_assets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_balance
  # Get account balances
  # Retrieves total account balance information for a given Address or Contract Identifier. This includes the balances of  STX Tokens, Fungible Tokens and Non-Fungible Tokens for the account.
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [AddressBalanceResponse]
  describe 'get_account_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_inbound
  # Get inbound STX transfers
  # Retrieves a list of STX transfers with memos to the given principal. This includes regular transfers from a stx-transfer transaction type, and transfers from contract-call transactions a the &#x60;send-many-memo&#x60; bulk sending contract. 
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit number of items to return
  # @option opts [Integer] :offset number of items to skip
  # @option opts [Float] :height Filter for transfers only at this given block height
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [AddressStxInboundListResponse]
  describe 'get_account_inbound test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_info
  # Get account info
  # Retrieves the account data for a given Account or a Contract Identifier  Where balance is the hex encoding of a unsigned 128-bit integer (big-endian), nonce is an unsigned 64-bit integer, and the proofs are provided as hex strings.  For non-existent accounts, this does not return a 404 error, rather it returns an object with balance and nonce of 0. 
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :proof Returns object without the proof field if set to 0
  # @option opts [String] :tip The Stacks chain tip to query from
  # @return [AccountDataResponse]
  describe 'get_account_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_nft
  # Get nft events
  # **NOTE:** This endpoint is deprecated in favor of [Non-Fungible Token holdings](#operation/get_nft_holdings).  Retrieves a list of all nfts owned by an address, contains the clarity value of the identifier of the nft. 
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit number of items to return
  # @option opts [Integer] :offset number of items to skip
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [AddressNftListResponse]
  describe 'get_account_nft test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_nonces
  # Get the latest nonce used by an account
  # Retrieves the latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions.
  # @param principal Stacks address (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :block_height Optionally get the nonce at a given block height
  # @option opts [String] :block_hash Optionally get the nonce at a given block hash
  # @return [AddressNonces]
  describe 'get_account_nonces test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_stx_balance
  # Get account STX balance
  # Retrieves STX token balance for a given Address or Contract Identifier.
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [Object]
  describe 'get_account_stx_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_transactions
  # Get account transactions
  # Retrieves a list of all Transactions for a given Address or Contract Identifier. More information on Transaction types can be found [here](https://docs.stacks.co/understand-stacks/transactions#types).  If you need to actively monitor new transactions for an address or contract id, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit max number of account transactions to fetch
  # @option opts [Integer] :offset index of first account transaction to fetch
  # @option opts [Float] :height Filter for transactions only at this given block height
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [AddressTransactionsListResponse]
  describe 'get_account_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_transactions_with_transfers
  # Get account transactions including STX transfers for each transaction.
  # Retrieve all transactions for an account or contract identifier including STX transfers for each transaction.
  # @param principal Stacks address or a Contract identifier (e.g. &#x60;SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0.get-info&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit max number of account transactions to fetch
  # @option opts [Integer] :offset index of first account transaction to fetch
  # @option opts [Float] :height Filter for transactions only at this given block height
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @option opts [String] :until_block returned data representing the state up until that point in time, rather than the current block.
  # @return [AddressTransactionsWithTransfersListResponse]
  describe 'get_account_transactions_with_transfers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_single_transaction_with_transfers
  # Get account transaction information for specific transaction
  # Retrieves transaction details for a given Transcation Id &#x60;tx_id&#x60;, for a given account or contract Identifier.
  # @param principal Stacks address or a contract identifier
  # @param tx_id Transaction id
  # @param [Hash] opts the optional parameters
  # @return [AddressTransactionWithTransfers]
  describe 'get_single_transaction_with_transfers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
