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
import so.hiro.stacks_blockchain_api_client.model.RosettaSignature;

/**
 * RosettaConstructionCombineRequest is the input to the /construction/combine endpoint. It contains the unsigned transaction blob returned by /construction/payloads and all required signatures to create a network transaction.
 */
@ApiModel(description = "RosettaConstructionCombineRequest is the input to the /construction/combine endpoint. It contains the unsigned transaction blob returned by /construction/payloads and all required signatures to create a network transaction.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaConstructionCombineRequest {
  public static final String SERIALIZED_NAME_NETWORK_IDENTIFIER = "network_identifier";
  @SerializedName(SERIALIZED_NAME_NETWORK_IDENTIFIER)
  private Object networkIdentifier = null;

  public static final String SERIALIZED_NAME_UNSIGNED_TRANSACTION = "unsigned_transaction";
  @SerializedName(SERIALIZED_NAME_UNSIGNED_TRANSACTION)
  private String unsignedTransaction;

  public static final String SERIALIZED_NAME_SIGNATURES = "signatures";
  @SerializedName(SERIALIZED_NAME_SIGNATURES)
  private List<RosettaSignature> signatures = new ArrayList<RosettaSignature>();

  public RosettaConstructionCombineRequest() { 
  }

  public RosettaConstructionCombineRequest networkIdentifier(Object networkIdentifier) {
    
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


  public RosettaConstructionCombineRequest unsignedTransaction(String unsignedTransaction) {
    
    this.unsignedTransaction = unsignedTransaction;
    return this;
  }

   /**
   * Get unsignedTransaction
   * @return unsignedTransaction
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getUnsignedTransaction() {
    return unsignedTransaction;
  }


  public void setUnsignedTransaction(String unsignedTransaction) {
    this.unsignedTransaction = unsignedTransaction;
  }


  public RosettaConstructionCombineRequest signatures(List<RosettaSignature> signatures) {
    
    this.signatures = signatures;
    return this;
  }

  public RosettaConstructionCombineRequest addSignaturesItem(RosettaSignature signaturesItem) {
    this.signatures.add(signaturesItem);
    return this;
  }

   /**
   * Get signatures
   * @return signatures
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<RosettaSignature> getSignatures() {
    return signatures;
  }


  public void setSignatures(List<RosettaSignature> signatures) {
    this.signatures = signatures;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RosettaConstructionCombineRequest rosettaConstructionCombineRequest = (RosettaConstructionCombineRequest) o;
    return Objects.equals(this.networkIdentifier, rosettaConstructionCombineRequest.networkIdentifier) &&
        Objects.equals(this.unsignedTransaction, rosettaConstructionCombineRequest.unsignedTransaction) &&
        Objects.equals(this.signatures, rosettaConstructionCombineRequest.signatures);
  }

  @Override
  public int hashCode() {
    return Objects.hash(networkIdentifier, unsignedTransaction, signatures);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaConstructionCombineRequest {\n");
    sb.append("    networkIdentifier: ").append(toIndentedString(networkIdentifier)).append("\n");
    sb.append("    unsignedTransaction: ").append(toIndentedString(unsignedTransaction)).append("\n");
    sb.append("    signatures: ").append(toIndentedString(signatures)).append("\n");
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
