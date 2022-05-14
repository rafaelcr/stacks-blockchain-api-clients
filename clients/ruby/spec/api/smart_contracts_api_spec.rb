=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for StacksBlockchainApi::SmartContractsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SmartContractsApi' do
  before do
    # run before each test
    @api_instance = StacksBlockchainApi::SmartContractsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SmartContractsApi' do
    it 'should create an instance of SmartContractsApi' do
      expect(@api_instance).to be_instance_of(StacksBlockchainApi::SmartContractsApi)
    end
  end

  # unit tests for call_read_only_function
  # Call read-only function
  # Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 
  # @param contract_address Stacks address
  # @param contract_name Contract name
  # @param function_name Function name
  # @param read_only_function_args 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tip The Stacks chain tip to query from
  # @return [ReadOnlyFunctionSuccessResponse]
  describe 'call_read_only_function test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_by_id
  # Get contract info
  # Retrieves details of a contract with a given &#x60;contract_id&#x60;
  # @param contract_id Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @return [Object]
  describe 'get_contract_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_data_map_entry
  # Get specific data-map inside a contract
  # Attempt to fetch data from a contract data map. The contract is identified with Stacks Address &#x60;contract_address&#x60; and Contract Name &#x60;contract_address&#x60; in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, &#x60;data&#x60; is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 
  # @param contract_address Stacks address
  # @param contract_name Contract name
  # @param map_name Map name
  # @param key Hex string serialization of the lookup key (which should be a Clarity value)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :proof Returns object without the proof field when set to 0
  # @option opts [String] :tip The Stacks chain tip to query from
  # @return [MapEntryResponse]
  describe 'get_contract_data_map_entry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_events_by_id
  # Get contract events
  # Retrieves a list of events that have been triggered by a given &#x60;contract_id&#x60;
  # @param contract_id Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit max number of contract events to fetch
  # @option opts [Integer] :offset index of first contract event to fetch
  # @option opts [Boolean] :unanchored Include transaction data from unanchored (i.e. unconfirmed) microblocks
  # @return [AnyOfobjectobjectobjectobjectobject]
  describe 'get_contract_events_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_interface
  # Get contract interface
  # Retrieves a contract interface with a given &#x60;contract_address&#x60; and &#x60;contract name&#x60;
  # @param contract_address Stacks address
  # @param contract_name Contract name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tip The Stacks chain tip to query from
  # @return [ContractInterfaceResponse]
  describe 'get_contract_interface test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_source
  # Get contract source
  # Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data
  # @param contract_address Stacks address
  # @param contract_name Contract name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :proof Returns object without the proof field if set to 0
  # @option opts [String] :tip The Stacks chain tip to query from
  # @return [ContractSourceResponse]
  describe 'get_contract_source test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contracts_by_trait
  # Get contracts by trait
  # Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens
  # @param trait_abi JSON abi of the trait.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit max number of contracts fetch
  # @option opts [Integer] :offset index of first contract event to fetch
  # @return [ContractListResponse]
  describe 'get_contracts_by_trait test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end