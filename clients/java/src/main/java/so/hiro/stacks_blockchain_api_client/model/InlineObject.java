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
 * InlineObject
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class InlineObject {
  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_STACKING = "stacking";
  @SerializedName(SERIALIZED_NAME_STACKING)
  private Boolean stacking;

  public InlineObject() { 
  }

  public InlineObject address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * STX testnet address
   * @return address
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "STX testnet address")

  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public InlineObject stacking(Boolean stacking) {
    
    this.stacking = stacking;
    return this;
  }

   /**
   * Use required number of tokens for stacking
   * @return stacking
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Use required number of tokens for stacking")

  public Boolean getStacking() {
    return stacking;
  }


  public void setStacking(Boolean stacking) {
    this.stacking = stacking;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject inlineObject = (InlineObject) o;
    return Objects.equals(this.address, inlineObject.address) &&
        Objects.equals(this.stacking, inlineObject.stacking);
  }

  @Override
  public int hashCode() {
    return Objects.hash(address, stacking);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject {\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    stacking: ").append(toIndentedString(stacking)).append("\n");
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

