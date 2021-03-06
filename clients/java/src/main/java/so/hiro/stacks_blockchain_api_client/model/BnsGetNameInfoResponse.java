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
 * Get name details
 */
@ApiModel(description = "Get name details")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class BnsGetNameInfoResponse {
  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_BLOCKCHAIN = "blockchain";
  @SerializedName(SERIALIZED_NAME_BLOCKCHAIN)
  private String blockchain;

  public static final String SERIALIZED_NAME_EXPIRE_BLOCK = "expire_block";
  @SerializedName(SERIALIZED_NAME_EXPIRE_BLOCK)
  private Integer expireBlock;

  public static final String SERIALIZED_NAME_GRACE_PERIOD = "grace_period";
  @SerializedName(SERIALIZED_NAME_GRACE_PERIOD)
  private Integer gracePeriod;

  public static final String SERIALIZED_NAME_LAST_TXID = "last_txid";
  @SerializedName(SERIALIZED_NAME_LAST_TXID)
  private String lastTxid;

  public static final String SERIALIZED_NAME_RESOLVER = "resolver";
  @SerializedName(SERIALIZED_NAME_RESOLVER)
  private String resolver;

  public static final String SERIALIZED_NAME_STATUS = "status";
  @SerializedName(SERIALIZED_NAME_STATUS)
  private String status;

  public static final String SERIALIZED_NAME_ZONEFILE = "zonefile";
  @SerializedName(SERIALIZED_NAME_ZONEFILE)
  private String zonefile;

  public static final String SERIALIZED_NAME_ZONEFILE_HASH = "zonefile_hash";
  @SerializedName(SERIALIZED_NAME_ZONEFILE_HASH)
  private String zonefileHash;

  public BnsGetNameInfoResponse() { 
  }

  public BnsGetNameInfoResponse address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * Get address
   * @return address
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public BnsGetNameInfoResponse blockchain(String blockchain) {
    
    this.blockchain = blockchain;
    return this;
  }

   /**
   * Get blockchain
   * @return blockchain
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getBlockchain() {
    return blockchain;
  }


  public void setBlockchain(String blockchain) {
    this.blockchain = blockchain;
  }


  public BnsGetNameInfoResponse expireBlock(Integer expireBlock) {
    
    this.expireBlock = expireBlock;
    return this;
  }

   /**
   * Get expireBlock
   * minimum: 0
   * @return expireBlock
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getExpireBlock() {
    return expireBlock;
  }


  public void setExpireBlock(Integer expireBlock) {
    this.expireBlock = expireBlock;
  }


  public BnsGetNameInfoResponse gracePeriod(Integer gracePeriod) {
    
    this.gracePeriod = gracePeriod;
    return this;
  }

   /**
   * Get gracePeriod
   * minimum: 0
   * @return gracePeriod
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getGracePeriod() {
    return gracePeriod;
  }


  public void setGracePeriod(Integer gracePeriod) {
    this.gracePeriod = gracePeriod;
  }


  public BnsGetNameInfoResponse lastTxid(String lastTxid) {
    
    this.lastTxid = lastTxid;
    return this;
  }

   /**
   * Get lastTxid
   * @return lastTxid
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getLastTxid() {
    return lastTxid;
  }


  public void setLastTxid(String lastTxid) {
    this.lastTxid = lastTxid;
  }


  public BnsGetNameInfoResponse resolver(String resolver) {
    
    this.resolver = resolver;
    return this;
  }

   /**
   * Get resolver
   * @return resolver
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getResolver() {
    return resolver;
  }


  public void setResolver(String resolver) {
    this.resolver = resolver;
  }


  public BnsGetNameInfoResponse status(String status) {
    
    this.status = status;
    return this;
  }

   /**
   * Get status
   * @return status
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getStatus() {
    return status;
  }


  public void setStatus(String status) {
    this.status = status;
  }


  public BnsGetNameInfoResponse zonefile(String zonefile) {
    
    this.zonefile = zonefile;
    return this;
  }

   /**
   * Get zonefile
   * @return zonefile
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getZonefile() {
    return zonefile;
  }


  public void setZonefile(String zonefile) {
    this.zonefile = zonefile;
  }


  public BnsGetNameInfoResponse zonefileHash(String zonefileHash) {
    
    this.zonefileHash = zonefileHash;
    return this;
  }

   /**
   * Get zonefileHash
   * @return zonefileHash
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getZonefileHash() {
    return zonefileHash;
  }


  public void setZonefileHash(String zonefileHash) {
    this.zonefileHash = zonefileHash;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BnsGetNameInfoResponse bnsGetNameInfoResponse = (BnsGetNameInfoResponse) o;
    return Objects.equals(this.address, bnsGetNameInfoResponse.address) &&
        Objects.equals(this.blockchain, bnsGetNameInfoResponse.blockchain) &&
        Objects.equals(this.expireBlock, bnsGetNameInfoResponse.expireBlock) &&
        Objects.equals(this.gracePeriod, bnsGetNameInfoResponse.gracePeriod) &&
        Objects.equals(this.lastTxid, bnsGetNameInfoResponse.lastTxid) &&
        Objects.equals(this.resolver, bnsGetNameInfoResponse.resolver) &&
        Objects.equals(this.status, bnsGetNameInfoResponse.status) &&
        Objects.equals(this.zonefile, bnsGetNameInfoResponse.zonefile) &&
        Objects.equals(this.zonefileHash, bnsGetNameInfoResponse.zonefileHash);
  }

  @Override
  public int hashCode() {
    return Objects.hash(address, blockchain, expireBlock, gracePeriod, lastTxid, resolver, status, zonefile, zonefileHash);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BnsGetNameInfoResponse {\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    blockchain: ").append(toIndentedString(blockchain)).append("\n");
    sb.append("    expireBlock: ").append(toIndentedString(expireBlock)).append("\n");
    sb.append("    gracePeriod: ").append(toIndentedString(gracePeriod)).append("\n");
    sb.append("    lastTxid: ").append(toIndentedString(lastTxid)).append("\n");
    sb.append("    resolver: ").append(toIndentedString(resolver)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    zonefile: ").append(toIndentedString(zonefile)).append("\n");
    sb.append("    zonefileHash: ").append(toIndentedString(zonefileHash)).append("\n");
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

