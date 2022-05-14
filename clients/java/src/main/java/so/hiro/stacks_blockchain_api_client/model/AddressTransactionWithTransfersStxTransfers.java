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
 * AddressTransactionWithTransfersStxTransfers
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class AddressTransactionWithTransfersStxTransfers {
  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private String amount;

  public static final String SERIALIZED_NAME_SENDER = "sender";
  @SerializedName(SERIALIZED_NAME_SENDER)
  private String sender;

  public static final String SERIALIZED_NAME_RECIPIENT = "recipient";
  @SerializedName(SERIALIZED_NAME_RECIPIENT)
  private String recipient;

  public AddressTransactionWithTransfersStxTransfers() { 
  }

  public AddressTransactionWithTransfersStxTransfers amount(String amount) {
    
    this.amount = amount;
    return this;
  }

   /**
   * Amount transferred in micro-STX as an integer string.
   * @return amount
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Amount transferred in micro-STX as an integer string.")

  public String getAmount() {
    return amount;
  }


  public void setAmount(String amount) {
    this.amount = amount;
  }


  public AddressTransactionWithTransfersStxTransfers sender(String sender) {
    
    this.sender = sender;
    return this;
  }

   /**
   * Principal that sent STX. This is unspecified if the STX were minted.
   * @return sender
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Principal that sent STX. This is unspecified if the STX were minted.")

  public String getSender() {
    return sender;
  }


  public void setSender(String sender) {
    this.sender = sender;
  }


  public AddressTransactionWithTransfersStxTransfers recipient(String recipient) {
    
    this.recipient = recipient;
    return this;
  }

   /**
   * Principal that received STX. This is unspecified if the STX were burned.
   * @return recipient
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Principal that received STX. This is unspecified if the STX were burned.")

  public String getRecipient() {
    return recipient;
  }


  public void setRecipient(String recipient) {
    this.recipient = recipient;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AddressTransactionWithTransfersStxTransfers addressTransactionWithTransfersStxTransfers = (AddressTransactionWithTransfersStxTransfers) o;
    return Objects.equals(this.amount, addressTransactionWithTransfersStxTransfers.amount) &&
        Objects.equals(this.sender, addressTransactionWithTransfersStxTransfers.sender) &&
        Objects.equals(this.recipient, addressTransactionWithTransfersStxTransfers.recipient);
  }

  @Override
  public int hashCode() {
    return Objects.hash(amount, sender, recipient);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AddressTransactionWithTransfersStxTransfers {\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    sender: ").append(toIndentedString(sender)).append("\n");
    sb.append("    recipient: ").append(toIndentedString(recipient)).append("\n");
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

