//
// SmartContractsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SmartContractsAPI {

    /**
     Call read-only function
     
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter functionName: (path) Function name 
     - parameter readOnlyFunctionArgs: (body)  
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callReadOnlyFunction(contractAddress: String, contractName: String, functionName: String, readOnlyFunctionArgs: ReadOnlyFunctionArgs, tip: String? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ReadOnlyFunctionSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return callReadOnlyFunctionWithRequestBuilder(contractAddress: contractAddress, contractName: contractName, functionName: functionName, readOnlyFunctionArgs: readOnlyFunctionArgs, tip: tip).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Call read-only function
     - POST /v2/contracts/call-read/{contract_address}/{contract_name}/{function_name}
     - Call a read-only public function on a given smart contract.  The smart contract and function are specified using the URL path. The arguments and the simulated tx-sender are supplied via the POST body in the following JSON format: 
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter functionName: (path) Function name 
     - parameter readOnlyFunctionArgs: (body)  
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - returns: RequestBuilder<ReadOnlyFunctionSuccessResponse> 
     */
    open class func callReadOnlyFunctionWithRequestBuilder(contractAddress: String, contractName: String, functionName: String, readOnlyFunctionArgs: ReadOnlyFunctionArgs, tip: String? = nil) -> RequestBuilder<ReadOnlyFunctionSuccessResponse> {
        var localVariablePath = "/v2/contracts/call-read/{contract_address}/{contract_name}/{function_name}"
        let contractAddressPreEscape = "\(APIHelper.mapValueToPathItem(contractAddress))"
        let contractAddressPostEscape = contractAddressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_address}", with: contractAddressPostEscape, options: .literal, range: nil)
        let contractNamePreEscape = "\(APIHelper.mapValueToPathItem(contractName))"
        let contractNamePostEscape = contractNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_name}", with: contractNamePostEscape, options: .literal, range: nil)
        let functionNamePreEscape = "\(APIHelper.mapValueToPathItem(functionName))"
        let functionNamePostEscape = functionNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{function_name}", with: functionNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: readOnlyFunctionArgs)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tip": tip?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReadOnlyFunctionSuccessResponse>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get contract info
     
     - parameter contractId: (path) Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; 
     - parameter unanchored: (query) Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractById(contractId: String, unanchored: Bool? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractByIdWithRequestBuilder(contractId: contractId, unanchored: unanchored).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contract info
     - GET /extended/v1/contract/{contract_id}
     - Retrieves details of a contract with a given `contract_id`
     - parameter contractId: (path) Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; 
     - parameter unanchored: (query) Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional, default to false)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getContractByIdWithRequestBuilder(contractId: String, unanchored: Bool? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/extended/v1/contract/{contract_id}"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_id}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "unanchored": unanchored?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get specific data-map inside a contract
     
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter mapName: (path) Map name 
     - parameter key: (body) Hex string serialization of the lookup key (which should be a Clarity value) 
     - parameter proof: (query) Returns object without the proof field when set to 0 (optional)
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractDataMapEntry(contractAddress: String, contractName: String, mapName: String, key: String, proof: Int? = nil, tip: String? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: MapEntryResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractDataMapEntryWithRequestBuilder(contractAddress: contractAddress, contractName: contractName, mapName: mapName, key: key, proof: proof, tip: tip).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get specific data-map inside a contract
     - POST /v2/map_entry/{contract_address}/{contract_name}/{map_name}
     - Attempt to fetch data from a contract data map. The contract is identified with Stacks Address `contract_address` and Contract Name `contract_address` in the URL path. The map is identified with [Map Name].  The key to lookup in the map is supplied via the POST body. This should be supplied as the hex string serialization of the key (which should be a Clarity value). Note, this is a JSON string atom.  In the response, `data` is the hex serialization of the map response. Note that map responses are Clarity option types, for non-existent values, this is a serialized none, and for all other responses, it is a serialized (some ...) object. 
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter mapName: (path) Map name 
     - parameter key: (body) Hex string serialization of the lookup key (which should be a Clarity value) 
     - parameter proof: (query) Returns object without the proof field when set to 0 (optional)
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - returns: RequestBuilder<MapEntryResponse> 
     */
    open class func getContractDataMapEntryWithRequestBuilder(contractAddress: String, contractName: String, mapName: String, key: String, proof: Int? = nil, tip: String? = nil) -> RequestBuilder<MapEntryResponse> {
        var localVariablePath = "/v2/map_entry/{contract_address}/{contract_name}/{map_name}"
        let contractAddressPreEscape = "\(APIHelper.mapValueToPathItem(contractAddress))"
        let contractAddressPostEscape = contractAddressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_address}", with: contractAddressPostEscape, options: .literal, range: nil)
        let contractNamePreEscape = "\(APIHelper.mapValueToPathItem(contractName))"
        let contractNamePostEscape = contractNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_name}", with: contractNamePostEscape, options: .literal, range: nil)
        let mapNamePreEscape = "\(APIHelper.mapValueToPathItem(mapName))"
        let mapNamePostEscape = mapNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{map_name}", with: mapNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: key)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "proof": proof?.encodeToJSON(),
            "tip": tip?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MapEntryResponse>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get contract events
     
     - parameter contractId: (path) Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; 
     - parameter limit: (query) max number of contract events to fetch (optional)
     - parameter offset: (query) index of first contract event to fetch (optional)
     - parameter unanchored: (query) Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractEventsById(contractId: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyOfobjectobjectobjectobjectobject?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractEventsByIdWithRequestBuilder(contractId: contractId, limit: limit, offset: offset, unanchored: unanchored).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contract events
     - GET /extended/v1/contract/{contract_id}/events
     - Retrieves a list of events that have been triggered by a given `contract_id`
     - parameter contractId: (path) Contract identifier formatted as &#x60;&lt;contract_address&gt;.&lt;contract_name&gt;&#x60; 
     - parameter limit: (query) max number of contract events to fetch (optional)
     - parameter offset: (query) index of first contract event to fetch (optional)
     - parameter unanchored: (query) Include transaction data from unanchored (i.e. unconfirmed) microblocks (optional, default to false)
     - returns: RequestBuilder<AnyOfobjectobjectobjectobjectobject> 
     */
    open class func getContractEventsByIdWithRequestBuilder(contractId: String, limit: Int? = nil, offset: Int? = nil, unanchored: Bool? = nil) -> RequestBuilder<AnyOfobjectobjectobjectobjectobject> {
        var localVariablePath = "/extended/v1/contract/{contract_id}/events"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_id}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "unanchored": unanchored?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyOfobjectobjectobjectobjectobject>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get contract interface
     
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractInterface(contractAddress: String, contractName: String, tip: String? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContractInterfaceResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractInterfaceWithRequestBuilder(contractAddress: contractAddress, contractName: contractName, tip: tip).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contract interface
     - GET /v2/contracts/interface/{contract_address}/{contract_name}
     - Retrieves a contract interface with a given `contract_address` and `contract name`
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - returns: RequestBuilder<ContractInterfaceResponse> 
     */
    open class func getContractInterfaceWithRequestBuilder(contractAddress: String, contractName: String, tip: String? = nil) -> RequestBuilder<ContractInterfaceResponse> {
        var localVariablePath = "/v2/contracts/interface/{contract_address}/{contract_name}"
        let contractAddressPreEscape = "\(APIHelper.mapValueToPathItem(contractAddress))"
        let contractAddressPostEscape = contractAddressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_address}", with: contractAddressPostEscape, options: .literal, range: nil)
        let contractNamePreEscape = "\(APIHelper.mapValueToPathItem(contractName))"
        let contractNamePostEscape = contractNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_name}", with: contractNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tip": tip?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContractInterfaceResponse>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get contract source
     
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter proof: (query) Returns object without the proof field if set to 0 (optional)
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractSource(contractAddress: String, contractName: String, proof: Int? = nil, tip: String? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContractSourceResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractSourceWithRequestBuilder(contractAddress: contractAddress, contractName: contractName, proof: proof, tip: tip).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contract source
     - GET /v2/contracts/source/{contract_address}/{contract_name}
     - Retrieves the Clarity source code of a given contract, along with the block height it was published in, and the MARF proof for the data
     - parameter contractAddress: (path) Stacks address 
     - parameter contractName: (path) Contract name 
     - parameter proof: (query) Returns object without the proof field if set to 0 (optional)
     - parameter tip: (query) The Stacks chain tip to query from (optional)
     - returns: RequestBuilder<ContractSourceResponse> 
     */
    open class func getContractSourceWithRequestBuilder(contractAddress: String, contractName: String, proof: Int? = nil, tip: String? = nil) -> RequestBuilder<ContractSourceResponse> {
        var localVariablePath = "/v2/contracts/source/{contract_address}/{contract_name}"
        let contractAddressPreEscape = "\(APIHelper.mapValueToPathItem(contractAddress))"
        let contractAddressPostEscape = contractAddressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_address}", with: contractAddressPostEscape, options: .literal, range: nil)
        let contractNamePreEscape = "\(APIHelper.mapValueToPathItem(contractName))"
        let contractNamePostEscape = contractNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contract_name}", with: contractNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "proof": proof?.encodeToJSON(),
            "tip": tip?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContractSourceResponse>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get contracts by trait
     
     - parameter traitAbi: (query) JSON abi of the trait. 
     - parameter limit: (query) max number of contracts fetch (optional)
     - parameter offset: (query) index of first contract event to fetch (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContractsByTrait(traitAbi: String, limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = Stacks Blockchain API ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContractListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractsByTraitWithRequestBuilder(traitAbi: traitAbi, limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contracts by trait
     - GET /extended/v1/contract/by_trait
     - Retrieves a list of contracts based on the following traits listed in JSON format -  functions, variables, maps, fungible tokens and non-fungible tokens
     - parameter traitAbi: (query) JSON abi of the trait. 
     - parameter limit: (query) max number of contracts fetch (optional)
     - parameter offset: (query) index of first contract event to fetch (optional)
     - returns: RequestBuilder<ContractListResponse> 
     */
    open class func getContractsByTraitWithRequestBuilder(traitAbi: String, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<ContractListResponse> {
        let localVariablePath = "/extended/v1/contract/by_trait"
        let localVariableURLString = Stacks Blockchain API ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "trait_abi": traitAbi.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContractListResponse>.Type = Stacks Blockchain API ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
