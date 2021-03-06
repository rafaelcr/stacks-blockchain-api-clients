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
import so.hiro.stacks_blockchain_api_client.model.AddressBalanceResponseStx;
import so.hiro.stacks_blockchain_api_client.model.AddressTokenOfferingLocked;

/**
 * GET request that returns address balances
 */
@ApiModel(description = "GET request that returns address balances")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class AddressBalanceResponse {
  public static final String SERIALIZED_NAME_STX = "stx";
  @SerializedName(SERIALIZED_NAME_STX)
  private AddressBalanceResponseStx stx;

  public static final String SERIALIZED_NAME_FUNGIBLE_TOKENS = "fungible_tokens";
  @SerializedName(SERIALIZED_NAME_FUNGIBLE_TOKENS)
  private Object fungibleTokens;

  public static final String SERIALIZED_NAME_NON_FUNGIBLE_TOKENS = "non_fungible_tokens";
  @SerializedName(SERIALIZED_NAME_NON_FUNGIBLE_TOKENS)
  private Object nonFungibleTokens;

  public static final String SERIALIZED_NAME_TOKEN_OFFERING_LOCKED = "token_offering_locked";
  @SerializedName(SERIALIZED_NAME_TOKEN_OFFERING_LOCKED)
  private AddressTokenOfferingLocked tokenOfferingLocked;

  public AddressBalanceResponse() { 
  }

  public AddressBalanceResponse stx(AddressBalanceResponseStx stx) {
    
    this.stx = stx;
    return this;
  }

   /**
   * Get stx
   * @return stx
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public AddressBalanceResponseStx getStx() {
    return stx;
  }


  public void setStx(AddressBalanceResponseStx stx) {
    this.stx = stx;
  }


  public AddressBalanceResponse fungibleTokens(Object fungibleTokens) {
    
    this.fungibleTokens = fungibleTokens;
    return this;
  }

   /**
   * Get fungibleTokens
   * @return fungibleTokens
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Object getFungibleTokens() {
    return fungibleTokens;
  }


  public void setFungibleTokens(Object fungibleTokens) {
    this.fungibleTokens = fungibleTokens;
  }


  public AddressBalanceResponse nonFungibleTokens(Object nonFungibleTokens) {
    
    this.nonFungibleTokens = nonFungibleTokens;
    return this;
  }

   /**
   * Get nonFungibleTokens
   * @return nonFungibleTokens
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Object getNonFungibleTokens() {
    return nonFungibleTokens;
  }


  public void setNonFungibleTokens(Object nonFungibleTokens) {
    this.nonFungibleTokens = nonFungibleTokens;
  }


  public AddressBalanceResponse tokenOfferingLocked(AddressTokenOfferingLocked tokenOfferingLocked) {
    
    this.tokenOfferingLocked = tokenOfferingLocked;
    return this;
  }

   /**
   * Get tokenOfferingLocked
   * @return tokenOfferingLocked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public AddressTokenOfferingLocked getTokenOfferingLocked() {
    return tokenOfferingLocked;
  }


  public void setTokenOfferingLocked(AddressTokenOfferingLocked tokenOfferingLocked) {
    this.tokenOfferingLocked = tokenOfferingLocked;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AddressBalanceResponse addressBalanceResponse = (AddressBalanceResponse) o;
    return Objects.equals(this.stx, addressBalanceResponse.stx) &&
        Objects.equals(this.fungibleTokens, addressBalanceResponse.fungibleTokens) &&
        Objects.equals(this.nonFungibleTokens, addressBalanceResponse.nonFungibleTokens) &&
        Objects.equals(this.tokenOfferingLocked, addressBalanceResponse.tokenOfferingLocked);
  }

  @Override
  public int hashCode() {
    return Objects.hash(stx, fungibleTokens, nonFungibleTokens, tokenOfferingLocked);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AddressBalanceResponse {\n");
    sb.append("    stx: ").append(toIndentedString(stx)).append("\n");
    sb.append("    fungibleTokens: ").append(toIndentedString(fungibleTokens)).append("\n");
    sb.append("    nonFungibleTokens: ").append(toIndentedString(nonFungibleTokens)).append("\n");
    sb.append("    tokenOfferingLocked: ").append(toIndentedString(tokenOfferingLocked)).append("\n");
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

