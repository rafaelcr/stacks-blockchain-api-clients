<?php
/**
 * RosettaNetworkOptionsResponseAllow
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
 * RosettaNetworkOptionsResponseAllow Class Doc Comment
 *
 * @category Class
 * @description Allow specifies supported Operation status, Operation types, and all possible error statuses. This Allow object is used by clients to validate the correctness of a Rosetta Server implementation. It is expected that these clients will error if they receive some response that contains any of the above information that is not specified here.
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class RosettaNetworkOptionsResponseAllow implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'RosettaNetworkOptionsResponse_allow';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'operation_statuses' => '\StacksBlockchainApi\Model\RosettaOperationStatus[]',
        'operation_types' => 'AnyOfString[]',
        'errors' => '\StacksBlockchainApi\Model\RosettaErrorNoDetails[]',
        'historical_balance_lookup' => 'bool'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'operation_statuses' => null,
        'operation_types' => null,
        'errors' => null,
        'historical_balance_lookup' => null
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
        'operation_statuses' => 'operation_statuses',
        'operation_types' => 'operation_types',
        'errors' => 'errors',
        'historical_balance_lookup' => 'historical_balance_lookup'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'operation_statuses' => 'setOperationStatuses',
        'operation_types' => 'setOperationTypes',
        'errors' => 'setErrors',
        'historical_balance_lookup' => 'setHistoricalBalanceLookup'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'operation_statuses' => 'getOperationStatuses',
        'operation_types' => 'getOperationTypes',
        'errors' => 'getErrors',
        'historical_balance_lookup' => 'getHistoricalBalanceLookup'
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
        $this->container['operation_statuses'] = $data['operation_statuses'] ?? null;
        $this->container['operation_types'] = $data['operation_types'] ?? null;
        $this->container['errors'] = $data['errors'] ?? null;
        $this->container['historical_balance_lookup'] = $data['historical_balance_lookup'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['operation_statuses'] === null) {
            $invalidProperties[] = "'operation_statuses' can't be null";
        }
        if ($this->container['operation_types'] === null) {
            $invalidProperties[] = "'operation_types' can't be null";
        }
        if ($this->container['errors'] === null) {
            $invalidProperties[] = "'errors' can't be null";
        }
        if ($this->container['historical_balance_lookup'] === null) {
            $invalidProperties[] = "'historical_balance_lookup' can't be null";
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
     * Gets operation_statuses
     *
     * @return \StacksBlockchainApi\Model\RosettaOperationStatus[]
     */
    public function getOperationStatuses()
    {
        return $this->container['operation_statuses'];
    }

    /**
     * Sets operation_statuses
     *
     * @param \StacksBlockchainApi\Model\RosettaOperationStatus[] $operation_statuses All Operation.Status this implementation supports. Any status that is returned during parsing that is not listed here will cause client validation to error.
     *
     * @return self
     */
    public function setOperationStatuses($operation_statuses)
    {
        $this->container['operation_statuses'] = $operation_statuses;

        return $this;
    }

    /**
     * Gets operation_types
     *
     * @return AnyOfString[]
     */
    public function getOperationTypes()
    {
        return $this->container['operation_types'];
    }

    /**
     * Sets operation_types
     *
     * @param AnyOfString[] $operation_types All Operation.Type this implementation supports. Any type that is returned during parsing that is not listed here will cause client validation to error.
     *
     * @return self
     */
    public function setOperationTypes($operation_types)
    {
        $this->container['operation_types'] = $operation_types;

        return $this;
    }

    /**
     * Gets errors
     *
     * @return \StacksBlockchainApi\Model\RosettaErrorNoDetails[]
     */
    public function getErrors()
    {
        return $this->container['errors'];
    }

    /**
     * Sets errors
     *
     * @param \StacksBlockchainApi\Model\RosettaErrorNoDetails[] $errors All Errors that this implementation could return. Any error that is returned during parsing that is not listed here will cause client validation to error.
     *
     * @return self
     */
    public function setErrors($errors)
    {
        $this->container['errors'] = $errors;

        return $this;
    }

    /**
     * Gets historical_balance_lookup
     *
     * @return bool
     */
    public function getHistoricalBalanceLookup()
    {
        return $this->container['historical_balance_lookup'];
    }

    /**
     * Sets historical_balance_lookup
     *
     * @param bool $historical_balance_lookup Any Rosetta implementation that supports querying the balance of an account at any height in the past should set this to true.
     *
     * @return self
     */
    public function setHistoricalBalanceLookup($historical_balance_lookup)
    {
        $this->container['historical_balance_lookup'] = $historical_balance_lookup;

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

