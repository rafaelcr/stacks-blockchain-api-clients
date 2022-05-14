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


import so.hiro.stacks_blockchain_api_client.model.Microblock;
import so.hiro.stacks_blockchain_api_client.model.MicroblockListResponse;
import so.hiro.stacks_blockchain_api_client.model.UnanchoredTransactionListResponse;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MicroblocksApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public MicroblocksApi() {
        this(Configuration.getDefaultApiClient());
    }

    public MicroblocksApi(ApiClient apiClient) {
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
     * Build call for getMicroblockByHash
     * @param hash Hash of the microblock (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Microblock </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find microblock with given hash </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getMicroblockByHashCall(String hash, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/microblock/{hash}"
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
    private okhttp3.Call getMicroblockByHashValidateBeforeCall(String hash, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'hash' is set
        if (hash == null) {
            throw new ApiException("Missing the required parameter 'hash' when calling getMicroblockByHash(Async)");
        }
        

        okhttp3.Call localVarCall = getMicroblockByHashCall(hash, _callback);
        return localVarCall;

    }

    /**
     * Get microblock
     * Retrieves a specific microblock by &#x60;hash&#x60;
     * @param hash Hash of the microblock (required)
     * @return Microblock
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Microblock </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find microblock with given hash </td><td>  -  </td></tr>
     </table>
     */
    public Microblock getMicroblockByHash(String hash) throws ApiException {
        ApiResponse<Microblock> localVarResp = getMicroblockByHashWithHttpInfo(hash);
        return localVarResp.getData();
    }

    /**
     * Get microblock
     * Retrieves a specific microblock by &#x60;hash&#x60;
     * @param hash Hash of the microblock (required)
     * @return ApiResponse&lt;Microblock&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Microblock </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find microblock with given hash </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Microblock> getMicroblockByHashWithHttpInfo(String hash) throws ApiException {
        okhttp3.Call localVarCall = getMicroblockByHashValidateBeforeCall(hash, null);
        Type localVarReturnType = new TypeToken<Microblock>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get microblock (asynchronously)
     * Retrieves a specific microblock by &#x60;hash&#x60;
     * @param hash Hash of the microblock (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Microblock </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Cannot find microblock with given hash </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getMicroblockByHashAsync(String hash, final ApiCallback<Microblock> _callback) throws ApiException {

        okhttp3.Call localVarCall = getMicroblockByHashValidateBeforeCall(hash, _callback);
        Type localVarReturnType = new TypeToken<Microblock>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getMicroblockList
     * @param limit Max number of microblocks to fetch (optional, default to 20)
     * @param offset Index of the first microblock to fetch (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of microblocks </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getMicroblockListCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/microblock";

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
    private okhttp3.Call getMicroblockListValidateBeforeCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getMicroblockListCall(limit, offset, _callback);
        return localVarCall;

    }

    /**
     * Get recent microblocks
     * Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit Max number of microblocks to fetch (optional, default to 20)
     * @param offset Index of the first microblock to fetch (optional)
     * @return MicroblockListResponse
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of microblocks </td><td>  -  </td></tr>
     </table>
     */
    public MicroblockListResponse getMicroblockList(Integer limit, Integer offset) throws ApiException {
        ApiResponse<MicroblockListResponse> localVarResp = getMicroblockListWithHttpInfo(limit, offset);
        return localVarResp.getData();
    }

    /**
     * Get recent microblocks
     * Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit Max number of microblocks to fetch (optional, default to 20)
     * @param offset Index of the first microblock to fetch (optional)
     * @return ApiResponse&lt;MicroblockListResponse&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of microblocks </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<MicroblockListResponse> getMicroblockListWithHttpInfo(Integer limit, Integer offset) throws ApiException {
        okhttp3.Call localVarCall = getMicroblockListValidateBeforeCall(limit, offset, null);
        Type localVarReturnType = new TypeToken<MicroblockListResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get recent microblocks (asynchronously)
     * Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     * @param limit Max number of microblocks to fetch (optional, default to 20)
     * @param offset Index of the first microblock to fetch (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of microblocks </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getMicroblockListAsync(Integer limit, Integer offset, final ApiCallback<MicroblockListResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = getMicroblockListValidateBeforeCall(limit, offset, _callback);
        Type localVarReturnType = new TypeToken<MicroblockListResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getUnanchoredTxs
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Transactions </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getUnanchoredTxsCall(final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/microblock/unanchored/txs";

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
    private okhttp3.Call getUnanchoredTxsValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getUnanchoredTxsCall(_callback);
        return localVarCall;

    }

    /**
     * Get the list of current transactions that belong to unanchored microblocks
     * Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
     * @return UnanchoredTransactionListResponse
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Transactions </td><td>  -  </td></tr>
     </table>
     */
    public UnanchoredTransactionListResponse getUnanchoredTxs() throws ApiException {
        ApiResponse<UnanchoredTransactionListResponse> localVarResp = getUnanchoredTxsWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * Get the list of current transactions that belong to unanchored microblocks
     * Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
     * @return ApiResponse&lt;UnanchoredTransactionListResponse&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Transactions </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<UnanchoredTransactionListResponse> getUnanchoredTxsWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = getUnanchoredTxsValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<UnanchoredTransactionListResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get the list of current transactions that belong to unanchored microblocks (asynchronously)
     * Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Transactions </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getUnanchoredTxsAsync(final ApiCallback<UnanchoredTransactionListResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = getUnanchoredTxsValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<UnanchoredTransactionListResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}