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
import so.hiro.stacks_blockchain_api_client.model.RosettaMaxFeeAmount;

/**
 * ConstructionPreprocessRequest is passed to the /construction/preprocess endpoint so that a Rosetta implementation can determine which metadata it needs to request for construction
 */
@ApiModel(description = "ConstructionPreprocessRequest is passed to the /construction/preprocess endpoint so that a Rosetta implementation can determine which metadata it needs to request for construction")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaConstructionPreprocessRequest {
  public static final String SERIALIZED_NAME_NETWORK_IDENTIFIER = "network_identifier";
  @SerializedName(SERIALIZED_NAME_NETWORK_IDENTIFIER)
  private Object networkIdentifier = null;

  public static final String SERIALIZED_NAME_OPERATIONS = "operations";
  @SerializedName(SERIALIZED_NAME_OPERATIONS)
  private List<Object> operations = new ArrayList<Object>();

  public static final String SERIALIZED_NAME_METADATA = "metadata";
  @SerializedName(SERIALIZED_NAME_METADATA)
  private Object metadata;

  public static final String SERIALIZED_NAME_MAX_FEE = "max_fee";
  @SerializedName(SERIALIZED_NAME_MAX_FEE)
  private List<RosettaMaxFeeAmount> maxFee = null;

  public static final String SERIALIZED_NAME_SUGGESTED_FEE_MULTIPLIER = "suggested_fee_multiplier";
  @SerializedName(SERIALIZED_NAME_SUGGESTED_FEE_MULTIPLIER)
  private Integer suggestedFeeMultiplier;

  public RosettaConstructionPreprocessRequest() { 
  }

  public RosettaConstructionPreprocessRequest networkIdentifier(Object networkIdentifier) {
    
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


  public RosettaConstructionPreprocessRequest operations(List<Object> operations) {
    
    this.operations = operations;
    return this;
  }

  public RosettaConstructionPreprocessRequest addOperationsItem(Object operationsItem) {
    this.operations.add(operationsItem);
    return this;
  }

   /**
   * Get operations
   * @return operations
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<Object> getOperations() {
    return operations;
  }


  public void setOperations(List<Object> operations) {
    this.operations = operations;
  }


  public RosettaConstructionPreprocessRequest metadata(Object metadata) {
    
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


  public RosettaConstructionPreprocessRequest maxFee(List<RosettaMaxFeeAmount> maxFee) {
    
    this.maxFee = maxFee;
    return this;
  }

  public RosettaConstructionPreprocessRequest addMaxFeeItem(RosettaMaxFeeAmount maxFeeItem) {
    if (this.maxFee == null) {
      this.maxFee = new ArrayList<RosettaMaxFeeAmount>();
    }
    this.maxFee.add(maxFeeItem);
    return this;
  }

   /**
   * Get maxFee
   * @return maxFee
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<RosettaMaxFeeAmount> getMaxFee() {
    return maxFee;
  }


  public void setMaxFee(List<RosettaMaxFeeAmount> maxFee) {
    this.maxFee = maxFee;
  }


  public RosettaConstructionPreprocessRequest suggestedFeeMultiplier(Integer suggestedFeeMultiplier) {
    
    this.suggestedFeeMultiplier = suggestedFeeMultiplier;
    return this;
  }

   /**
   *  The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided).
   * @return suggestedFeeMultiplier
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = " The caller can also provide a suggested fee multiplier to indicate that the suggested fee should be scaled. This may be used to set higher fees for urgent transactions or to pay lower fees when there is less urgency. It is assumed that providing a very low multiplier (like 0.0001) will never lead to a transaction being created with a fee less than the minimum network fee (if applicable). In the case that the caller provides both a max fee and a suggested fee multiplier, the max fee will set an upper bound on the suggested fee (regardless of the multiplier provided).")

  public Integer getSuggestedFeeMultiplier() {
    return suggestedFeeMultiplier;
  }


  public void setSuggestedFeeMultiplier(Integer suggestedFeeMultiplier) {
    this.suggestedFeeMultiplier = suggestedFeeMultiplier;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RosettaConstructionPreprocessRequest rosettaConstructionPreprocessRequest = (RosettaConstructionPreprocessRequest) o;
    return Objects.equals(this.networkIdentifier, rosettaConstructionPreprocessRequest.networkIdentifier) &&
        Objects.equals(this.operations, rosettaConstructionPreprocessRequest.operations) &&
        Objects.equals(this.metadata, rosettaConstructionPreprocessRequest.metadata) &&
        Objects.equals(this.maxFee, rosettaConstructionPreprocessRequest.maxFee) &&
        Objects.equals(this.suggestedFeeMultiplier, rosettaConstructionPreprocessRequest.suggestedFeeMultiplier);
  }

  @Override
  public int hashCode() {
    return Objects.hash(networkIdentifier, operations, metadata, maxFee, suggestedFeeMultiplier);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaConstructionPreprocessRequest {\n");
    sb.append("    networkIdentifier: ").append(toIndentedString(networkIdentifier)).append("\n");
    sb.append("    operations: ").append(toIndentedString(operations)).append("\n");
    sb.append("    metadata: ").append(toIndentedString(metadata)).append("\n");
    sb.append("    maxFee: ").append(toIndentedString(maxFee)).append("\n");
    sb.append("    suggestedFeeMultiplier: ").append(toIndentedString(suggestedFeeMultiplier)).append("\n");
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

