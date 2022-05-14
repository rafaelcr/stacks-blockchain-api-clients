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


import so.hiro.stacks_blockchain_api_client.model.AnyOfobjectobject;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SearchApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public SearchApi() {
        this(Configuration.getDefaultApiClient());
    }

    public SearchApi(ApiClient apiClient) {
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
     * Build call for searchById
     * @param id The hex hash string for a block or transaction, account address, or contract address (required)
     * @param includeMetadata This includes the detailed data for purticular hash in the response (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not found </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call searchByIdCall(String id, Boolean includeMetadata, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/search/{id}"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (includeMetadata != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("include_metadata", includeMetadata));
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
    private okhttp3.Call searchByIdValidateBeforeCall(String id, Boolean includeMetadata, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling searchById(Async)");
        }
        

        okhttp3.Call localVarCall = searchByIdCall(id, includeMetadata, _callback);
        return localVarCall;

    }

    /**
     * Search
     * Search blocks, transactions, contracts, or accounts by hash/ID
     * @param id The hex hash string for a block or transaction, account address, or contract address (required)
     * @param includeMetadata This includes the detailed data for purticular hash in the response (optional)
     * @return AnyOfobjectobject
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not found </td><td>  -  </td></tr>
     </table>
     */
    public AnyOfobjectobject searchById(String id, Boolean includeMetadata) throws ApiException {
        ApiResponse<AnyOfobjectobject> localVarResp = searchByIdWithHttpInfo(id, includeMetadata);
        return localVarResp.getData();
    }

    /**
     * Search
     * Search blocks, transactions, contracts, or accounts by hash/ID
     * @param id The hex hash string for a block or transaction, account address, or contract address (required)
     * @param includeMetadata This includes the detailed data for purticular hash in the response (optional)
     * @return ApiResponse&lt;AnyOfobjectobject&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not found </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<AnyOfobjectobject> searchByIdWithHttpInfo(String id, Boolean includeMetadata) throws ApiException {
        okhttp3.Call localVarCall = searchByIdValidateBeforeCall(id, includeMetadata, null);
        Type localVarReturnType = new TypeToken<AnyOfobjectobject>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Search (asynchronously)
     * Search blocks, transactions, contracts, or accounts by hash/ID
     * @param id The hex hash string for a block or transaction, account address, or contract address (required)
     * @param includeMetadata This includes the detailed data for purticular hash in the response (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not found </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call searchByIdAsync(String id, Boolean includeMetadata, final ApiCallback<AnyOfobjectobject> _callback) throws ApiException {

        okhttp3.Call localVarCall = searchByIdValidateBeforeCall(id, includeMetadata, _callback);
        Type localVarReturnType = new TypeToken<AnyOfobjectobject>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
