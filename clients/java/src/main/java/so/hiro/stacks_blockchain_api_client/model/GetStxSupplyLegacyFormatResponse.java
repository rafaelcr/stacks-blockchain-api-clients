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

/**
 * GET request that returns network target block times
 */
@ApiModel(description = "GET request that returns network target block times")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class GetStxSupplyLegacyFormatResponse {
  public static final String SERIALIZED_NAME_UNLOCKED_PERCENT = "unlockedPercent";
  @SerializedName(SERIALIZED_NAME_UNLOCKED_PERCENT)
  private String unlockedPercent;

  public static final String SERIALIZED_NAME_TOTAL_STACKS = "totalStacks";
  @SerializedName(SERIALIZED_NAME_TOTAL_STACKS)
  private String totalStacks;

  public static final String SERIALIZED_NAME_TOTAL_STACKS_FORMATTED = "totalStacksFormatted";
  @SerializedName(SERIALIZED_NAME_TOTAL_STACKS_FORMATTED)
  private String totalStacksFormatted;

  public static final String SERIALIZED_NAME_UNLOCKED_SUPPLY = "unlockedSupply";
  @SerializedName(SERIALIZED_NAME_UNLOCKED_SUPPLY)
  private String unlockedSupply;

  public static final String SERIALIZED_NAME_UNLOCKED_SUPPLY_FORMATTED = "unlockedSupplyFormatted";
  @SerializedName(SERIALIZED_NAME_UNLOCKED_SUPPLY_FORMATTED)
  private String unlockedSupplyFormatted;

  public static final String SERIALIZED_NAME_BLOCK_HEIGHT = "blockHeight";
  @SerializedName(SERIALIZED_NAME_BLOCK_HEIGHT)
  private String blockHeight;

  public GetStxSupplyLegacyFormatResponse() { 
  }

  public GetStxSupplyLegacyFormatResponse unlockedPercent(String unlockedPercent) {
    
    this.unlockedPercent = unlockedPercent;
    return this;
  }

   /**
   * String quoted decimal number of the percentage of STX that have unlocked
   * @return unlockedPercent
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "String quoted decimal number of the percentage of STX that have unlocked")

  public String getUnlockedPercent() {
    return unlockedPercent;
  }


  public void setUnlockedPercent(String unlockedPercent) {
    this.unlockedPercent = unlockedPercent;
  }


  public GetStxSupplyLegacyFormatResponse totalStacks(String totalStacks) {
    
    this.totalStacks = totalStacks;
    return this;
  }

   /**
   * String quoted decimal number of the total possible number of STX
   * @return totalStacks
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "String quoted decimal number of the total possible number of STX")

  public String getTotalStacks() {
    return totalStacks;
  }


  public void setTotalStacks(String totalStacks) {
    this.totalStacks = totalStacks;
  }


  public GetStxSupplyLegacyFormatResponse totalStacksFormatted(String totalStacksFormatted) {
    
    this.totalStacksFormatted = totalStacksFormatted;
    return this;
  }

   /**
   * Same as &#x60;totalStacks&#x60; but formatted with comma thousands separators
   * @return totalStacksFormatted
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Same as `totalStacks` but formatted with comma thousands separators")

  public String getTotalStacksFormatted() {
    return totalStacksFormatted;
  }


  public void setTotalStacksFormatted(String totalStacksFormatted) {
    this.totalStacksFormatted = totalStacksFormatted;
  }


  public GetStxSupplyLegacyFormatResponse unlockedSupply(String unlockedSupply) {
    
    this.unlockedSupply = unlockedSupply;
    return this;
  }

   /**
   * String quoted decimal number of the STX that have been mined or unlocked
   * @return unlockedSupply
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "String quoted decimal number of the STX that have been mined or unlocked")

  public String getUnlockedSupply() {
    return unlockedSupply;
  }


  public void setUnlockedSupply(String unlockedSupply) {
    this.unlockedSupply = unlockedSupply;
  }


  public GetStxSupplyLegacyFormatResponse unlockedSupplyFormatted(String unlockedSupplyFormatted) {
    
    this.unlockedSupplyFormatted = unlockedSupplyFormatted;
    return this;
  }

   /**
   * Same as &#x60;unlockedSupply&#x60; but formatted with comma thousands separators
   * @return unlockedSupplyFormatted
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Same as `unlockedSupply` but formatted with comma thousands separators")

  public String getUnlockedSupplyFormatted() {
    return unlockedSupplyFormatted;
  }


  public void setUnlockedSupplyFormatted(String unlockedSupplyFormatted) {
    this.unlockedSupplyFormatted = unlockedSupplyFormatted;
  }


  public GetStxSupplyLegacyFormatResponse blockHeight(String blockHeight) {
    
    this.blockHeight = blockHeight;
    return this;
  }

   /**
   * The block height at which this information was queried
   * @return blockHeight
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The block height at which this information was queried")

  public String getBlockHeight() {
    return blockHeight;
  }


  public void setBlockHeight(String blockHeight) {
    this.blockHeight = blockHeight;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetStxSupplyLegacyFormatResponse getStxSupplyLegacyFormatResponse = (GetStxSupplyLegacyFormatResponse) o;
    return Objects.equals(this.unlockedPercent, getStxSupplyLegacyFormatResponse.unlockedPercent) &&
        Objects.equals(this.totalStacks, getStxSupplyLegacyFormatResponse.totalStacks) &&
        Objects.equals(this.totalStacksFormatted, getStxSupplyLegacyFormatResponse.totalStacksFormatted) &&
        Objects.equals(this.unlockedSupply, getStxSupplyLegacyFormatResponse.unlockedSupply) &&
        Objects.equals(this.unlockedSupplyFormatted, getStxSupplyLegacyFormatResponse.unlockedSupplyFormatted) &&
        Objects.equals(this.blockHeight, getStxSupplyLegacyFormatResponse.blockHeight);
  }

  @Override
  public int hashCode() {
    return Objects.hash(unlockedPercent, totalStacks, totalStacksFormatted, unlockedSupply, unlockedSupplyFormatted, blockHeight);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetStxSupplyLegacyFormatResponse {\n");
    sb.append("    unlockedPercent: ").append(toIndentedString(unlockedPercent)).append("\n");
    sb.append("    totalStacks: ").append(toIndentedString(totalStacks)).append("\n");
    sb.append("    totalStacksFormatted: ").append(toIndentedString(totalStacksFormatted)).append("\n");
    sb.append("    unlockedSupply: ").append(toIndentedString(unlockedSupply)).append("\n");
    sb.append("    unlockedSupplyFormatted: ").append(toIndentedString(unlockedSupplyFormatted)).append("\n");
    sb.append("    blockHeight: ").append(toIndentedString(blockHeight)).append("\n");
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

