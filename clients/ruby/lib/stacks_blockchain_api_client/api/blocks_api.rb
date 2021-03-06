=begin
#Stacks Blockchain API

#Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 

The version of the OpenAPI document: v3.0.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module StacksBlockchainApi
  class BlocksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get block by burnchain block hash
    # Retrieves block details of a specific block for a given burnchain block hash
    # @param burn_block_hash [String] Hash of the burnchain block
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_block_by_burn_block_hash(burn_block_hash, opts = {})
      data, _status_code, _headers = get_block_by_burn_block_hash_with_http_info(burn_block_hash, opts)
      data
    end

    # Get block by burnchain block hash
    # Retrieves block details of a specific block for a given burnchain block hash
    # @param burn_block_hash [String] Hash of the burnchain block
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_block_by_burn_block_hash_with_http_info(burn_block_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlocksApi.get_block_by_burn_block_hash ...'
      end
      # verify the required parameter 'burn_block_hash' is set
      if @api_client.config.client_side_validation && burn_block_hash.nil?
        fail ArgumentError, "Missing the required parameter 'burn_block_hash' when calling BlocksApi.get_block_by_burn_block_hash"
      end
      # resource path
      local_var_path = '/extended/v1/block/by_burn_block_hash/{burn_block_hash}'.sub('{' + 'burn_block_hash' + '}', CGI.escape(burn_block_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BlocksApi.get_block_by_burn_block_hash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlocksApi#get_block_by_burn_block_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get block by burnchain height
    # Retrieves block details of a specific block for a given burn chain height
    # @param burn_block_height [Float] Height of the burn chain block
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_block_by_burn_block_height(burn_block_height, opts = {})
      data, _status_code, _headers = get_block_by_burn_block_height_with_http_info(burn_block_height, opts)
      data
    end

    # Get block by burnchain height
    # Retrieves block details of a specific block for a given burn chain height
    # @param burn_block_height [Float] Height of the burn chain block
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_block_by_burn_block_height_with_http_info(burn_block_height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlocksApi.get_block_by_burn_block_height ...'
      end
      # verify the required parameter 'burn_block_height' is set
      if @api_client.config.client_side_validation && burn_block_height.nil?
        fail ArgumentError, "Missing the required parameter 'burn_block_height' when calling BlocksApi.get_block_by_burn_block_height"
      end
      # resource path
      local_var_path = '/extended/v1/block/by_burn_block_height/{burn_block_height}'.sub('{' + 'burn_block_height' + '}', CGI.escape(burn_block_height.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BlocksApi.get_block_by_burn_block_height",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlocksApi#get_block_by_burn_block_height\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get block by hash
    # Retrieves block details of a specific block for a given chain height
    # @param hash [String] Hash of the block
    # @param [Hash] opts the optional parameters
    # @return [Block]
    def get_block_by_hash(hash, opts = {})
      data, _status_code, _headers = get_block_by_hash_with_http_info(hash, opts)
      data
    end

    # Get block by hash
    # Retrieves block details of a specific block for a given chain height
    # @param hash [String] Hash of the block
    # @param [Hash] opts the optional parameters
    # @return [Array<(Block, Integer, Hash)>] Block data, response status code and response headers
    def get_block_by_hash_with_http_info(hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlocksApi.get_block_by_hash ...'
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling BlocksApi.get_block_by_hash"
      end
      # resource path
      local_var_path = '/extended/v1/block/{hash}'.sub('{' + 'hash' + '}', CGI.escape(hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Block'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BlocksApi.get_block_by_hash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlocksApi#get_block_by_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get block by height
    # Retrieves block details of a specific block at a given block height
    # @param height [Float] Height of the block
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_block_by_height(height, opts = {})
      data, _status_code, _headers = get_block_by_height_with_http_info(height, opts)
      data
    end

    # Get block by height
    # Retrieves block details of a specific block at a given block height
    # @param height [Float] Height of the block
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_block_by_height_with_http_info(height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlocksApi.get_block_by_height ...'
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling BlocksApi.get_block_by_height"
      end
      # resource path
      local_var_path = '/extended/v1/block/by_height/{height}'.sub('{' + 'height' + '}', CGI.escape(height.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BlocksApi.get_block_by_height",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlocksApi#get_block_by_height\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get recent blocks
    # Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit max number of blocks to fetch (default to 20)
    # @option opts [Integer] :offset index of first block to fetch
    # @return [BlockListResponse]
    def get_block_list(opts = {})
      data, _status_code, _headers = get_block_list_with_http_info(opts)
      data
    end

    # Get recent blocks
    # Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit max number of blocks to fetch
    # @option opts [Integer] :offset index of first block to fetch
    # @return [Array<(BlockListResponse, Integer, Hash)>] BlockListResponse data, response status code and response headers
    def get_block_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlocksApi.get_block_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BlocksApi.get_block_list, must be smaller than or equal to 200.'
      end

      # resource path
      local_var_path = '/extended/v1/block'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BlockListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BlocksApi.get_block_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlocksApi#get_block_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
