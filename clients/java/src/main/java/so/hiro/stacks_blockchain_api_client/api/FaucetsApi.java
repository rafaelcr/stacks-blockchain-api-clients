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


import so.hiro.stacks_blockchain_api_client.model.InlineObject;
import so.hiro.stacks_blockchain_api_client.model.InlineObject1;
import so.hiro.stacks_blockchain_api_client.model.RunFaucetResponse;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FaucetsApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public FaucetsApi() {
        this(Configuration.getDefaultApiClient());
    }

    public FaucetsApi(ApiClient apiClient) {
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
     * Build call for runFaucetBtc
     * @param address A valid testnet BTC address (required)
     * @param inlineObject1  (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call runFaucetBtcCall(String address, InlineObject1 inlineObject1, final ApiCallback _callback) throws ApiException {
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

        Object localVarPostBody = inlineObject1;

        // create path and map variables
        String localVarPath = "/extended/v1/faucets/btc";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (address != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("address", address));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call runFaucetBtcValidateBeforeCall(String address, InlineObject1 inlineObject1, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'address' is set
        if (address == null) {
            throw new ApiException("Missing the required parameter 'address' when calling runFaucetBtc(Async)");
        }
        

        okhttp3.Call localVarCall = runFaucetBtcCall(address, inlineObject1, _callback);
        return localVarCall;

    }

    /**
     * Add testnet BTC tokens to address
     * Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet BTC address (required)
     * @param inlineObject1  (optional)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public Object runFaucetBtc(String address, InlineObject1 inlineObject1) throws ApiException {
        ApiResponse<Object> localVarResp = runFaucetBtcWithHttpInfo(address, inlineObject1);
        return localVarResp.getData();
    }

    /**
     * Add testnet BTC tokens to address
     * Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet BTC address (required)
     * @param inlineObject1  (optional)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Object> runFaucetBtcWithHttpInfo(String address, InlineObject1 inlineObject1) throws ApiException {
        okhttp3.Call localVarCall = runFaucetBtcValidateBeforeCall(address, inlineObject1, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Add testnet BTC tokens to address (asynchronously)
     * Add 1 BTC token to the specified testnet BTC address.  The endpoint returns the transaction ID, which you can use to view the transaction in a testnet Bitcoin block explorer. The tokens are delivered once the transaction has been included in a block.  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet BTC address (required)
     * @param inlineObject1  (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call runFaucetBtcAsync(String address, InlineObject1 inlineObject1, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = runFaucetBtcValidateBeforeCall(address, inlineObject1, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for runFaucetStx
     * @param address A valid testnet STX address (required)
     * @param stacking Request the amount of STX tokens needed for individual address stacking (optional, default to false)
     * @param inlineObject  (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call runFaucetStxCall(String address, Boolean stacking, InlineObject inlineObject, final ApiCallback _callback) throws ApiException {
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

        Object localVarPostBody = inlineObject;

        // create path and map variables
        String localVarPath = "/extended/v1/faucets/stx";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (address != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("address", address));
        }

        if (stacking != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("stacking", stacking));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call runFaucetStxValidateBeforeCall(String address, Boolean stacking, InlineObject inlineObject, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'address' is set
        if (address == null) {
            throw new ApiException("Missing the required parameter 'address' when calling runFaucetStx(Async)");
        }
        

        okhttp3.Call localVarCall = runFaucetStxCall(address, stacking, inlineObject, _callback);
        return localVarCall;

    }

    /**
     * Get STX testnet tokens
     * Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with &#x60;ST&#x60;. If the &#x60;stacking&#x60; parameter is set to &#x60;true&#x60;, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain&#x3D;testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet STX address (required)
     * @param stacking Request the amount of STX tokens needed for individual address stacking (optional, default to false)
     * @param inlineObject  (optional)
     * @return RunFaucetResponse
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public RunFaucetResponse runFaucetStx(String address, Boolean stacking, InlineObject inlineObject) throws ApiException {
        ApiResponse<RunFaucetResponse> localVarResp = runFaucetStxWithHttpInfo(address, stacking, inlineObject);
        return localVarResp.getData();
    }

    /**
     * Get STX testnet tokens
     * Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with &#x60;ST&#x60;. If the &#x60;stacking&#x60; parameter is set to &#x60;true&#x60;, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain&#x3D;testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet STX address (required)
     * @param stacking Request the amount of STX tokens needed for individual address stacking (optional, default to false)
     * @param inlineObject  (optional)
     * @return ApiResponse&lt;RunFaucetResponse&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<RunFaucetResponse> runFaucetStxWithHttpInfo(String address, Boolean stacking, InlineObject inlineObject) throws ApiException {
        okhttp3.Call localVarCall = runFaucetStxValidateBeforeCall(address, stacking, inlineObject, null);
        Type localVarReturnType = new TypeToken<RunFaucetResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get STX testnet tokens (asynchronously)
     * Add 500 STX tokens to the specified testnet address. Testnet STX addresses begin with &#x60;ST&#x60;. If the &#x60;stacking&#x60; parameter is set to &#x60;true&#x60;, the faucet will add the required number of tokens for individual stacking to the specified testnet address.  The endpoint returns the transaction ID, which you can use to view the transaction in the [Stacks Explorer](https://explorer.stacks.co/?chain&#x3D;testnet). The tokens are delivered once the transaction has been included in an anchor block.  A common reason for failed faucet transactions is that the faucet has run out of tokens. If you are experiencing failed faucet transactions to a testnet address, you can get help in [Discord](https://stacks.chat).  **Note:** This is a testnet only endpoint. This endpoint will not work on the mainnet. 
     * @param address A valid testnet STX address (required)
     * @param stacking Request the amount of STX tokens needed for individual address stacking (optional, default to false)
     * @param inlineObject  (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Faucet call failed </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call runFaucetStxAsync(String address, Boolean stacking, InlineObject inlineObject, final ApiCallback<RunFaucetResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = runFaucetStxValidateBeforeCall(address, stacking, inlineObject, _callback);
        Type localVarReturnType = new TypeToken<RunFaucetResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
