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
 * NonFungibleTokenMetadata
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class NonFungibleTokenMetadata {
  public static final String SERIALIZED_NAME_TOKEN_URI = "token_uri";
  @SerializedName(SERIALIZED_NAME_TOKEN_URI)
  private String tokenUri;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_IMAGE_URI = "image_uri";
  @SerializedName(SERIALIZED_NAME_IMAGE_URI)
  private String imageUri;

  public static final String SERIALIZED_NAME_IMAGE_CANONICAL_URI = "image_canonical_uri";
  @SerializedName(SERIALIZED_NAME_IMAGE_CANONICAL_URI)
  private String imageCanonicalUri;

  public static final String SERIALIZED_NAME_TX_ID = "tx_id";
  @SerializedName(SERIALIZED_NAME_TX_ID)
  private String txId;

  public static final String SERIALIZED_NAME_SENDER_ADDRESS = "sender_address";
  @SerializedName(SERIALIZED_NAME_SENDER_ADDRESS)
  private String senderAddress;

  public NonFungibleTokenMetadata() { 
  }

  public NonFungibleTokenMetadata tokenUri(String tokenUri) {
    
    this.tokenUri = tokenUri;
    return this;
  }

   /**
   * An optional string that is a valid URI which resolves to this token&#39;s metadata. Can be empty.
   * @return tokenUri
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "An optional string that is a valid URI which resolves to this token's metadata. Can be empty.")

  public String getTokenUri() {
    return tokenUri;
  }


  public void setTokenUri(String tokenUri) {
    this.tokenUri = tokenUri;
  }


  public NonFungibleTokenMetadata name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Identifies the asset to which this token represents
   * @return name
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Identifies the asset to which this token represents")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public NonFungibleTokenMetadata description(String description) {
    
    this.description = description;
    return this;
  }

   /**
   * Describes the asset to which this token represents
   * @return description
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Describes the asset to which this token represents")

  public String getDescription() {
    return description;
  }


  public void setDescription(String description) {
    this.description = description;
  }


  public NonFungibleTokenMetadata imageUri(String imageUri) {
    
    this.imageUri = imageUri;
    return this;
  }

   /**
   * A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI.
   * @return imageUri
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI.")

  public String getImageUri() {
    return imageUri;
  }


  public void setImageUri(String imageUri) {
    this.imageUri = imageUri;
  }


  public NonFungibleTokenMetadata imageCanonicalUri(String imageCanonicalUri) {
    
    this.imageCanonicalUri = imageCanonicalUri;
    return this;
  }

   /**
   * The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive.
   * @return imageCanonicalUri
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive.")

  public String getImageCanonicalUri() {
    return imageCanonicalUri;
  }


  public void setImageCanonicalUri(String imageCanonicalUri) {
    this.imageCanonicalUri = imageCanonicalUri;
  }


  public NonFungibleTokenMetadata txId(String txId) {
    
    this.txId = txId;
    return this;
  }

   /**
   * Tx id that deployed the contract
   * @return txId
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Tx id that deployed the contract")

  public String getTxId() {
    return txId;
  }


  public void setTxId(String txId) {
    this.txId = txId;
  }


  public NonFungibleTokenMetadata senderAddress(String senderAddress) {
    
    this.senderAddress = senderAddress;
    return this;
  }

   /**
   * principle that deployed the contract
   * @return senderAddress
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "principle that deployed the contract")

  public String getSenderAddress() {
    return senderAddress;
  }


  public void setSenderAddress(String senderAddress) {
    this.senderAddress = senderAddress;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NonFungibleTokenMetadata nonFungibleTokenMetadata = (NonFungibleTokenMetadata) o;
    return Objects.equals(this.tokenUri, nonFungibleTokenMetadata.tokenUri) &&
        Objects.equals(this.name, nonFungibleTokenMetadata.name) &&
        Objects.equals(this.description, nonFungibleTokenMetadata.description) &&
        Objects.equals(this.imageUri, nonFungibleTokenMetadata.imageUri) &&
        Objects.equals(this.imageCanonicalUri, nonFungibleTokenMetadata.imageCanonicalUri) &&
        Objects.equals(this.txId, nonFungibleTokenMetadata.txId) &&
        Objects.equals(this.senderAddress, nonFungibleTokenMetadata.senderAddress);
  }

  @Override
  public int hashCode() {
    return Objects.hash(tokenUri, name, description, imageUri, imageCanonicalUri, txId, senderAddress);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NonFungibleTokenMetadata {\n");
    sb.append("    tokenUri: ").append(toIndentedString(tokenUri)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    imageUri: ").append(toIndentedString(imageUri)).append("\n");
    sb.append("    imageCanonicalUri: ").append(toIndentedString(imageCanonicalUri)).append("\n");
    sb.append("    txId: ").append(toIndentedString(txId)).append("\n");
    sb.append("    senderAddress: ").append(toIndentedString(senderAddress)).append("\n");
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

