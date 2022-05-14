<?php
/**
 * FungibleTokenMetadata
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
 * FungibleTokenMetadata Class Doc Comment
 *
 * @category Class
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class FungibleTokenMetadata implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'FungibleTokenMetadata';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'token_uri' => 'string',
        'name' => 'string',
        'description' => 'string',
        'image_uri' => 'string',
        'image_canonical_uri' => 'string',
        'symbol' => 'string',
        'decimals' => 'float',
        'tx_id' => 'string',
        'sender_address' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'token_uri' => null,
        'name' => null,
        'description' => null,
        'image_uri' => null,
        'image_canonical_uri' => null,
        'symbol' => null,
        'decimals' => null,
        'tx_id' => null,
        'sender_address' => null
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
        'token_uri' => 'token_uri',
        'name' => 'name',
        'description' => 'description',
        'image_uri' => 'image_uri',
        'image_canonical_uri' => 'image_canonical_uri',
        'symbol' => 'symbol',
        'decimals' => 'decimals',
        'tx_id' => 'tx_id',
        'sender_address' => 'sender_address'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'token_uri' => 'setTokenUri',
        'name' => 'setName',
        'description' => 'setDescription',
        'image_uri' => 'setImageUri',
        'image_canonical_uri' => 'setImageCanonicalUri',
        'symbol' => 'setSymbol',
        'decimals' => 'setDecimals',
        'tx_id' => 'setTxId',
        'sender_address' => 'setSenderAddress'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'token_uri' => 'getTokenUri',
        'name' => 'getName',
        'description' => 'getDescription',
        'image_uri' => 'getImageUri',
        'image_canonical_uri' => 'getImageCanonicalUri',
        'symbol' => 'getSymbol',
        'decimals' => 'getDecimals',
        'tx_id' => 'getTxId',
        'sender_address' => 'getSenderAddress'
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
        $this->container['token_uri'] = $data['token_uri'] ?? null;
        $this->container['name'] = $data['name'] ?? null;
        $this->container['description'] = $data['description'] ?? null;
        $this->container['image_uri'] = $data['image_uri'] ?? null;
        $this->container['image_canonical_uri'] = $data['image_canonical_uri'] ?? null;
        $this->container['symbol'] = $data['symbol'] ?? null;
        $this->container['decimals'] = $data['decimals'] ?? null;
        $this->container['tx_id'] = $data['tx_id'] ?? null;
        $this->container['sender_address'] = $data['sender_address'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['token_uri'] === null) {
            $invalidProperties[] = "'token_uri' can't be null";
        }
        if ($this->container['name'] === null) {
            $invalidProperties[] = "'name' can't be null";
        }
        if ($this->container['description'] === null) {
            $invalidProperties[] = "'description' can't be null";
        }
        if ($this->container['image_uri'] === null) {
            $invalidProperties[] = "'image_uri' can't be null";
        }
        if ($this->container['image_canonical_uri'] === null) {
            $invalidProperties[] = "'image_canonical_uri' can't be null";
        }
        if ($this->container['symbol'] === null) {
            $invalidProperties[] = "'symbol' can't be null";
        }
        if ($this->container['decimals'] === null) {
            $invalidProperties[] = "'decimals' can't be null";
        }
        if ($this->container['tx_id'] === null) {
            $invalidProperties[] = "'tx_id' can't be null";
        }
        if ($this->container['sender_address'] === null) {
            $invalidProperties[] = "'sender_address' can't be null";
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
     * Gets token_uri
     *
     * @return string
     */
    public function getTokenUri()
    {
        return $this->container['token_uri'];
    }

    /**
     * Sets token_uri
     *
     * @param string $token_uri An optional string that is a valid URI which resolves to this token's metadata. Can be empty.
     *
     * @return self
     */
    public function setTokenUri($token_uri)
    {
        $this->container['token_uri'] = $token_uri;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string $name Identifies the asset to which this token represents
     *
     * @return self
     */
    public function setName($name)
    {
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->container['description'];
    }

    /**
     * Sets description
     *
     * @param string $description Describes the asset to which this token represents
     *
     * @return self
     */
    public function setDescription($description)
    {
        $this->container['description'] = $description;

        return $this;
    }

    /**
     * Gets image_uri
     *
     * @return string
     */
    public function getImageUri()
    {
        return $this->container['image_uri'];
    }

    /**
     * Sets image_uri
     *
     * @param string $image_uri A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. The API may provide a URI to a cached resource, dependending on configuration. Otherwise, this can be the same value as the canonical image URI.
     *
     * @return self
     */
    public function setImageUri($image_uri)
    {
        $this->container['image_uri'] = $image_uri;

        return $this;
    }

    /**
     * Gets image_canonical_uri
     *
     * @return string
     */
    public function getImageCanonicalUri()
    {
        return $this->container['image_canonical_uri'];
    }

    /**
     * Sets image_canonical_uri
     *
     * @param string $image_canonical_uri The original image URI specified by the contract. A URI pointing to a resource with mime type image/_* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive.
     *
     * @return self
     */
    public function setImageCanonicalUri($image_canonical_uri)
    {
        $this->container['image_canonical_uri'] = $image_canonical_uri;

        return $this;
    }

    /**
     * Gets symbol
     *
     * @return string
     */
    public function getSymbol()
    {
        return $this->container['symbol'];
    }

    /**
     * Sets symbol
     *
     * @param string $symbol A shorter representation of a token. This is sometimes referred to as a \"ticker\". Examples: \"STX\", \"COOL\", etc. Typically, a token could be referred to as $SYMBOL when referencing it in writing.
     *
     * @return self
     */
    public function setSymbol($symbol)
    {
        $this->container['symbol'] = $symbol;

        return $this;
    }

    /**
     * Gets decimals
     *
     * @return float
     */
    public function getDecimals()
    {
        return $this->container['decimals'];
    }

    /**
     * Sets decimals
     *
     * @param float $decimals The number of decimal places in a token.
     *
     * @return self
     */
    public function setDecimals($decimals)
    {
        $this->container['decimals'] = $decimals;

        return $this;
    }

    /**
     * Gets tx_id
     *
     * @return string
     */
    public function getTxId()
    {
        return $this->container['tx_id'];
    }

    /**
     * Sets tx_id
     *
     * @param string $tx_id Tx id that deployed the contract
     *
     * @return self
     */
    public function setTxId($tx_id)
    {
        $this->container['tx_id'] = $tx_id;

        return $this;
    }

    /**
     * Gets sender_address
     *
     * @return string
     */
    public function getSenderAddress()
    {
        return $this->container['sender_address'];
    }

    /**
     * Sets sender_address
     *
     * @param string $sender_address principle that deployed the contract
     *
     * @return self
     */
    public function setSenderAddress($sender_address)
    {
        $this->container['sender_address'] = $sender_address;

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

