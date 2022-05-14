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


import so.hiro.stacks_blockchain_api_client.model.FungibleTokenMetadata;
import so.hiro.stacks_blockchain_api_client.model.FungibleTokensMetadataList;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FungibleTokensApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public FungibleTokensApi() {
        this(Configuration.getDefaultApiClient());
    }

    public FungibleTokensApi(ApiClient apiClient) {
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
     * Build call for getContractFtMetadata
     * @param contractId token&#39;s contract id (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Fungible tokens metadata for contract id </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getContractFtMetadataCall(String contractId, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/tokens/{contractId}/ft/metadata"
            .replaceAll("\\{" + "contractId" + "\\}", localVarApiClient.escapeString(contractId.toString()));

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
    private okhttp3.Call getContractFtMetadataValidateBeforeCall(String contractId, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'contractId' is set
        if (contractId == null) {
            throw new ApiException("Missing the required parameter 'contractId' when calling getContractFtMetadata(Async)");
        }
        

        okhttp3.Call localVarCall = getContractFtMetadataCall(contractId, _callback);
        return localVarCall;

    }

    /**
     * Fungible tokens metadata for contract id
     * Retrieves the metadata for fungible tokens for a given contract id
     * @param contractId token&#39;s contract id (required)
     * @return FungibleTokenMetadata
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Fungible tokens metadata for contract id </td><td>  -  </td></tr>
     </table>
     */
    public FungibleTokenMetadata getContractFtMetadata(String contractId) throws ApiException {
        ApiResponse<FungibleTokenMetadata> localVarResp = getContractFtMetadataWithHttpInfo(contractId);
        return localVarResp.getData();
    }

    /**
     * Fungible tokens metadata for contract id
     * Retrieves the metadata for fungible tokens for a given contract id
     * @param contractId token&#39;s contract id (required)
     * @return ApiResponse&lt;FungibleTokenMetadata&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Fungible tokens metadata for contract id </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<FungibleTokenMetadata> getContractFtMetadataWithHttpInfo(String contractId) throws ApiException {
        okhttp3.Call localVarCall = getContractFtMetadataValidateBeforeCall(contractId, null);
        Type localVarReturnType = new TypeToken<FungibleTokenMetadata>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Fungible tokens metadata for contract id (asynchronously)
     * Retrieves the metadata for fungible tokens for a given contract id
     * @param contractId token&#39;s contract id (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Fungible tokens metadata for contract id </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getContractFtMetadataAsync(String contractId, final ApiCallback<FungibleTokenMetadata> _callback) throws ApiException {

        okhttp3.Call localVarCall = getContractFtMetadataValidateBeforeCall(contractId, _callback);
        Type localVarReturnType = new TypeToken<FungibleTokenMetadata>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getFtMetadataList
     * @param limit max number of tokens to fetch (optional)
     * @param offset index of first tokens to fetch (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of fungible tokens metadata </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getFtMetadataListCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extended/v1/tokens/ft/metadata";

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
    private okhttp3.Call getFtMetadataListValidateBeforeCall(Integer limit, Integer offset, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getFtMetadataListCall(limit, offset, _callback);
        return localVarCall;

    }

    /**
     * Fungible tokens metadata list
     * Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
     * @param limit max number of tokens to fetch (optional)
     * @param offset index of first tokens to fetch (optional)
     * @return FungibleTokensMetadataList
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of fungible tokens metadata </td><td>  -  </td></tr>
     </table>
     */
    public FungibleTokensMetadataList getFtMetadataList(Integer limit, Integer offset) throws ApiException {
        ApiResponse<FungibleTokensMetadataList> localVarResp = getFtMetadataListWithHttpInfo(limit, offset);
        return localVarResp.getData();
    }

    /**
     * Fungible tokens metadata list
     * Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
     * @param limit max number of tokens to fetch (optional)
     * @param offset index of first tokens to fetch (optional)
     * @return ApiResponse&lt;FungibleTokensMetadataList&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of fungible tokens metadata </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<FungibleTokensMetadataList> getFtMetadataListWithHttpInfo(Integer limit, Integer offset) throws ApiException {
        okhttp3.Call localVarCall = getFtMetadataListValidateBeforeCall(limit, offset, null);
        Type localVarReturnType = new TypeToken<FungibleTokensMetadataList>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Fungible tokens metadata list (asynchronously)
     * Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
     * @param limit max number of tokens to fetch (optional)
     * @param offset index of first tokens to fetch (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> List of fungible tokens metadata </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getFtMetadataListAsync(Integer limit, Integer offset, final ApiCallback<FungibleTokensMetadataList> _callback) throws ApiException {

        okhttp3.Call localVarCall = getFtMetadataListValidateBeforeCall(limit, offset, _callback);
        Type localVarReturnType = new TypeToken<FungibleTokensMetadataList>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}