=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for StacksBlockchainApi::SearchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @api_instance = StacksBlockchainApi::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@api_instance).to be_instance_of(StacksBlockchainApi::SearchApi)
    end
  end

  # unit tests for search_by_id
  # Search
  # Search blocks, transactions, contracts, or accounts by hash/ID
  # @param id The hex hash string for a block or transaction, account address, or contract address
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_metadata This includes the detailed data for purticular hash in the response
  # @return [AnyOfobjectobject]
  describe 'search_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
