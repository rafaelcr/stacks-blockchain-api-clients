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

/**
 * Describes representation of a Type-0 Stacks 2.0 transaction. https://github.com/blockstack/stacks-blockchain/blob/master/sip/sip-005-blocks-and-transactions.md#type-0-transferring-an-asset
 */
@ApiModel(description = "Describes representation of a Type-0 Stacks 2.0 transaction. https://github.com/blockstack/stacks-blockchain/blob/master/sip/sip-005-blocks-and-transactions.md#type-0-transferring-an-asset")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class ReadOnlyFunctionArgs {
  public static final String SERIALIZED_NAME_SENDER = "sender";
  @SerializedName(SERIALIZED_NAME_SENDER)
  private String sender;

  public static final String SERIALIZED_NAME_ARGUMENTS = "arguments";
  @SerializedName(SERIALIZED_NAME_ARGUMENTS)
  private List<String> arguments = new ArrayList<String>();

  public ReadOnlyFunctionArgs() { 
  }

  public ReadOnlyFunctionArgs sender(String sender) {
    
    this.sender = sender;
    return this;
  }

   /**
   * The simulated tx-sender
   * @return sender
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The simulated tx-sender")

  public String getSender() {
    return sender;
  }


  public void setSender(String sender) {
    this.sender = sender;
  }


  public ReadOnlyFunctionArgs arguments(List<String> arguments) {
    
    this.arguments = arguments;
    return this;
  }

  public ReadOnlyFunctionArgs addArgumentsItem(String argumentsItem) {
    this.arguments.add(argumentsItem);
    return this;
  }

   /**
   * An array of hex serialized Clarity values
   * @return arguments
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "An array of hex serialized Clarity values")

  public List<String> getArguments() {
    return arguments;
  }


  public void setArguments(List<String> arguments) {
    this.arguments = arguments;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReadOnlyFunctionArgs readOnlyFunctionArgs = (ReadOnlyFunctionArgs) o;
    return Objects.equals(this.sender, readOnlyFunctionArgs.sender) &&
        Objects.equals(this.arguments, readOnlyFunctionArgs.arguments);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sender, arguments);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReadOnlyFunctionArgs {\n");
    sb.append("    sender: ").append(toIndentedString(sender)).append("\n");
    sb.append("    arguments: ").append(toIndentedString(arguments)).append("\n");
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

