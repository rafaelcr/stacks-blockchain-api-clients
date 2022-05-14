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
import so.hiro.stacks_blockchain_api_client.model.RosettaAccountIdentifier;

/**
 * ConstructionDeriveResponse is returned by the /construction/derive endpoint.
 */
@ApiModel(description = "ConstructionDeriveResponse is returned by the /construction/derive endpoint.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaConstructionDeriveResponse {
  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_ACCOUNT_IDENTIFIER = "account_identifier";
  @SerializedName(SERIALIZED_NAME_ACCOUNT_IDENTIFIER)
  private RosettaAccountIdentifier accountIdentifier;

  public static final String SERIALIZED_NAME_METADATA = "metadata";
  @SerializedName(SERIALIZED_NAME_METADATA)
  private Object metadata;

  public RosettaConstructionDeriveResponse() { 
  }

  public RosettaConstructionDeriveResponse address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * [DEPRECATED by account_identifier in v1.4.4] Address in network-specific format.
   * @return address
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "[DEPRECATED by account_identifier in v1.4.4] Address in network-specific format.")

  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public RosettaConstructionDeriveResponse accountIdentifier(RosettaAccountIdentifier accountIdentifier) {
    
    this.accountIdentifier = accountIdentifier;
    return this;
  }

   /**
   * Get accountIdentifier
   * @return accountIdentifier
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public RosettaAccountIdentifier getAccountIdentifier() {
    return accountIdentifier;
  }


  public void setAccountIdentifier(RosettaAccountIdentifier accountIdentifier) {
    this.accountIdentifier = accountIdentifier;
  }


  public RosettaConstructionDeriveResponse metadata(Object metadata) {
    
    this.metadata = metadata;
    return this;
  }

   /**
   * Get metadata
   * @return metadata
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
    RosettaConstructionDeriveResponse rosettaConstructionDeriveResponse = (RosettaConstructionDeriveResponse) o;
    return Objects.equals(this.address, rosettaConstructionDeriveResponse.address) &&
        Objects.equals(this.accountIdentifier, rosettaConstructionDeriveResponse.accountIdentifier) &&
        Objects.equals(this.metadata, rosettaConstructionDeriveResponse.metadata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(address, accountIdentifier, metadata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaConstructionDeriveResponse {\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    accountIdentifier: ").append(toIndentedString(accountIdentifier)).append("\n");
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

