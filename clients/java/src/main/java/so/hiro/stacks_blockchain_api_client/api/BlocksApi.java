/*
 * Stacks Blockchain API
 * Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a> 
 *
 * The version of the OpenAPI document: v3.0.3
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package so.hiro.stacks_blockchain_api_client.api;

import so.hiro.stacks_blockchain_api_client.ApiCallback;
import so.hiro.stacks_blockchain_api_client.ApiClient;
import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.ApiResponse;
import so.hiro.stacks_blockchain_api_client.Configuration;
import so.hiro.stacks_blockchain_api_client.Pair;
import so.hiro.stacks_blockchain_api_client.ProgressRequestBody;
import so.hiro.stacks_blockchain_api_client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import java.math.BigDecimal;
import so.hiro.stacks_blockchain_api_client.model.Block;
import so.hiro.stacks_blockchain_api_client.model.BlockListResponse;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BlocksApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public BlocksApi() {
        this(Configuration.getDefaultApiClient());
    }

    public BlocksApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for getBlockByBurnBlockHash
     * @param burnBlockHash Hash of the burnchain block (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByBurnBlockHashCall(String burnBlockHash, final ApiCallback _callback) throws ApiException {
        String basePath = null;

        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/extended/v1/block/by_burn_block_hash/{burn_block_hash}"
            .replaceAll("\\{" + "burn_block_hash" + "\\}", localVarApiClient.escapeString(burnBlockHash.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getBlockByBurnBlockHashValidateBeforeCall(String burnBlockHash, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'burnBlockHash' is set
        if (burnBlockHash == null) {
            throw new ApiException("Missing the required parameter 'burnBlockHash' when calling getBlockByBurnBlockHash(Async)");
        }
        

        okhttp3.Call localVarCall = getBlockByBurnBlockHashCall(burnBlockHash, _callback);
        return localVarCall;

    }

    /**
     * Get block by burnchain block hash
     * Retrieves block details of a specific block for a given burnchain block hash
     * @param burnBlockHash Hash of the burnchain block (required)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public Object getBlockByBurnBlockHash(String burnBlockHash) throws ApiException {
        ApiResponse<Object> localVarResp = getBlockByBurnBlockHashWithHttpInfo(burnBlockHash);
        return localVarResp.getData();
    }

    /**
     * Get block by burnchain block hash
     * Retrieves block details of a specific block for a given burnchain block hash
     * @param burnBlockHash Hash of the burnchain block (required)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Object> getBlockByBurnBlockHashWithHttpInfo(String burnBlockHash) throws ApiException {
        okhttp3.Call localVarCall = getBlockByBurnBlockHashValidateBeforeCall(burnBlockHash, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get block by burnchain block hash (asynchronously)
     * Retrieves block details of a specific block for a given burnchain block hash
     * @param burnBlockHash Hash of the burnchain block (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByBurnBlockHashAsync(String burnBlockHash, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = getBlockByBurnBlockHashValidateBeforeCall(burnBlockHash, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getBlockByBurnBlockHeight
     * @param burnBlockHeight Height of the burn chain block (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByBurnBlockHeightCall(BigDecimal burnBlockHeight, final ApiCallback _callback) throws ApiException {
        String basePath = null;

        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/extended/v1/block/by_burn_block_height/{burn_block_height}"
            .replaceAll("\\{" + "burn_block_height" + "\\}", localVarApiClient.escapeString(burnBlockHeight.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getBlockByBurnBlockHeightValidateBeforeCall(BigDecimal burnBlockHeight, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'burnBlockHeight' is set
        if (burnBlockHeight == null) {
            throw new ApiException("Missing the required parameter 'burnBlockHeight' when calling getBlockByBurnBlockHeight(Async)");
        }
        

        okhttp3.Call localVarCall = getBlockByBurnBlockHeightCall(burnBlockHeight, _callback);
        return localVarCall;

    }

    /**
     * Get block by burnchain height
     * Retrieves block details of a specific block for a given burn chain height
     * @param burnBlockHeight Height of the burn chain block (required)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public Object getBlockByBurnBlockHeight(BigDecimal burnBlockHeight) throws ApiException {
        ApiResponse<Object> localVarResp = getBlockByBurnBlockHeightWithHttpInfo(burnBlockHeight);
        return localVarResp.getData();
    }

    /**
     * Get block by burnchain height
     * Retrieves block details of a specific block for a given burn chain height
     * @param burnBlockHeight Height of the burn chain block (required)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Object> getBlockByBurnBlockHeightWithHttpInfo(BigDecimal burnBlockHeight) throws ApiException {
        okhttp3.Call localVarCall = getBlockByBurnBlockHeightValidateBeforeCall(burnBlockHeight, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get block by burnchain height (asynchronously)
     * Retrieves block details of a specific block for a given burn chain height
     * @param burnBlockHeight Height of the burn chain block (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByBurnBlockHeightAsync(BigDecimal burnBlockHeight, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = getBlockByBurnBlockHeightValidateBeforeCall(burnBlockHeight, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getBlockByHash
     * @param hash Hash of the block (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given ID </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByHashCall(String hash, final ApiCallback _callback) throws ApiException {
        String basePath = null;

        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/extended/v1/block/{hash}"
            .replaceAll("\\{" + "hash" + "\\}", localVarApiClient.escapeString(hash.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getBlockByHashValidateBeforeCall(String hash, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'hash' is set
        if (hash == null) {
            throw new ApiException("Missing the required parameter 'hash' when calling getBlockByHash(Async)");
        }
        

        okhttp3.Call localVarCall = getBlockByHashCall(hash, _callback);
        return localVarCall;

    }

    /**
     * Get block by hash
     * Retrieves block details of a specific block for a given chain height
     * @param hash Hash of the block (required)
     * @return Block
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given ID </td><td>  -  </td></tr>
     </table>
     */
    public Block getBlockByHash(String hash) throws ApiException {
        ApiResponse<Block> localVarResp = getBlockByHashWithHttpInfo(hash);
        return localVarResp.getData();
    }

    /**
     * Get block by hash
     * Retrieves block details of a specific block for a given chain height
     * @param hash Hash of the block (required)
     * @return ApiResponse&lt;Block&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given ID </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Block> getBlockByHashWithHttpInfo(String hash) throws ApiException {
        okhttp3.Call localVarCall = getBlockByHashValidateBeforeCall(hash, null);
        Type localVarReturnType = new TypeToken<Block>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get block by hash (asynchronously)
     * Retrieves block details of a specific block for a given chain height
     * @param hash Hash of the block (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given ID </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByHashAsync(String hash, final ApiCallback<Block> _callback) throws ApiException {

        okhttp3.Call localVarCall = getBlockByHashValidateBeforeCall(hash, _callback);
        Type localVarReturnType = new TypeToken<Block>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getBlockByHeight
     * @param height Height of the block (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByHeightCall(BigDecimal height, final ApiCallback _callback) throws ApiException {
        String basePath = null;

        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/extended/v1/block/by_height/{height}"
            .replaceAll("\\{" + "height" + "\\}", localVarApiClient.escapeString(height.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getBlockByHeightValidateBeforeCall(BigDecimal height, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'height' is set
        if (height == null) {
            throw new ApiException("Missing the required parameter 'height' when calling getBlockByHeight(Async)");
        }
        

        okhttp3.Call localVarCall = getBlockByHeightCall(height, _callback);
        return localVarCall;

    }

    /**
     * Get block by height
     * Retrieves block details of a specific block at a given block height
     * @param height Height of the block (required)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public Object getBlockByHeight(BigDecimal height) throws ApiException {
        ApiResponse<Object> localVarResp = getBlockByHeightWithHttpInfo(height);
        return localVarResp.getData();
    }

    /**
     * Get block by height
     * Retrieves block details of a specific block at a given block height
     * @param height Height of the block (required)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Object> getBlockByHeightWithHttpInfo(BigDecimal height) throws ApiException {
        okhttp3.Call localVarCall = getBlockByHeightValidateBeforeCall(height, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get block by height (asynchronously)
     * Retrieves block details of a specific block at a given block height
     * @param height Height of the block (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Block </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find block with given height </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockByHeightAsync(BigDecimal height, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = getBlockByHeightValidateBeforeCall(height, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getBlockList
     * @param limit max number of blocks to fetch (optional, default to 20)
     * @param offset index of first block to fetch (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of blocks </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockListCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
        String basePath = null;

        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/extended/v1/block";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (limit != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("limit", limit));
        }

        if (offset != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("offset", offset));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getBlockListValidateBeforeCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getBlockListCall(limit, offset, _callback);
        return localVarCall;

    }

    /**
     * Get recent blocks
     * Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit max number of blocks to fetch (optional, default to 20)
     * @param offset index of first block to fetch (optional)
     * @return BlockListResponse
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of blocks </td><td>  -  </td></tr>
     </table>
     */
    public BlockListResponse getBlockList(Integer limit, Integer offset) throws ApiException {
        ApiResponse<BlockListResponse> localVarResp = getBlockListWithHttpInfo(limit, offset);
        return localVarResp.getData();
    }

    /**
     * Get recent blocks
     * Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit max number of blocks to fetch (optional, default to 20)
     * @param offset index of first block to fetch (optional)
     * @return ApiResponse&lt;BlockListResponse&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of blocks </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<BlockListResponse> getBlockListWithHttpInfo(Integer limit, Integer offset) throws ApiException {
        okhttp3.Call localVarCall = getBlockListValidateBeforeCall(limit, offset, null);
        Type localVarReturnType = new TypeToken<BlockListResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get recent blocks (asynchronously)
     * Retrieves a list of recently mined blocks  If you need to actively monitor new blocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit max number of blocks to fetch (optional, default to 20)
     * @param offset index of first block to fetch (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of blocks </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getBlockListAsync(Integer limit, Integer offset, final ApiCallback<BlockListResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = getBlockListValidateBeforeCall(limit, offset, _callback);
        Type localVarReturnType = new TypeToken<BlockListResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}