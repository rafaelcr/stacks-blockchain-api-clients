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
import java.math.BigDecimal;

/**
 * A inbound STX transfer with a memo
 */
@ApiModel(description = "A inbound STX transfer with a memo")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class InboundStxTransfer {
  public static final String SERIALIZED_NAME_SENDER = "sender";
  @SerializedName(SERIALIZED_NAME_SENDER)
  private String sender;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private String amount;

  public static final String SERIALIZED_NAME_MEMO = "memo";
  @SerializedName(SERIALIZED_NAME_MEMO)
  private String memo;

  public static final String SERIALIZED_NAME_BLOCK_HEIGHT = "block_height";
  @SerializedName(SERIALIZED_NAME_BLOCK_HEIGHT)
  private BigDecimal blockHeight;

  public static final String SERIALIZED_NAME_TX_ID = "tx_id";
  @SerializedName(SERIALIZED_NAME_TX_ID)
  private String txId;

  /**
   * Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction
   */
  @JsonAdapter(TransferTypeEnum.Adapter.class)
  public enum TransferTypeEnum {
    BULK_SEND("bulk-send"),
    
    STX_TRANSFER("stx-transfer");

    private String value;

    TransferTypeEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static TransferTypeEnum fromValue(String value) {
      for (TransferTypeEnum b : TransferTypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<TransferTypeEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final TransferTypeEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public TransferTypeEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return TransferTypeEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_TRANSFER_TYPE = "transfer_type";
  @SerializedName(SERIALIZED_NAME_TRANSFER_TYPE)
  private TransferTypeEnum transferType;

  public static final String SERIALIZED_NAME_TX_INDEX = "tx_index";
  @SerializedName(SERIALIZED_NAME_TX_INDEX)
  private BigDecimal txIndex;

  public InboundStxTransfer() { 
  }

  public InboundStxTransfer sender(String sender) {
    
    this.sender = sender;
    return this;
  }

   /**
   * Principal that sent this transfer
   * @return sender
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Principal that sent this transfer")

  public String getSender() {
    return sender;
  }


  public void setSender(String sender) {
    this.sender = sender;
  }


  public InboundStxTransfer amount(String amount) {
    
    this.amount = amount;
    return this;
  }

   /**
   * Transfer amount in micro-STX as integer string
   * @return amount
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Transfer amount in micro-STX as integer string")

  public String getAmount() {
    return amount;
  }


  public void setAmount(String amount) {
    this.amount = amount;
  }


  public InboundStxTransfer memo(String memo) {
    
    this.memo = memo;
    return this;
  }

   /**
   * Hex encoded memo bytes associated with the transfer
   * @return memo
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Hex encoded memo bytes associated with the transfer")

  public String getMemo() {
    return memo;
  }


  public void setMemo(String memo) {
    this.memo = memo;
  }


  public InboundStxTransfer blockHeight(BigDecimal blockHeight) {
    
    this.blockHeight = blockHeight;
    return this;
  }

   /**
   * Block height at which this transfer occurred
   * @return blockHeight
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Block height at which this transfer occurred")

  public BigDecimal getBlockHeight() {
    return blockHeight;
  }


  public void setBlockHeight(BigDecimal blockHeight) {
    this.blockHeight = blockHeight;
  }


  public InboundStxTransfer txId(String txId) {
    
    this.txId = txId;
    return this;
  }

   /**
   * The transaction ID in which this transfer occurred
   * @return txId
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The transaction ID in which this transfer occurred")

  public String getTxId() {
    return txId;
  }


  public void setTxId(String txId) {
    this.txId = txId;
  }


  public InboundStxTransfer transferType(TransferTypeEnum transferType) {
    
    this.transferType = transferType;
    return this;
  }

   /**
   * Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction
   * @return transferType
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Indicates if the transfer is from a stx-transfer transaction or a contract-call transaction")

  public TransferTypeEnum getTransferType() {
    return transferType;
  }


  public void setTransferType(TransferTypeEnum transferType) {
    this.transferType = transferType;
  }


  public InboundStxTransfer txIndex(BigDecimal txIndex) {
    
    this.txIndex = txIndex;
    return this;
  }

   /**
   * Index of the transaction within a block
   * @return txIndex
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Index of the transaction within a block")

  public BigDecimal getTxIndex() {
    return txIndex;
  }


  public void setTxIndex(BigDecimal txIndex) {
    this.txIndex = txIndex;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InboundStxTransfer inboundStxTransfer = (InboundStxTransfer) o;
    return Objects.equals(this.sender, inboundStxTransfer.sender) &&
        Objects.equals(this.amount, inboundStxTransfer.amount) &&
        Objects.equals(this.memo, inboundStxTransfer.memo) &&
        Objects.equals(this.blockHeight, inboundStxTransfer.blockHeight) &&
        Objects.equals(this.txId, inboundStxTransfer.txId) &&
        Objects.equals(this.transferType, inboundStxTransfer.transferType) &&
        Objects.equals(this.txIndex, inboundStxTransfer.txIndex);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sender, amount, memo, blockHeight, txId, transferType, txIndex);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InboundStxTransfer {\n");
    sb.append("    sender: ").append(toIndentedString(sender)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    memo: ").append(toIndentedString(memo)).append("\n");
    sb.append("    blockHeight: ").append(toIndentedString(blockHeight)).append("\n");
    sb.append("    txId: ").append(toIndentedString(txId)).append("\n");
    sb.append("    transferType: ").append(toIndentedString(transferType)).append("\n");
    sb.append("    txIndex: ").append(toIndentedString(txIndex)).append("\n");
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

