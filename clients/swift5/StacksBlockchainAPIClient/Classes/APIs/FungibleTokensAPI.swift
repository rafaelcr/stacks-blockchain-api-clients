//
// FungibleTokensAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FungibleTokensAPI {

    /**
     Fungible tokens metadata for contract id
     
     - parameter contractId: (path) token&#39;s contract id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractFtMetadata(contractId: String, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: FungibleTokenMetadata?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractFtMetadataWithRequestBuilder(contractId: contractId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fungible tokens metadata for contract id
     - GET /extended/v1/tokens/{contractId}/ft/metadata
     - Retrieves the metadata for fungible tokens for a given contract id
     - parameter contractId: (path) token&#39;s contract id 
     - returns: RequestBuilder<FungibleTokenMetadata> 
     */
    open class func getContractFtMetadataWithRequestBuilder(contractId: String) -> RequestBuilder<FungibleTokenMetadata> {
        var localVariablePath = "/extended/v1/tokens/{contractId}/ft/metadata"
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

        let localVariableRequestBuilder: RequestBuilder<FungibleTokenMetadata>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fungible tokens metadata list
     
     - parameter limit: (query) max number of tokens to fetch (optional)
     - parameter offset: (query) index of first tokens to fetch (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFtMetadataList(limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: FungibleTokensMetadataList?, _ error: Error?) -> Void)) -> RequestTask {
        return getFtMetadataListWithRequestBuilder(limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fungible tokens metadata list
     - GET /extended/v1/tokens/ft/metadata
     - Retrieves list of fungible tokens with their metadata. More information on Fungible Tokens on the Stacks blockchain can be found [here](https://docs.stacks.co/write-smart-contracts/tokens#fungible-tokens).
     - parameter limit: (query) max number of tokens to fetch (optional)
     - parameter offset: (query) index of first tokens to fetch (optional)
     - returns: RequestBuilder<FungibleTokensMetadataList> 
     */
    open class func getFtMetadataListWithRequestBuilder(limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<FungibleTokensMetadataList> {
        let localVariablePath = "/extended/v1/tokens/ft/metadata"
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

        let localVariableRequestBuilder: RequestBuilder<FungibleTokensMetadataList>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}