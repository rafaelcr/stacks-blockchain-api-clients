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
 * GET request to get contract interface
 */
@ApiModel(description = "GET request to get contract interface")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-14T17:31:43.521-05:00[America/Monterrey]")
public class ContractInterfaceResponse {
  public static final String SERIALIZED_NAME_FUNCTIONS = "functions";
  @SerializedName(SERIALIZED_NAME_FUNCTIONS)
  private List<Object> functions = new ArrayList<Object>();

  public static final String SERIALIZED_NAME_VARIABLES = "variables";
  @SerializedName(SERIALIZED_NAME_VARIABLES)
  private List<Object> variables = new ArrayList<Object>();

  public static final String SERIALIZED_NAME_MAPS = "maps";
  @SerializedName(SERIALIZED_NAME_MAPS)
  private List<Object> maps = new ArrayList<Object>();

  public static final String SERIALIZED_NAME_FUNGIBLE_TOKENS = "fungible_tokens";
  @SerializedName(SERIALIZED_NAME_FUNGIBLE_TOKENS)
  private List<Object> fungibleTokens = new ArrayList<Object>();

  public static final String SERIALIZED_NAME_NON_FUNGIBLE_TOKENS = "non_fungible_tokens";
  @SerializedName(SERIALIZED_NAME_NON_FUNGIBLE_TOKENS)
  private List<Object> nonFungibleTokens = new ArrayList<Object>();

  public ContractInterfaceResponse() { 
  }

  public ContractInterfaceResponse functions(List<Object> functions) {
    
    this.functions = functions;
    return this;
  }

  public ContractInterfaceResponse addFunctionsItem(Object functionsItem) {
    this.functions.add(functionsItem);
    return this;
  }

   /**
   * List of defined methods
   * @return functions
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "List of defined methods")

  public List<Object> getFunctions() {
    return functions;
  }


  public void setFunctions(List<Object> functions) {
    this.functions = functions;
  }


  public ContractInterfaceResponse variables(List<Object> variables) {
    
    this.variables = variables;
    return this;
  }

  public ContractInterfaceResponse addVariablesItem(Object variablesItem) {
    this.variables.add(variablesItem);
    return this;
  }

   /**
   * List of defined variables
   * @return variables
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "List of defined variables")

  public List<Object> getVariables() {
    return variables;
  }


  public void setVariables(List<Object> variables) {
    this.variables = variables;
  }


  public ContractInterfaceResponse maps(List<Object> maps) {
    
    this.maps = maps;
    return this;
  }

  public ContractInterfaceResponse addMapsItem(Object mapsItem) {
    this.maps.add(mapsItem);
    return this;
  }

   /**
   * List of defined data-maps
   * @return maps
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "List of defined data-maps")

  public List<Object> getMaps() {
    return maps;
  }


  public void setMaps(List<Object> maps) {
    this.maps = maps;
  }


  public ContractInterfaceResponse fungibleTokens(List<Object> fungibleTokens) {
    
    this.fungibleTokens = fungibleTokens;
    return this;
  }

  public ContractInterfaceResponse addFungibleTokensItem(Object fungibleTokensItem) {
    this.fungibleTokens.add(fungibleTokensItem);
    return this;
  }

   /**
   * List of fungible tokens in the contract
   * @return fungibleTokens
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "List of fungible tokens in the contract")

  public List<Object> getFungibleTokens() {
    return fungibleTokens;
  }


  public void setFungibleTokens(List<Object> fungibleTokens) {
    this.fungibleTokens = fungibleTokens;
  }


  public ContractInterfaceResponse nonFungibleTokens(List<Object> nonFungibleTokens) {
    
    this.nonFungibleTokens = nonFungibleTokens;
    return this;
  }

  public ContractInterfaceResponse addNonFungibleTokensItem(Object nonFungibleTokensItem) {
    this.nonFungibleTokens.add(nonFungibleTokensItem);
    return this;
  }

   /**
   * List of non-fungible tokens in the contract
   * @return nonFungibleTokens
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "List of non-fungible tokens in the contract")

  public List<Object> getNonFungibleTokens() {
    return nonFungibleTokens;
  }


  public void setNonFungibleTokens(List<Object> nonFungibleTokens) {
    this.nonFungibleTokens = nonFungibleTokens;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ContractInterfaceResponse contractInterfaceResponse = (ContractInterfaceResponse) o;
    return Objects.equals(this.functions, contractInterfaceResponse.functions) &&
        Objects.equals(this.variables, contractInterfaceResponse.variables) &&
        Objects.equals(this.maps, contractInterfaceResponse.maps) &&
        Objects.equals(this.fungibleTokens, contractInterfaceResponse.fungibleTokens) &&
        Objects.equals(this.nonFungibleTokens, contractInterfaceResponse.nonFungibleTokens);
  }

  @Override
  public int hashCode() {
    return Objects.hash(functions, variables, maps, fungibleTokens, nonFungibleTokens);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ContractInterfaceResponse {\n");
    sb.append("    functions: ").append(toIndentedString(functions)).append("\n");
    sb.append("    variables: ").append(toIndentedString(variables)).append("\n");
    sb.append("    maps: ").append(toIndentedString(maps)).append("\n");
    sb.append("    fungibleTokens: ").append(toIndentedString(fungibleTokens)).append("\n");
    sb.append("    nonFungibleTokens: ").append(toIndentedString(nonFungibleTokens)).append("\n");
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

