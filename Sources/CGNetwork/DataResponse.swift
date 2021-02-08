//
//  DataResponse.swift
//  NetworkFramework
//
//  Created by gyun on 2021/02/05.
//

import Foundation
import Alamofire

public struct DataResponse {
    public let response: HTTPURLResponse?
    public let request: URLRequest?
    public let data: Data?
    public let error: Error?
    
    init(response: HTTPURLResponse?, request: URLRequest?, data: Data?, error: Error?) {
        self.response = response
        self.request = request
        self.data = data
        self.error = error
    }
}
