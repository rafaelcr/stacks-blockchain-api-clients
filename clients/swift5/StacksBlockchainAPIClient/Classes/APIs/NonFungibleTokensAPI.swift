//
// NonFungibleTokensAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class NonFungibleTokensAPI {

    /**
     Non fungible tokens metadata for contract id
     
     - parameter contractId: (path) token&#39;s contract id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractNftMetadata(contractId: String, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonFungibleTokenMetadata?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractNftMetadataWithRequestBuilder(contractId: contractId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Non fungible tokens metadata for contract id
     - GET /extended/v1/tokens/{contractId}/nft/metadata
     - Retrieves metadata for non fungible tokens for a given contract id. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
     - parameter contractId: (path) token&#39;s contract id 
     - returns: RequestBuilder<NonFungibleTokenMetadata> 
     */
    open class func getContractNftMetadataWithRequestBuilder(contractId: String) -> RequestBuilder<NonFungibleTokenMetadata> {
        var localVariablePath = "/extended/v1/tokens/{contractId}/nft/metadata"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contractId}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NonFungibleTokenMetadata>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Non-Fungible Token history
     
     - parameter assetIdentifier: (query) token asset class identifier 
     - parameter value: (query) hex representation of the token&#39;s unique value 
     - parameter limit: (query) max number of events to fetch (optional, default to 50)
     - parameter offset: (query) index of first event to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include events from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getNftHistory(assetIdentifier: String, value: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonFungibleTokenHistoryEventList?, _ error: Error?) -> Void)) -> RequestTask {
        return getNftHistoryWithRequestBuilder(assetIdentifier: assetIdentifier, value: value, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Non-Fungible Token history
     - GET /extended/v1/tokens/nft/history
     - Retrieves all events relevant to a Non-Fungible Token. Useful to determine the ownership history of a particular asset.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
     - parameter assetIdentifier: (query) token asset class identifier 
     - parameter value: (query) hex representation of the token&#39;s unique value 
     - parameter limit: (query) max number of events to fetch (optional, default to 50)
     - parameter offset: (query) index of first event to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include events from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - returns: RequestBuilder<NonFungibleTokenHistoryEventList> 
     */
    open class func getNftHistoryWithRequestBuilder(assetIdentifier: String, value: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil) -> RequestBuilder<NonFungibleTokenHistoryEventList> {
        let localVariablePath = "/extended/v1/tokens/nft/history"
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "asset_identifier": assetIdentifier.encodeToJSON(),
            "value": value.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "unanchored": unanchored?.encodeToJSON(),
            "tx_metadata": txMetadata?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NonFungibleTokenHistoryEventList>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Non-Fungible Token holdings
     
     - parameter principal: (query) token owner&#39;s STX address or Smart Contract ID 
     - parameter assetIdentifiers: (query) identifiers of the token asset classes to filter for (optional)
     - parameter limit: (query) max number of tokens to fetch (optional, default to 50)
     - parameter offset: (query) index of first tokens to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include tokens from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getNftHoldings(principal: String, assetIdentifiers: [String]? = nil, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonFungibleTokenHoldingsList?, _ error: Error?) -> Void)) -> RequestTask {
        return getNftHoldingsWithRequestBuilder(principal: principal, assetIdentifiers: assetIdentifiers, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Non-Fungible Token holdings
     - GET /extended/v1/tokens/nft/holdings
     - Retrieves the list of Non-Fungible Tokens owned by the given principal (STX address or Smart Contract ID). Results can be filtered by one or more asset identifiers and can include metadata about the transaction that made the principal own each token.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
     - parameter principal: (query) token owner&#39;s STX address or Smart Contract ID 
     - parameter assetIdentifiers: (query) identifiers of the token asset classes to filter for (optional)
     - parameter limit: (query) max number of tokens to fetch (optional, default to 50)
     - parameter offset: (query) index of first tokens to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include tokens from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - returns: RequestBuilder<NonFungibleTokenHoldingsList> 
     */
    open class func getNftHoldingsWithRequestBuilder(principal: String, assetIdentifiers: [String]? = nil, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil) -> RequestBuilder<NonFungibleTokenHoldingsList> {
        let localVariablePath = "/extended/v1/tokens/nft/holdings"
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "principal": principal.encodeToJSON(),
            "asset_identifiers": assetIdentifiers?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "unanchored": unanchored?.encodeToJSON(),
            "tx_metadata": txMetadata?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NonFungibleTokenHoldingsList>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Non fungible tokens metadata list
     
     - parameter limit: (query) max number of tokens to fetch (optional)
     - parameter offset: (query) index of first tokens to fetch (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getNftMetadataList(limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonFungibleTokensMetadataList?, _ error: Error?) -> Void)) -> RequestTask {
        return getNftMetadataListWithRequestBuilder(limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Non fungible tokens metadata list
     - GET /extended/v1/tokens/nft/metadata
     - Retrieves a list of non fungible tokens with their metadata. More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts).
     - parameter limit: (query) max number of tokens to fetch (optional)
     - parameter offset: (query) index of first tokens to fetch (optional)
     - returns: RequestBuilder<NonFungibleTokensMetadataList> 
     */
    open class func getNftMetadataListWithRequestBuilder(limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<NonFungibleTokensMetadataList> {
        let localVariablePath = "/extended/v1/tokens/nft/metadata"
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NonFungibleTokensMetadataList>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Non-Fungible Token mints
     
     - parameter assetIdentifier: (query) token asset class identifier 
     - parameter limit: (query) max number of events to fetch (optional, default to 50)
     - parameter offset: (query) index of first event to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include events from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getNftMints(assetIdentifier: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: NonFungibleTokenMintList?, _ error: Error?) -> Void)) -> RequestTask {
        return getNftMintsWithRequestBuilder(assetIdentifier: assetIdentifier, limit: limit, offset: offset, unanchored: unanchored, txMetadata: txMetadata).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Non-Fungible Token mints
     - GET /extended/v1/tokens/nft/mints
     - Retrieves all mint events for a Non-Fungible Token asset class. Useful to determine which NFTs of a particular collection have been claimed.  More information on Non-Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#non-fungible-tokens-nfts). 
     - parameter assetIdentifier: (query) token asset class identifier 
     - parameter limit: (query) max number of events to fetch (optional, default to 50)
     - parameter offset: (query) index of first event to fetch (optional, default to 0)
     - parameter unanchored: (query) whether or not to include events from unconfirmed transactions (optional, default to false)
     - parameter txMetadata: (query) whether or not to include the complete transaction metadata instead of just &#x60;tx_id&#x60;. Enabling this option can affect performance and response times. (optional, default to false)
     - returns: RequestBuilder<NonFungibleTokenMintList> 
     */
    open class func getNftMintsWithRequestBuilder(assetIdentifier: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, txMetadata: Bool? = nil) -> RequestBuilder<NonFungibleTokenMintList> {
        let localVariablePath = "/extended/v1/tokens/nft/mints"
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "asset_identifier": assetIdentifier.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "unanchored": unanchored?.encodeToJSON(),
            "tx_metadata": txMetadata?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NonFungibleTokenMintList>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
