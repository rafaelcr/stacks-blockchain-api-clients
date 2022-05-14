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
import so.hiro.stacks_blockchain_api_client.model.OtherTransactionIdentifier;
import so.hiro.stacks_blockchain_api_client.model.RosettaBlock;

/**
 * A BlockResponse includes a fully-populated block or a partially-populated block with a list of other transactions to fetch (other_transactions). As a result of the consensus algorithm of some blockchains, blocks can be omitted (i.e. certain block indexes can be skipped). If a query for one of these omitted indexes is made, the response should not include a Block object. It is VERY important to note that blocks MUST still form a canonical, connected chain of blocks where each block has a unique index. In other words, the PartialBlockIdentifier of a block after an omitted block should reference the last non-omitted block.
 */
@ApiModel(description = "A BlockResponse includes a fully-populated block or a partially-populated block with a list of other transactions to fetch (other_transactions). As a result of the consensus algorithm of some blockchains, blocks can be omitted (i.e. certain block indexes can be skipped). If a query for one of these omitted indexes is made, the response should not include a Block object. It is VERY important to note that blocks MUST still form a canonical, connected chain of blocks where each block has a unique index. In other words, the PartialBlockIdentifier of a block after an omitted block should reference the last non-omitted block.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class RosettaBlockResponse {
  public static final String SERIALIZED_NAME_BLOCK = "block";
  @SerializedName(SERIALIZED_NAME_BLOCK)
  private RosettaBlock block;

  public static final String SERIALIZED_NAME_OTHER_TRANSACTIONS = "other_transactions";
  @SerializedName(SERIALIZED_NAME_OTHER_TRANSACTIONS)
  private List<OtherTransactionIdentifier> otherTransactions = null;

  public RosettaBlockResponse() { 
  }

  public RosettaBlockResponse block(RosettaBlock block) {
    
    this.block = block;
    return this;
  }

   /**
   * Get block
   * @return block
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public RosettaBlock getBlock() {
    return block;
  }


  public void setBlock(RosettaBlock block) {
    this.block = block;
  }


  public RosettaBlockResponse otherTransactions(List<OtherTransactionIdentifier> otherTransactions) {
    
    this.otherTransactions = otherTransactions;
    return this;
  }

  public RosettaBlockResponse addOtherTransactionsItem(OtherTransactionIdentifier otherTransactionsItem) {
    if (this.otherTransactions == null) {
      this.otherTransactions = new ArrayList<OtherTransactionIdentifier>();
    }
    this.otherTransactions.add(otherTransactionsItem);
    return this;
  }

   /**
   * Some blockchains may require additional transactions to be fetched that weren&#39;t returned in the block response (ex: block only returns transaction hashes). For blockchains with a lot of transactions in each block, this can be very useful as consumers can concurrently fetch all transactions returned.
   * @return otherTransactions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Some blockchains may require additional transactions to be fetched that weren't returned in the block response (ex: block only returns transaction hashes). For blockchains with a lot of transactions in each block, this can be very useful as consumers can concurrently fetch all transactions returned.")

  public List<OtherTransactionIdentifier> getOtherTransactions() {
    return otherTransactions;
  }


  public void setOtherTransactions(List<OtherTransactionIdentifier> otherTransactions) {
    this.otherTransactions = otherTransactions;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RosettaBlockResponse rosettaBlockResponse = (RosettaBlockResponse) o;
    return Objects.equals(this.block, rosettaBlockResponse.block) &&
        Objects.equals(this.otherTransactions, rosettaBlockResponse.otherTransactions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(block, otherTransactions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RosettaBlockResponse {\n");
    sb.append("    block: ").append(toIndentedString(block)).append("\n");
    sb.append("    otherTransactions: ").append(toIndentedString(otherTransactions)).append("\n");
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
