<?php
/**
 * AddressBalanceResponseStx
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
 * AddressBalanceResponseStx Class Doc Comment
 *
 * @category Class
 * @description StxBalance
 * @package  StacksBlockchainApi
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class AddressBalanceResponseStx implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'AddressBalanceResponse_stx';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'balance' => 'string',
        'total_sent' => 'string',
        'total_received' => 'string',
        'total_fees_sent' => 'string',
        'total_miner_rewards_received' => 'string',
        'lock_tx_id' => 'string',
        'locked' => 'string',
        'lock_height' => 'int',
        'burnchain_lock_height' => 'int',
        'burnchain_unlock_height' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'balance' => null,
        'total_sent' => null,
        'total_received' => null,
        'total_fees_sent' => null,
        'total_miner_rewards_received' => null,
        'lock_tx_id' => null,
        'locked' => null,
        'lock_height' => null,
        'burnchain_lock_height' => null,
        'burnchain_unlock_height' => null
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
        'balance' => 'balance',
        'total_sent' => 'total_sent',
        'total_received' => 'total_received',
        'total_fees_sent' => 'total_fees_sent',
        'total_miner_rewards_received' => 'total_miner_rewards_received',
        'lock_tx_id' => 'lock_tx_id',
        'locked' => 'locked',
        'lock_height' => 'lock_height',
        'burnchain_lock_height' => 'burnchain_lock_height',
        'burnchain_unlock_height' => 'burnchain_unlock_height'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'balance' => 'setBalance',
        'total_sent' => 'setTotalSent',
        'total_received' => 'setTotalReceived',
        'total_fees_sent' => 'setTotalFeesSent',
        'total_miner_rewards_received' => 'setTotalMinerRewardsReceived',
        'lock_tx_id' => 'setLockTxId',
        'locked' => 'setLocked',
        'lock_height' => 'setLockHeight',
        'burnchain_lock_height' => 'setBurnchainLockHeight',
        'burnchain_unlock_height' => 'setBurnchainUnlockHeight'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'balance' => 'getBalance',
        'total_sent' => 'getTotalSent',
        'total_received' => 'getTotalReceived',
        'total_fees_sent' => 'getTotalFeesSent',
        'total_miner_rewards_received' => 'getTotalMinerRewardsReceived',
        'lock_tx_id' => 'getLockTxId',
        'locked' => 'getLocked',
        'lock_height' => 'getLockHeight',
        'burnchain_lock_height' => 'getBurnchainLockHeight',
        'burnchain_unlock_height' => 'getBurnchainUnlockHeight'
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
        $this->container['balance'] = $data['balance'] ?? null;
        $this->container['total_sent'] = $data['total_sent'] ?? null;
        $this->container['total_received'] = $data['total_received'] ?? null;
        $this->container['total_fees_sent'] = $data['total_fees_sent'] ?? null;
        $this->container['total_miner_rewards_received'] = $data['total_miner_rewards_received'] ?? null;
        $this->container['lock_tx_id'] = $data['lock_tx_id'] ?? null;
        $this->container['locked'] = $data['locked'] ?? null;
        $this->container['lock_height'] = $data['lock_height'] ?? null;
        $this->container['burnchain_lock_height'] = $data['burnchain_lock_height'] ?? null;
        $this->container['burnchain_unlock_height'] = $data['burnchain_unlock_height'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['balance'] === null) {
            $invalidProperties[] = "'balance' can't be null";
        }
        if ($this->container['total_sent'] === null) {
            $invalidProperties[] = "'total_sent' can't be null";
        }
        if ($this->container['total_received'] === null) {
            $invalidProperties[] = "'total_received' can't be null";
        }
        if ($this->container['total_fees_sent'] === null) {
            $invalidProperties[] = "'total_fees_sent' can't be null";
        }
        if ($this->container['total_miner_rewards_received'] === null) {
            $invalidProperties[] = "'total_miner_rewards_received' can't be null";
        }
        if ($this->container['lock_tx_id'] === null) {
            $invalidProperties[] = "'lock_tx_id' can't be null";
        }
        if ($this->container['locked'] === null) {
            $invalidProperties[] = "'locked' can't be null";
        }
        if ($this->container['lock_height'] === null) {
            $invalidProperties[] = "'lock_height' can't be null";
        }
        if ($this->container['burnchain_lock_height'] === null) {
            $invalidProperties[] = "'burnchain_lock_height' can't be null";
        }
        if ($this->container['burnchain_unlock_height'] === null) {
            $invalidProperties[] = "'burnchain_unlock_height' can't be null";
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
     * Gets balance
     *
     * @return string
     */
    public function getBalance()
    {
        return $this->container['balance'];
    }

    /**
     * Sets balance
     *
     * @param string $balance balance
     *
     * @return self
     */
    public function setBalance($balance)
    {
        $this->container['balance'] = $balance;

        return $this;
    }

    /**
     * Gets total_sent
     *
     * @return string
     */
    public function getTotalSent()
    {
        return $this->container['total_sent'];
    }

    /**
     * Sets total_sent
     *
     * @param string $total_sent total_sent
     *
     * @return self
     */
    public function setTotalSent($total_sent)
    {
        $this->container['total_sent'] = $total_sent;

        return $this;
    }

    /**
     * Gets total_received
     *
     * @return string
     */
    public function getTotalReceived()
    {
        return $this->container['total_received'];
    }

    /**
     * Sets total_received
     *
     * @param string $total_received total_received
     *
     * @return self
     */
    public function setTotalReceived($total_received)
    {
        $this->container['total_received'] = $total_received;

        return $this;
    }

    /**
     * Gets total_fees_sent
     *
     * @return string
     */
    public function getTotalFeesSent()
    {
        return $this->container['total_fees_sent'];
    }

    /**
     * Sets total_fees_sent
     *
     * @param string $total_fees_sent total_fees_sent
     *
     * @return self
     */
    public function setTotalFeesSent($total_fees_sent)
    {
        $this->container['total_fees_sent'] = $total_fees_sent;

        return $this;
    }

    /**
     * Gets total_miner_rewards_received
     *
     * @return string
     */
    public function getTotalMinerRewardsReceived()
    {
        return $this->container['total_miner_rewards_received'];
    }

    /**
     * Sets total_miner_rewards_received
     *
     * @param string $total_miner_rewards_received total_miner_rewards_received
     *
     * @return self
     */
    public function setTotalMinerRewardsReceived($total_miner_rewards_received)
    {
        $this->container['total_miner_rewards_received'] = $total_miner_rewards_received;

        return $this;
    }

    /**
     * Gets lock_tx_id
     *
     * @return string
     */
    public function getLockTxId()
    {
        return $this->container['lock_tx_id'];
    }

    /**
     * Sets lock_tx_id
     *
     * @param string $lock_tx_id The transaction where the lock event occurred. Empty if no tokens are locked.
     *
     * @return self
     */
    public function setLockTxId($lock_tx_id)
    {
        $this->container['lock_tx_id'] = $lock_tx_id;

        return $this;
    }

    /**
     * Gets locked
     *
     * @return string
     */
    public function getLocked()
    {
        return $this->container['locked'];
    }

    /**
     * Sets locked
     *
     * @param string $locked The amount of locked STX, as string quoted micro-STX. Zero if no tokens are locked.
     *
     * @return self
     */
    public function setLocked($locked)
    {
        $this->container['locked'] = $locked;

        return $this;
    }

    /**
     * Gets lock_height
     *
     * @return int
     */
    public function getLockHeight()
    {
        return $this->container['lock_height'];
    }

    /**
     * Sets lock_height
     *
     * @param int $lock_height The STX chain block height of when the lock event occurred. Zero if no tokens are locked.
     *
     * @return self
     */
    public function setLockHeight($lock_height)
    {
        $this->container['lock_height'] = $lock_height;

        return $this;
    }

    /**
     * Gets burnchain_lock_height
     *
     * @return int
     */
    public function getBurnchainLockHeight()
    {
        return $this->container['burnchain_lock_height'];
    }

    /**
     * Sets burnchain_lock_height
     *
     * @param int $burnchain_lock_height The burnchain block height of when the lock event occurred. Zero if no tokens are locked.
     *
     * @return self
     */
    public function setBurnchainLockHeight($burnchain_lock_height)
    {
        $this->container['burnchain_lock_height'] = $burnchain_lock_height;

        return $this;
    }

    /**
     * Gets burnchain_unlock_height
     *
     * @return int
     */
    public function getBurnchainUnlockHeight()
    {
        return $this->container['burnchain_unlock_height'];
    }

    /**
     * Sets burnchain_unlock_height
     *
     * @param int $burnchain_unlock_height The burnchain block height of when the tokens unlock. Zero if no tokens are locked.
     *
     * @return self
     */
    public function setBurnchainUnlockHeight($burnchain_unlock_height)
    {
        $this->container['burnchain_unlock_height'] = $burnchain_unlock_height;

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


