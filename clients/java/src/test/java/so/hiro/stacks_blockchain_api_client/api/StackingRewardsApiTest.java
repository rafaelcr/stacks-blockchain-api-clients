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
import so.hiro.stacks_blockchain_api_client.model.BurnchainRewardListResponse;
import so.hiro.stacks_blockchain_api_client.model.BurnchainRewardSlotHolderListResponse;
import so.hiro.stacks_blockchain_api_client.model.BurnchainRewardsTotal;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for StackingRewardsApi
 */
@Ignore
public class StackingRewardsApiTest {

    private final StackingRewardsApi api = new StackingRewardsApi();

    
    /**
     * Get recent burnchain reward recipients
     *
     * Retrieves a list of recent burnchain (e.g. Bitcoin) reward recipients with the associated amounts and block info
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getBurnchainRewardListTest() throws ApiException {
        Integer limit = null;
        Integer offset = null;
                BurnchainRewardListResponse response = api.getBurnchainRewardList(limit, offset);
        // TODO: test validations
    }
    
    /**
     * Get recent burnchain reward for the given recipient
     *
     * Retrieves a list of recent burnchain (e.g. Bitcoin) rewards for the given recipient with the associated amounts and block info
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getBurnchainRewardListByAddressTest() throws ApiException {
        String address = null;
        Integer limit = null;
        Integer offset = null;
                Object response = api.getBurnchainRewardListByAddress(address, limit, offset);
        // TODO: test validations
    }
    
    /**
     * Get recent reward slot holders
     *
     * Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getBurnchainRewardSlotHoldersTest() throws ApiException {
        Integer limit = null;
        Integer offset = null;
                BurnchainRewardSlotHolderListResponse response = api.getBurnchainRewardSlotHolders(limit, offset);
        // TODO: test validations
    }
    
    /**
     * Get recent reward slot holder entries for the given address
     *
     * Retrieves a list of the Bitcoin addresses that would validly receive Proof-of-Transfer commitments for a given reward slot holder recipient address.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getBurnchainRewardSlotHoldersByAddressTest() throws ApiException {
        String address = null;
        Integer limit = null;
        Integer offset = null;
                Object response = api.getBurnchainRewardSlotHoldersByAddress(address, limit, offset);
        // TODO: test validations
    }
    
    /**
     * Get total burnchain rewards for the given recipient
     *
     * Retrieves the total burnchain (e.g. Bitcoin) rewards for a given recipient &#x60;address&#x60;
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getBurnchainRewardsTotalByAddressTest() throws ApiException {
        String address = null;
                BurnchainRewardsTotal response = api.getBurnchainRewardsTotalByAddress(address);
        // TODO: test validations
    }
    
}
