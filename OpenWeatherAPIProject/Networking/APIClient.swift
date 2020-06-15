//
//  APIClient.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation




struct APIClient {
    private let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        session = URLSession(configuration: configuration)
    }
    
    
    public func send(request: Request) {
        let urlRequest = request.builder.toURLRequest()
        print(urlRequest)
        let task = session.dataTask(with: urlRequest) { data, response, error in
            let result: Result<Data, Error>
            if let error = error {
                result = .failure(error)
            } else {
                result = .success(data ?? Data())
            }
            DispatchQueue.main.async {
                request.completion(result)
            }
        }
        task.resume()
    }
    
    
}
