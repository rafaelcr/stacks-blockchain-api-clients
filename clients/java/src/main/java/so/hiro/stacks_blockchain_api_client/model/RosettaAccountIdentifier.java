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
 * The account_identifier uniquely identifies an account within a network. All fields in the account_identifier are utilized to determine this uniqueness (including the metadata field, if populated).
 */
@ApiModel(description = "The account_identifier uniquely identifies an account within a network. All fields in the account_identifier are utilized to determine this uniqueness (including the metadata field, if populated).")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaAccountIdentifier {
  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_SUB_ACCOUNT = "sub_account";
  @SerializedName(SERIALIZED_NAME_SUB_ACCOUNT)
  private Object subAccount = null;

  public static final String SERIALIZED_NAME_METADATA = "metadata";
  @SerializedName(SERIALIZED_NAME_METADATA)
  private Object metadata;

  public RosettaAccountIdentifier() { 
  }

  public RosettaAccountIdentifier address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * The address may be a cryptographic public key (or some encoding of it) or a provided username.
   * @return address
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The address may be a cryptographic public key (or some encoding of it) or a provided username.")

  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public RosettaAccountIdentifier subAccount(Object subAccount) {
    
    this.subAccount = subAccount;
    return this;
  }

   /**
   * Get subAccount
   * @return subAccount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Object getSubAccount() {
    return subAccount;
  }


  public void setSubAccount(Object subAccount) {
    this.subAccount = subAccount;
  }


  public RosettaAccountIdentifier metadata(Object metadata) {
    
    this.metadata = metadata;
    return this;
  }

   /**
   * Blockchains that utilize a username model (where the address is not a derivative of a cryptographic public key) should specify the public key(s) owned by the address in metadata.
   * @return metadata
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Blockchains that utilize a username model (where the address is not a derivative of a cryptographic public key) should specify the public key(s) owned by the address in metadata.")

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
    RosettaAccountIdentifier rosettaAccountIdentifier = (RosettaAccountIdentifier) o;
    return Objects.equals(this.address, rosettaAccountIdentifier.address) &&
        Objects.equals(this.subAccount, rosettaAccountIdentifier.subAccount) &&
        Objects.equals(this.metadata, rosettaAccountIdentifier.metadata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(address, subAccount, metadata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaAccountIdentifier {\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    subAccount: ").append(toIndentedString(subAccount)).append("\n");
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

