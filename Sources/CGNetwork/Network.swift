//
//  Network.swift
//  NetworkFramework
//
//  Created by gyun on 2021/02/05.
//

import Foundation
import Alamofire

public final class Network {
    
    private let host: String
    private let path: String
    private let httpMethod: String
    
    public init(host: String, path: String, httpMethod: String) {
        self.host = host
        self.path = path
        self.httpMethod = httpMethod
    }
    
    public func request(parameters: Dictionary<String, Any>,
                        completion: @escaping ((DataResponse) -> Void)) {
        let absolutePath = host + path
        let request = AF.request(absolutePath,
                   method: HTTPMethod(rawValue: httpMethod),
                   parameters: parameters,
                   encoding: URLEncoding.httpBody)
            
        request.validate().responseJSON { response in
                    completion(DataResponse(response: response.response, request: response.request, data: response.data, error: response.error))
                   }
    }
}
