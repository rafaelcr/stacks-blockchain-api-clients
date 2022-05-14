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

import so.hiro.stacks_blockchain_api_client.ApiException;
import so.hiro.stacks_blockchain_api_client.model.Microblock;
import so.hiro.stacks_blockchain_api_client.model.MicroblockListResponse;
import so.hiro.stacks_blockchain_api_client.model.UnanchoredTransactionListResponse;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MicroblocksApi
 */
@Ignore
public class MicroblocksApiTest {

    private final MicroblocksApi api = new MicroblocksApi();

    
    /**
     * Get microblock
     *
     * Retrieves a specific microblock by &#x60;hash&#x60;
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMicroblockByHashTest() throws ApiException {
        String hash = null;
                Microblock response = api.getMicroblockByHash(hash);
        // TODO: test validations
    }
    
    /**
     * Get recent microblocks
     *
     * Retrieves a list of microblocks.  If you need to actively monitor new microblocks, we highly recommend subscribing to [WebSockets or Socket.io](https://github.com/hirosystems/stacks-blockchain-api/tree/master/client) for real-time updates. 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMicroblockListTest() throws ApiException {
        Integer limit = null;
        Integer offset = null;
                MicroblockListResponse response = api.getMicroblockList(limit, offset);
        // TODO: test validations
    }
    
    /**
     * Get the list of current transactions that belong to unanchored microblocks
     *
     * Retrieves transactions that have been streamed in microblocks but not yet accepted or rejected in an anchor block
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getUnanchoredTxsTest() throws ApiException {
                UnanchoredTransactionListResponse response = api.getUnanchoredTxs();
        // TODO: test validations
    }
    
}
