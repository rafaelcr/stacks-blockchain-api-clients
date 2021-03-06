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


package so.hiro.stacks_blockchain_api_client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import so.hiro.stacks_blockchain_api_client.model.RosettaAccount;

/**
 * An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed.
 */
@ApiModel(description = "An AccountBalanceRequest is utilized to make a balance request on the /account/balance endpoint. If the block_identifier is populated, a historical balance query should be performed.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaAccountBalanceRequest {
  public static final String SERIALIZED_NAME_NETWORK_IDENTIFIER = "network_identifier";
  @SerializedName(SERIALIZED_NAME_NETWORK_IDENTIFIER)
  private Object networkIdentifier = null;

  public static final String SERIALIZED_NAME_ACCOUNT_IDENTIFIER = "account_identifier";
  @SerializedName(SERIALIZED_NAME_ACCOUNT_IDENTIFIER)
  private RosettaAccount accountIdentifier;

  public static final String SERIALIZED_NAME_BLOCK_IDENTIFIER = "block_identifier";
  @SerializedName(SERIALIZED_NAME_BLOCK_IDENTIFIER)
  private AnyOfobjectobject blockIdentifier;

  public RosettaAccountBalanceRequest() { 
  }

  public RosettaAccountBalanceRequest networkIdentifier(Object networkIdentifier) {
    
    this.networkIdentifier = networkIdentifier;
    return this;
  }

   /**
   * Get networkIdentifier
   * @return networkIdentifier
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Object getNetworkIdentifier() {
    return networkIdentifier;
  }


  public void setNetworkIdentifier(Object networkIdentifier) {
    this.networkIdentifier = networkIdentifier;
  }


  public RosettaAccountBalanceRequest accountIdentifier(RosettaAccount accountIdentifier) {
    
    this.accountIdentifier = accountIdentifier;
    return this;
  }

   /**
   * Get accountIdentifier
   * @return accountIdentifier
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public RosettaAccount getAccountIdentifier() {
    return accountIdentifier;
  }


  public void setAccountIdentifier(RosettaAccount accountIdentifier) {
    this.accountIdentifier = accountIdentifier;
  }


  public RosettaAccountBalanceRequest blockIdentifier(AnyOfobjectobject blockIdentifier) {
    
    this.blockIdentifier = blockIdentifier;
    return this;
  }

  public RosettaAccountBalanceRequest putBlockIdentifierItem(String key,  blockIdentifierItem) {
    if (this.blockIdentifier == null) {
      this.blockIdentifier = ;
    }
    this.blockIdentifier.put(key, blockIdentifierItem);
    return this;
  }

   /**
   * When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block.
   * @return blockIdentifier
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "When fetching data by BlockIdentifier, it may be possible to only specify the index or hash. If neither property is specified, it is assumed that the client is making a request at the current block.")

  public AnyOfobjectobject getBlockIdentifier() {
    return blockIdentifier;
  }


  public void setBlockIdentifier(AnyOfobjectobject blockIdentifier) {
    this.blockIdentifier = blockIdentifier;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RosettaAccountBalanceRequest rosettaAccountBalanceRequest = (RosettaAccountBalanceRequest) o;
    return Objects.equals(this.networkIdentifier, rosettaAccountBalanceRequest.networkIdentifier) &&
        Objects.equals(this.accountIdentifier, rosettaAccountBalanceRequest.accountIdentifier) &&
        Objects.equals(this.blockIdentifier, rosettaAccountBalanceRequest.blockIdentifier);
  }

  @Override
  public int hashCode() {
    return Objects.hash(networkIdentifier, accountIdentifier, blockIdentifier);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaAccountBalanceRequest {\n");
    sb.append("    networkIdentifier: ").append(toIndentedString(networkIdentifier)).append("\n");
    sb.append("    accountIdentifier: ").append(toIndentedString(accountIdentifier)).append("\n");
    sb.append("    blockIdentifier: ").append(toIndentedString(blockIdentifier)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

