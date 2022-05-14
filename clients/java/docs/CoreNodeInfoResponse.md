

# CoreNodeInfoResponse

GET request that core node information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**peerVersion** | **Integer** | identifies the version number for the networking communication, this should not change while a node is running, and will only change if there&#39;s an upgrade | 
**poxConsensus** | **String** | is a hash used to identify the burnchain view for a node. it incorporates bitcoin chain information and PoX information. nodes that disagree on this value will appear to each other as forks. this value will change after every block | 
**burnBlockHeight** | **Integer** | latest bitcoin chain height | 
**stablePoxConsensus** | **String** | same as burn_consensus, but evaluated at stable_burn_block_height | 
**stableBurnBlockHeight** | **Integer** | leftover from stacks 1.0, basically always burn_block_height - 1 | 
**serverVersion** | **String** | is a version descriptor | 
**networkId** | **Integer** | is similar to peer_version and will be used to differentiate between different testnets. this value will be different between mainnet and testnet. once launched, this value will not change | 
**parentNetworkId** | **Integer** | same as network_id, but for bitcoin | 
**stacksTipHeight** | **Integer** | the latest Stacks chain height. Stacks forks can occur independent of the Bitcoin chain, that height doesn&#39;t increase 1-to-1 with the Bitcoin height | 
**stacksTip** | **String** | the best known block hash for the Stack chain (not including any pending microblocks) | 
**stacksTipConsensusHash** | **String** | the burn chain (i.e., bitcoin) consensus hash at the time that stacks_tip was mined | 
**unanchoredTip** | **String** | the latest microblock hash if any microblocks were processed. if no microblock has been processed for the current block, a 000.., hex array is returned | 
**exitAtBlockHeight** | **Integer** | the block height at which the testnet network will be reset. not applicable for mainnet | 



