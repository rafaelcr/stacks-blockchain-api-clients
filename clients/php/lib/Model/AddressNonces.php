<?php
/**
 * AddressNonces
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
 * AddressNonces Class Doc Comment
 *
 * @category Class
 * @description The latest nonce values used by an account by inspecting the mempool, microblock transactions, and anchored transactions
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class AddressNonces implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'AddressNonces';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'last_mempool_tx_nonce' => 'int',
        'last_executed_tx_nonce' => 'int',
        'possible_next_nonce' => 'int',
        'detected_missing_nonces' => 'int[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'last_mempool_tx_nonce' => null,
        'last_executed_tx_nonce' => null,
        'possible_next_nonce' => null,
        'detected_missing_nonces' => null
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
        'last_mempool_tx_nonce' => 'last_mempool_tx_nonce',
        'last_executed_tx_nonce' => 'last_executed_tx_nonce',
        'possible_next_nonce' => 'possible_next_nonce',
        'detected_missing_nonces' => 'detected_missing_nonces'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'last_mempool_tx_nonce' => 'setLastMempoolTxNonce',
        'last_executed_tx_nonce' => 'setLastExecutedTxNonce',
        'possible_next_nonce' => 'setPossibleNextNonce',
        'detected_missing_nonces' => 'setDetectedMissingNonces'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'last_mempool_tx_nonce' => 'getLastMempoolTxNonce',
        'last_executed_tx_nonce' => 'getLastExecutedTxNonce',
        'possible_next_nonce' => 'getPossibleNextNonce',
        'detected_missing_nonces' => 'getDetectedMissingNonces'
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
        $this->container['last_mempool_tx_nonce'] = $data['last_mempool_tx_nonce'] ?? null;
        $this->container['last_executed_tx_nonce'] = $data['last_executed_tx_nonce'] ?? null;
        $this->container['possible_next_nonce'] = $data['possible_next_nonce'] ?? null;
        $this->container['detected_missing_nonces'] = $data['detected_missing_nonces'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['last_mempool_tx_nonce'] === null) {
            $invalidProperties[] = "'last_mempool_tx_nonce' can't be null";
        }
        if ($this->container['last_executed_tx_nonce'] === null) {
            $invalidProperties[] = "'last_executed_tx_nonce' can't be null";
        }
        if ($this->container['possible_next_nonce'] === null) {
            $invalidProperties[] = "'possible_next_nonce' can't be null";
        }
        if ($this->container['detected_missing_nonces'] === null) {
            $invalidProperties[] = "'detected_missing_nonces' can't be null";
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
     * Gets last_mempool_tx_nonce
     *
     * @return int
     */
    public function getLastMempoolTxNonce()
    {
        return $this->container['last_mempool_tx_nonce'];
    }

    /**
     * Sets last_mempool_tx_nonce
     *
     * @param int $last_mempool_tx_nonce The latest nonce found within mempool transactions sent by this address. Will be null if there are no current mempool transactions for this address.
     *
     * @return self
     */
    public function setLastMempoolTxNonce($last_mempool_tx_nonce)
    {
        $this->container['last_mempool_tx_nonce'] = $last_mempool_tx_nonce;

        return $this;
    }

    /**
     * Gets last_executed_tx_nonce
     *
     * @return int
     */
    public function getLastExecutedTxNonce()
    {
        return $this->container['last_executed_tx_nonce'];
    }

    /**
     * Sets last_executed_tx_nonce
     *
     * @param int $last_executed_tx_nonce The latest nonce found within transactions sent by this address, including unanchored microblock transactions. Will be null if there are no current transactions for this address.
     *
     * @return self
     */
    public function setLastExecutedTxNonce($last_executed_tx_nonce)
    {
        $this->container['last_executed_tx_nonce'] = $last_executed_tx_nonce;

        return $this;
    }

    /**
     * Gets possible_next_nonce
     *
     * @return int
     */
    public function getPossibleNextNonce()
    {
        return $this->container['possible_next_nonce'];
    }

    /**
     * Sets possible_next_nonce
     *
     * @param int $possible_next_nonce The likely nonce required for creating the next transaction, based on the last nonces seen by the API. This can be incorrect if the API's mempool or transactions aren't fully synchronized, even by a small amount, or if a previous transaction is still propagating through the Stacks blockchain network when this endpoint is called.
     *
     * @return self
     */
    public function setPossibleNextNonce($possible_next_nonce)
    {
        $this->container['possible_next_nonce'] = $possible_next_nonce;

        return $this;
    }

    /**
     * Gets detected_missing_nonces
     *
     * @return int[]
     */
    public function getDetectedMissingNonces()
    {
        return $this->container['detected_missing_nonces'];
    }

    /**
     * Sets detected_missing_nonces
     *
     * @param int[] $detected_missing_nonces Nonces that appear to be missing and likely causing a mempool transaction to be stuck.
     *
     * @return self
     */
    public function setDetectedMissingNonces($detected_missing_nonces)
    {
        $this->container['detected_missing_nonces'] = $detected_missing_nonces;

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

