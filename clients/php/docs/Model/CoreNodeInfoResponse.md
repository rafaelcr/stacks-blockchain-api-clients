# # CoreNodeInfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**peer_version** | **int** | identifies the version number for the networking communication, this should not change while a node is running, and will only change if there&#39;s an upgrade |
**pox_consensus** | **string** | is a hash used to identify the burnchain view for a node. it incorporates bitcoin chain information and PoX information. nodes that disagree on this value will appear to each other as forks. this value will change after every block |
**burn_block_height** | **int** | latest bitcoin chain height |
**stable_pox_consensus** | **string** | same as burn_consensus, but evaluated at stable_burn_block_height |
**stable_burn_block_height** | **int** | leftover from stacks 1.0, basically always burn_block_height - 1 |
**server_version** | **string** | is a version descriptor |
**network_id** | **int** | is similar to peer_version and will be used to differentiate between different testnets. this value will be different between mainnet and testnet. once launched, this value will not change |
**parent_network_id** | **int** | same as network_id, but for bitcoin |
**stacks_tip_height** | **int** | the latest Stacks chain height. Stacks forks can occur independent of the Bitcoin chain, that height doesn&#39;t increase 1-to-1 with the Bitcoin height |
**stacks_tip** | **string** | the best known block hash for the Stack chain (not including any pending microblocks) |
**stacks_tip_consensus_hash** | **string** | the burn chain (i.e., bitcoin) consensus hash at the time that stacks_tip was mined |
**unanchored_tip** | **string** | the latest microblock hash if any microblocks were processed. if no microblock has been processed for the current block, a 000.., hex array is returned |
**exit_at_block_height** | **int** | the block height at which the testnet network will be reset. not applicable for mainnet |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
