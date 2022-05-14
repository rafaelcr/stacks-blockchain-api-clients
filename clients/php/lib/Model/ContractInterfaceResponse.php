<?php
/**
 * ContractInterfaceResponse
 *
 * PHP version 7.3
 *
 * @category Class
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * Stacks Blockchain API
 *
 * Welcome to the API reference overview for the <a href=\"https://docs.hiro.so/get-started/stacks-blockchain-api\">Stacks Blockchain API</a>.  <a href=\"https://hirosystems.github.io/stacks-blockchain-api/collection.json\" download=\"stacks-api-collection.json\">Download Postman collection</a>
 *
 * The version of the OpenAPI document: v3.0.3
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace StacksBlockchainApi\Model;

use \ArrayAccess;
use \StacksBlockchainApi\ObjectSerializer;

/**
 * ContractInterfaceResponse Class Doc Comment
 *
 * @category Class
 * @description GET request to get contract interface
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class ContractInterfaceResponse implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'ContractInterfaceResponse';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'functions' => 'object[]',
        'variables' => 'object[]',
        'maps' => 'object[]',
        'fungible_tokens' => 'object[]',
        'non_fungible_tokens' => 'object[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'functions' => null,
        'variables' => null,
        'maps' => null,
        'fungible_tokens' => null,
        'non_fungible_tokens' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'functions' => 'functions',
        'variables' => 'variables',
        'maps' => 'maps',
        'fungible_tokens' => 'fungible_tokens',
        'non_fungible_tokens' => 'non_fungible_tokens'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'functions' => 'setFunctions',
        'variables' => 'setVariables',
        'maps' => 'setMaps',
        'fungible_tokens' => 'setFungibleTokens',
        'non_fungible_tokens' => 'setNonFungibleTokens'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'functions' => 'getFunctions',
        'variables' => 'getVariables',
        'maps' => 'getMaps',
        'fungible_tokens' => 'getFungibleTokens',
        'non_fungible_tokens' => 'getNonFungibleTokens'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['functions'] = $data['functions'] ?? null;
        $this->container['variables'] = $data['variables'] ?? null;
        $this->container['maps'] = $data['maps'] ?? null;
        $this->container['fungible_tokens'] = $data['fungible_tokens'] ?? null;
        $this->container['non_fungible_tokens'] = $data['non_fungible_tokens'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['functions'] === null) {
            $invalidProperties[] = "'functions' can't be null";
        }
        if ($this->container['variables'] === null) {
            $invalidProperties[] = "'variables' can't be null";
        }
        if ($this->container['maps'] === null) {
            $invalidProperties[] = "'maps' can't be null";
        }
        if ($this->container['fungible_tokens'] === null) {
            $invalidProperties[] = "'fungible_tokens' can't be null";
        }
        if ($this->container['non_fungible_tokens'] === null) {
            $invalidProperties[] = "'non_fungible_tokens' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets functions
     *
     * @return object[]
     */
    public function getFunctions()
    {
        return $this->container['functions'];
    }

    /**
     * Sets functions
     *
     * @param object[] $functions List of defined methods
     *
     * @return self
     */
    public function setFunctions($functions)
    {
        $this->container['functions'] = $functions;

        return $this;
    }

    /**
     * Gets variables
     *
     * @return object[]
     */
    public function getVariables()
    {
        return $this->container['variables'];
    }

    /**
     * Sets variables
     *
     * @param object[] $variables List of defined variables
     *
     * @return self
     */
    public function setVariables($variables)
    {
        $this->container['variables'] = $variables;

        return $this;
    }

    /**
     * Gets maps
     *
     * @return object[]
     */
    public function getMaps()
    {
        return $this->container['maps'];
    }

    /**
     * Sets maps
     *
     * @param object[] $maps List of defined data-maps
     *
     * @return self
     */
    public function setMaps($maps)
    {
        $this->container['maps'] = $maps;

        return $this;
    }

    /**
     * Gets fungible_tokens
     *
     * @return object[]
     */
    public function getFungibleTokens()
    {
        return $this->container['fungible_tokens'];
    }

    /**
     * Sets fungible_tokens
     *
     * @param object[] $fungible_tokens List of fungible tokens in the contract
     *
     * @return self
     */
    public function setFungibleTokens($fungible_tokens)
    {
        $this->container['fungible_tokens'] = $fungible_tokens;

        return $this;
    }

    /**
     * Gets non_fungible_tokens
     *
     * @return object[]
     */
    public function getNonFungibleTokens()
    {
        return $this->container['non_fungible_tokens'];
    }

    /**
     * Sets non_fungible_tokens
     *
     * @param object[] $non_fungible_tokens List of non-fungible tokens in the contract
     *
     * @return self
     */
    public function setNonFungibleTokens($non_fungible_tokens)
    {
        $this->container['non_fungible_tokens'] = $non_fungible_tokens;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}

