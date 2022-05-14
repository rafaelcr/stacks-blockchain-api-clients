# stacks_blockchain_api_client.model.CoreNodeInfoResponse

## Load the model package
```dart
import 'package:stacks_blockchain_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**peerVersion** | **int** | identifies the version number for the networking communication, this should not change while a node is running, and will only change if there's an upgrade | 
**poxConsensus** | **String** | is a hash used to identify the burnchain view for a node. it incorporates bitcoin chain information and PoX information. nodes that disagree on this value will appear to each other as forks. this value will change after every block | 
**burnBlockHeight** | **int** | latest bitcoin chain height | 
**stablePoxConsensus** | **String** | same as burn_consensus, but evaluated at stable_burn_block_height | 
**stableBurnBlockHeight** | **int** | leftover from stacks 1.0, basically always burn_block_height - 1 | 
**serverVersion** | **String** | is a version descriptor | 
**networkId** | **int** | is similar to peer_version and will be used to differentiate between different testnets. this value will be different between mainnet and testnet. once launched, this value will not change | 
**parentNetworkId** | **int** | same as network_id, but for bitcoin | 
**stacksTipHeight** | **int** | the latest Stacks chain height. Stacks forks can occur independent of the Bitcoin chain, that height doesn't increase 1-to-1 with the Bitcoin height | 
**stacksTip** | **String** | the best known block hash for the Stack chain (not including any pending microblocks) | 
**stacksTipConsensusHash** | **String** | the burn chain (i.e., bitcoin) consensus hash at the time that stacks_tip was mined | 
**unanchoredTip** | **String** | the latest microblock hash if any microblocks were processed. if no microblock has been processed for the current block, a 000.., hex array is returned | 
**exitAtBlockHeight** | **int** | the block height at which the testnet network will be reset. not applicable for mainnet | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


