<?php
/**
 * GetStxSupplyLegacyFormatResponse
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
 * GetStxSupplyLegacyFormatResponse Class Doc Comment
 *
 * @category Class
 * @description GET request that returns network target block times
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class GetStxSupplyLegacyFormatResponse implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'GetStxSupplyLegacyFormatResponse';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'unlocked_percent' => 'string',
        'total_stacks' => 'string',
        'total_stacks_formatted' => 'string',
        'unlocked_supply' => 'string',
        'unlocked_supply_formatted' => 'string',
        'block_height' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'unlocked_percent' => null,
        'total_stacks' => null,
        'total_stacks_formatted' => null,
        'unlocked_supply' => null,
        'unlocked_supply_formatted' => null,
        'block_height' => null
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
        'unlocked_percent' => 'unlockedPercent',
        'total_stacks' => 'totalStacks',
        'total_stacks_formatted' => 'totalStacksFormatted',
        'unlocked_supply' => 'unlockedSupply',
        'unlocked_supply_formatted' => 'unlockedSupplyFormatted',
        'block_height' => 'blockHeight'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'unlocked_percent' => 'setUnlockedPercent',
        'total_stacks' => 'setTotalStacks',
        'total_stacks_formatted' => 'setTotalStacksFormatted',
        'unlocked_supply' => 'setUnlockedSupply',
        'unlocked_supply_formatted' => 'setUnlockedSupplyFormatted',
        'block_height' => 'setBlockHeight'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'unlocked_percent' => 'getUnlockedPercent',
        'total_stacks' => 'getTotalStacks',
        'total_stacks_formatted' => 'getTotalStacksFormatted',
        'unlocked_supply' => 'getUnlockedSupply',
        'unlocked_supply_formatted' => 'getUnlockedSupplyFormatted',
        'block_height' => 'getBlockHeight'
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
        $this->container['unlocked_percent'] = $data['unlocked_percent'] ?? null;
        $this->container['total_stacks'] = $data['total_stacks'] ?? null;
        $this->container['total_stacks_formatted'] = $data['total_stacks_formatted'] ?? null;
        $this->container['unlocked_supply'] = $data['unlocked_supply'] ?? null;
        $this->container['unlocked_supply_formatted'] = $data['unlocked_supply_formatted'] ?? null;
        $this->container['block_height'] = $data['block_height'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['unlocked_percent'] === null) {
            $invalidProperties[] = "'unlocked_percent' can't be null";
        }
        if ($this->container['total_stacks'] === null) {
            $invalidProperties[] = "'total_stacks' can't be null";
        }
        if ($this->container['total_stacks_formatted'] === null) {
            $invalidProperties[] = "'total_stacks_formatted' can't be null";
        }
        if ($this->container['unlocked_supply'] === null) {
            $invalidProperties[] = "'unlocked_supply' can't be null";
        }
        if ($this->container['unlocked_supply_formatted'] === null) {
            $invalidProperties[] = "'unlocked_supply_formatted' can't be null";
        }
        if ($this->container['block_height'] === null) {
            $invalidProperties[] = "'block_height' can't be null";
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
     * Gets unlocked_percent
     *
     * @return string
     */
    public function getUnlockedPercent()
    {
        return $this->container['unlocked_percent'];
    }

    /**
     * Sets unlocked_percent
     *
     * @param string $unlocked_percent String quoted decimal number of the percentage of STX that have unlocked
     *
     * @return self
     */
    public function setUnlockedPercent($unlocked_percent)
    {
        $this->container['unlocked_percent'] = $unlocked_percent;

        return $this;
    }

    /**
     * Gets total_stacks
     *
     * @return string
     */
    public function getTotalStacks()
    {
        return $this->container['total_stacks'];
    }

    /**
     * Sets total_stacks
     *
     * @param string $total_stacks String quoted decimal number of the total possible number of STX
     *
     * @return self
     */
    public function setTotalStacks($total_stacks)
    {
        $this->container['total_stacks'] = $total_stacks;

        return $this;
    }

    /**
     * Gets total_stacks_formatted
     *
     * @return string
     */
    public function getTotalStacksFormatted()
    {
        return $this->container['total_stacks_formatted'];
    }

    /**
     * Sets total_stacks_formatted
     *
     * @param string $total_stacks_formatted Same as `totalStacks` but formatted with comma thousands separators
     *
     * @return self
     */
    public function setTotalStacksFormatted($total_stacks_formatted)
    {
        $this->container['total_stacks_formatted'] = $total_stacks_formatted;

        return $this;
    }

    /**
     * Gets unlocked_supply
     *
     * @return string
     */
    public function getUnlockedSupply()
    {
        return $this->container['unlocked_supply'];
    }

    /**
     * Sets unlocked_supply
     *
     * @param string $unlocked_supply String quoted decimal number of the STX that have been mined or unlocked
     *
     * @return self
     */
    public function setUnlockedSupply($unlocked_supply)
    {
        $this->container['unlocked_supply'] = $unlocked_supply;

        return $this;
    }

    /**
     * Gets unlocked_supply_formatted
     *
     * @return string
     */
    public function getUnlockedSupplyFormatted()
    {
        return $this->container['unlocked_supply_formatted'];
    }

    /**
     * Sets unlocked_supply_formatted
     *
     * @param string $unlocked_supply_formatted Same as `unlockedSupply` but formatted with comma thousands separators
     *
     * @return self
     */
    public function setUnlockedSupplyFormatted($unlocked_supply_formatted)
    {
        $this->container['unlocked_supply_formatted'] = $unlocked_supply_formatted;

        return $this;
    }

    /**
     * Gets block_height
     *
     * @return string
     */
    public function getBlockHeight()
    {
        return $this->container['block_height'];
    }

    /**
     * Sets block_height
     *
     * @param string $block_height The block height at which this information was queried
     *
     * @return self
     */
    public function setBlockHeight($block_height)
    {
        $this->container['block_height'] = $block_height;

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


