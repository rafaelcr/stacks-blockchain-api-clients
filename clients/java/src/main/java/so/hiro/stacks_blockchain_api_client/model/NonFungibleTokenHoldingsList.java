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
import java.util.ArrayList;
import java.util.List;
import so.hiro.stacks_blockchain_api_client.model.AnyOfobjectobject;

/**
 * List of Non-Fungible Token holdings
 */
@ApiModel(description = "List of Non-Fungible Token holdings")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class NonFungibleTokenHoldingsList {
  public static final String SERIALIZED_NAME_LIMIT = "limit";
  @SerializedName(SERIALIZED_NAME_LIMIT)
  private Integer limit;

  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_TOTAL = "total";
  @SerializedName(SERIALIZED_NAME_TOTAL)
  private Integer total;

  public static final String SERIALIZED_NAME_RESULTS = "results";
  @SerializedName(SERIALIZED_NAME_RESULTS)
  private List<AnyOfobjectobject> results = new ArrayList<AnyOfobjectobject>();

  public NonFungibleTokenHoldingsList() { 
  }

  public NonFungibleTokenHoldingsList limit(Integer limit) {
    
    this.limit = limit;
    return this;
  }

   /**
   * The number of Non-Fungible Token holdings to return
   * maximum: 200
   * @return limit
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The number of Non-Fungible Token holdings to return")

  public Integer getLimit() {
    return limit;
  }


  public void setLimit(Integer limit) {
    this.limit = limit;
  }


  public NonFungibleTokenHoldingsList offset(Integer offset) {
    
    this.offset = offset;
    return this;
  }

   /**
   * The number to Non-Fungible Token holdings to skip (starting at &#x60;0&#x60;)
   * @return offset
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The number to Non-Fungible Token holdings to skip (starting at `0`)")

  public Integer getOffset() {
    return offset;
  }


  public void setOffset(Integer offset) {
    this.offset = offset;
  }


  public NonFungibleTokenHoldingsList total(Integer total) {
    
    this.total = total;
    return this;
  }

   /**
   * The number of Non-Fungible Token holdings available
   * @return total
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The number of Non-Fungible Token holdings available")

  public Integer getTotal() {
    return total;
  }


  public void setTotal(Integer total) {
    this.total = total;
  }


  public NonFungibleTokenHoldingsList results(List<AnyOfobjectobject> results) {
    
    this.results = results;
    return this;
  }

  public NonFungibleTokenHoldingsList addResultsItem(AnyOfobjectobject resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<AnyOfobjectobject> getResults() {
    return results;
  }


  public void setResults(List<AnyOfobjectobject> results) {
    this.results = results;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NonFungibleTokenHoldingsList nonFungibleTokenHoldingsList = (NonFungibleTokenHoldingsList) o;
    return Objects.equals(this.limit, nonFungibleTokenHoldingsList.limit) &&
        Objects.equals(this.offset, nonFungibleTokenHoldingsList.offset) &&
        Objects.equals(this.total, nonFungibleTokenHoldingsList.total) &&
        Objects.equals(this.results, nonFungibleTokenHoldingsList.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(limit, offset, total, results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NonFungibleTokenHoldingsList {\n");
    sb.append("    limit: ").append(toIndentedString(limit)).append("\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
    sb.append("    results: ").append(toIndentedString(results)).append("\n");
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
