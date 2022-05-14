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
 * Currency is composed of a canonical Symbol and Decimals. This Decimals value is used to convert an Amount.Value from atomic units (Satoshis) to standard units (Bitcoins).
 */
@ApiModel(description = "Currency is composed of a canonical Symbol and Decimals. This Decimals value is used to convert an Amount.Value from atomic units (Satoshis) to standard units (Bitcoins).")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaCurrency {
  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private String symbol;

  public static final String SERIALIZED_NAME_DECIMALS = "decimals";
  @SerializedName(SERIALIZED_NAME_DECIMALS)
  private Integer decimals;

  public static final String SERIALIZED_NAME_METADATA = "metadata";
  @SerializedName(SERIALIZED_NAME_METADATA)
  private Object metadata;

  public RosettaCurrency() { 
  }

  public RosettaCurrency symbol(String symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Canonical symbol associated with a currency.
   * @return symbol
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Canonical symbol associated with a currency.")

  public String getSymbol() {
    return symbol;
  }


  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }


  public RosettaCurrency decimals(Integer decimals) {
    
    this.decimals = decimals;
    return this;
  }

   /**
   * Number of decimal places in the standard unit representation of the amount. For example, BTC has 8 decimals. Note that it is not possible to represent the value of some currency in atomic units that is not base 10.
   * @return decimals
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Number of decimal places in the standard unit representation of the amount. For example, BTC has 8 decimals. Note that it is not possible to represent the value of some currency in atomic units that is not base 10.")

  public Integer getDecimals() {
    return decimals;
  }


  public void setDecimals(Integer decimals) {
    this.decimals = decimals;
  }


  public RosettaCurrency metadata(Object metadata) {
    
    this.metadata = metadata;
    return this;
  }

   /**
   * Any additional information related to the currency itself. For example, it would be useful to populate this object with the contract address of an ERC-20 token.
   * @return metadata
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Any additional information related to the currency itself. For example, it would be useful to populate this object with the contract address of an ERC-20 token.")

  public Object getMetadata() {
    return metadata;
  }


  public void setMetadata(Object metadata) {
    this.metadata = metadata;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RosettaCurrency rosettaCurrency = (RosettaCurrency) o;
    return Objects.equals(this.symbol, rosettaCurrency.symbol) &&
        Objects.equals(this.decimals, rosettaCurrency.decimals) &&
        Objects.equals(this.metadata, rosettaCurrency.metadata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(symbol, decimals, metadata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaCurrency {\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    decimals: ").append(toIndentedString(decimals)).append("\n");
    sb.append("    metadata: ").append(toIndentedString(metadata)).append("\n");
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
