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
 * The latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions
 */
@ApiModel(description = "The latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class AddressNonces {
  public static final String SERIALIZED_NAME_LAST_MEMPOOL_TX_NONCE = "last_mempool_tx_nonce";
  @SerializedName(SERIALIZED_NAME_LAST_MEMPOOL_TX_NONCE)
  private Integer lastMempoolTxNonce;

  public static final String SERIALIZED_NAME_LAST_EXECUTED_TX_NONCE = "last_executed_tx_nonce";
  @SerializedName(SERIALIZED_NAME_LAST_EXECUTED_TX_NONCE)
  private Integer lastExecutedTxNonce;

  public static final String SERIALIZED_NAME_POSSIBLE_NEXT_NONCE = "possible_next_nonce";
  @SerializedName(SERIALIZED_NAME_POSSIBLE_NEXT_NONCE)
  private Integer possibleNextNonce;

  public static final String SERIALIZED_NAME_DETECTED_MISSING_NONCES = "detected_missing_nonces";
  @SerializedName(SERIALIZED_NAME_DETECTED_MISSING_NONCES)
  private List<Integer> detectedMissingNonces = new ArrayList<Integer>();

  public AddressNonces() { 
  }

  public AddressNonces lastMempoolTxNonce(Integer lastMempoolTxNonce) {
    
    this.lastMempoolTxNonce = lastMempoolTxNonce;
    return this;
  }

   /**
   * The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address.
   * @return lastMempoolTxNonce
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address.")

  public Integer getLastMempoolTxNonce() {
    return lastMempoolTxNonce;
  }


  public void setLastMempoolTxNonce(Integer lastMempoolTxNonce) {
    this.lastMempoolTxNonce = lastMempoolTxNonce;
  }


  public AddressNonces lastExecutedTxNonce(Integer lastExecutedTxNonce) {
    
    this.lastExecutedTxNonce = lastExecutedTxNonce;
    return this;
  }

   /**
   * The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address.
   * @return lastExecutedTxNonce
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address.")

  public Integer getLastExecutedTxNonce() {
    return lastExecutedTxNonce;
  }


  public void setLastExecutedTxNonce(Integer lastExecutedTxNonce) {
    this.lastExecutedTxNonce = lastExecutedTxNonce;
  }


  public AddressNonces possibleNextNonce(Integer possibleNextNonce) {
    
    this.possibleNextNonce = possibleNextNonce;
    return this;
  }

   /**
   * The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API&#39;s mempool or transactions aren&#39;t fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called.
   * @return possibleNextNonce
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called.")

  public Integer getPossibleNextNonce() {
    return possibleNextNonce;
  }


  public void setPossibleNextNonce(Integer possibleNextNonce) {
    this.possibleNextNonce = possibleNextNonce;
  }


  public AddressNonces detectedMissingNonces(List<Integer> detectedMissingNonces) {
    
    this.detectedMissingNonces = detectedMissingNonces;
    return this;
  }

  public AddressNonces addDetectedMissingNoncesItem(Integer detectedMissingNoncesItem) {
    this.detectedMissingNonces.add(detectedMissingNoncesItem);
    return this;
  }

   /**
   * Nonces that appear to be missing and likely causing a mempool transaction to be stuck.
   * @return detectedMissingNonces
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Nonces that appear to be missing and likely causing a mempool transaction to be stuck.")

  public List<Integer> getDetectedMissingNonces() {
    return detectedMissingNonces;
  }


  public void setDetectedMissingNonces(List<Integer> detectedMissingNonces) {
    this.detectedMissingNonces = detectedMissingNonces;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AddressNonces addressNonces = (AddressNonces) o;
    return Objects.equals(this.lastMempoolTxNonce, addressNonces.lastMempoolTxNonce) &&
        Objects.equals(this.lastExecutedTxNonce, addressNonces.lastExecutedTxNonce) &&
        Objects.equals(this.possibleNextNonce, addressNonces.possibleNextNonce) &&
        Objects.equals(this.detectedMissingNonces, addressNonces.detectedMissingNonces);
  }

  @Override
  public int hashCode() {
    return Objects.hash(lastMempoolTxNonce, lastExecutedTxNonce, possibleNextNonce, detectedMissingNonces);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AddressNonces {\n");
    sb.append("    lastMempoolTxNonce: ").append(toIndentedString(lastMempoolTxNonce)).append("\n");
    sb.append("    lastExecutedTxNonce: ").append(toIndentedString(lastExecutedTxNonce)).append("\n");
    sb.append("    possibleNextNonce: ").append(toIndentedString(possibleNextNonce)).append("\n");
    sb.append("    detectedMissingNonces: ").append(toIndentedString(detectedMissingNonces)).append("\n");
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

