=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module StacksBlockchainApi
  class FaucetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add testnet BTC tokens to address
    # Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    # @param address [String] A valid testnet BTC address
    # @param [Hash] opts the optional parameters
    # @option opts [InlineObject1] :inline_object1 
    # @return [Object]
    def run_faucet_btc(address, opts = {})
      data, _status_code, _headers = run_faucet_btc_with_http_info(address, opts)
      data
    end

    # Add testnet BTC tokens to address
    # Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    # @param address [String] A valid testnet BTC address
    # @param [Hash] opts the optional parameters
    # @option opts [InlineObject1] :inline_object1 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def run_faucet_btc_with_http_info(address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaucetsApi.run_faucet_btc ...'
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling FaucetsApi.run_faucet_btc"
      end
      # resource path
      local_var_path = '/extended/v1/faucets/btc'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'address'] = address

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'inline_object1'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"FaucetsApi.run_faucet_btc",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaucetsApi#run_faucet_btc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get STX testnet tokens
    # Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with `ST`. If the `stacking` parameter is set to `true`, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain=testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    # @param address [String] A valid testnet STX address
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :stacking Request the amount of STX tokens needed for individual address stacking (default to false)
    # @option opts [InlineObject] :inline_object 
    # @return [RunFaucetResponse]
    def run_faucet_stx(address, opts = {})
      data, _status_code, _headers = run_faucet_stx_with_http_info(address, opts)
      data
    end

    # Get STX testnet tokens
    # Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with &#x60;ST&#x60;. If the &#x60;stacking&#x60; parameter is set to &#x60;true&#x60;, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain&#x3D;testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
    # @param address [String] A valid testnet STX address
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :stacking Request the amount of STX tokens needed for individual address stacking
    # @option opts [InlineObject] :inline_object 
    # @return [Array<(RunFaucetResponse, Integer, Hash)>] RunFaucetResponse data, response status code and response headers
    def run_faucet_stx_with_http_info(address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaucetsApi.run_faucet_stx ...'
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling FaucetsApi.run_faucet_stx"
      end
      # resource path
      local_var_path = '/extended/v1/faucets/stx'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'address'] = address
      query_params[:'stacking'] = opts[:'stacking'] if !opts[:'stacking'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'inline_object'])

      # return_type
      return_type = opts[:debug_return_type] || 'RunFaucetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"FaucetsApi.run_faucet_stx",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaucetsApi#run_faucet_stx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end